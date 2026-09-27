# Changelog

All notable changes to suMRak are documented in this file.

## [1.1.0] – 2026-09-27

### Highlights
- **True 3D registration on SimpleITK.** All registration (Standard, Reference Atlas and Time-Series Alignment) now runs on SimpleITK's `ImageRegistrationMethod`, and SimpleElastix is no longer needed. Volumes are registered in 3D, and each registration or alignment is a single call to Python. This replaces the old MATLAB `for` loops, which registered each slice separately in 2D and paid the MATLAB–Python hand-off cost on every slice, and for time series on every slice of every frame (see *Registration backend* below).
- **Control over through-plane rotation.** Each rigid, similarity and affine stage has a *Lock out-of-plane rotation* option. With it on, the transform can only rotate within the slice plane (about the Z axis), and any rotation or shear that would tilt the slices through Z is frozen. With it off, the registration is free to rotate in full 3D.
- **Multi-stage transform pipelines.** Registrations are built from a configurable chain of stages (Translation → Euler3D → Similarity3D → Affine → BSpline), each carrying its own metric, optimizer and sampling settings.
- **Label-masked reference atlases.** Atlases are skull-stripped with their label volumes on import, and the importer handles the current MICe and Waxholm distributions.
- **Much lighter image rendering.** The image views in the main app and in both Registration Viewer windows no longer rebuild their images on every slider, spinner or contrast change. They update the pixel data of the existing image objects instead. This considerably reduces the cost of scrolling through slices and of dragging the contrast and brightness sliders, which redraw on every drag step (see *Rendering performance* below).
- **Moved to MATLAB R2024a.** The apps were refactored and re-saved in R2024a, and standalone builds now target MATLAB Runtime R2024a.

### Added
- **Registration tab**
  - Transforms list box with a context menu to add, edit, duplicate, move up/down, remove and reset stages.
  - New helper app **TransformParameterEditor** for editing the metric, optimizer, sampling and type-specific parameters of each stage.
  - *Lock out-of-plane rotation* option for Euler3D, Similarity3D and Affine stages, applied through SimpleITK optimizer weights. It is on by default for Standard registration, where the scans are usually acquired in the same plane. It is off for the default Reference Atlas stages, which need full 3D orientation.
  - BSpline stages that would fold the image are detected (minimum Jacobian check) and skipped with a warning instead of producing a torn result.
  - Stage presets that depend on registration type: Standard, Reference Atlas, and Time-Series Alignment (Euler3D).
  - **Output interpolator** selector (Nearest Neighbor / Linear / BSpline). It defaults to Nearest Neighbor for standard registration, which preserves quantitative values, and to Linear for atlas registration.
  - **Reference/fixed view** drop-down (Multiply / Side-by-side / Falsecolor difference). It replaces the old right-click menu on the reference image.
  - BSpline stages use a dilated foreground mask.
- **RegistrationViewer (Basic & Parameter)**
  - Slice-range selection with *Set Starting Slices*, *Set End Slices* and *Reset Selection*. It replaces the old free-form "Add slice" instruction list.
  - The start slice must not be after the end slice. The viewer checks this before it sends the range back to suMRak.
- **Reference Atlas Importer**
  - Label volumes are downloaded or bundled and applied as brain masks. The nerves and inner ear are excluded for Waxholm.
  - MICe atlas now uses the MINC (`.mnc`) distribution and is read with the bundled `mominc` reader.
  - The Waxholm label file (`resources/WHS_0.6.1_Labels.nii.gz`) is bundled with the app, which avoids a NITRC download that the built-in unzip could not extract (Deflate64). The path works both in MATLAB and in deployed builds (`isdeployed`/`ctfroot`).
  - Download size estimates are more accurate, and the progress dialog shows every step.
- Version string lives in one place (`app.Version`) and is written into `info.txt` of new study folders.

### Changed

#### Registration backend: SimpleElastix → SimpleITK

**Before (v1.0.0):**
- Registration ran in a MATLAB `for` loop over the slice instructions. Each slice was registered on its own as a 2D image with a fixed Elastix affine + B-spline parameter map.
- Every iteration called `pyrun`, which meant a new Python execution each time. It converted the slice to NumPy and back, created a new `ElastixImageFilter`, and wrote and deleted a `TransformParameters.0.txt` file on disk. The result was then appended to a growing array.
- Because each slice was solved independently, neighbouring slices could end up with different transforms. Nothing tied them together through the volume.
- Time-Series Alignment registered every slice of every frame separately with a 2D Elastix rigid map, calling `pyrun` inside a `parfor` loop. A 10-slice, 60-frame series meant about 600 separate Python calls.

**Now:**
- The fixed and moving slabs (start to end slice) go to Python once as 3D arrays. All stages run and the result is resampled in that one call, with no intermediate files.
- Each image carries its physical voxel spacing: in-plane voxel size, and slice thickness plus slice gap along Z. The registration therefore works in millimetres, and the smoothing at each multi-resolution level is also specified in physical units.
- Stages are chained as a composite transform, so the final image is resampled only once.
- The output interpolator can be chosen: Nearest Neighbor, Linear or BSpline.
- Warnings from individual stages come back to MATLAB alongside the result.
- **Time-Series Alignment** uses the same SimpleITK pipeline and the Time-Series preset: a single Euler3D stage with out-of-plane rotation locked. Each frame is registered in 3D onto the reference frame. The whole series goes to Python once, and the registration script is compiled once and run per frame inside Python. Output uses linear interpolation, and no parallel pool is needed.

#### Rendering performance (UIAxes updates)
- Image display in the main app goes through two shared helpers. `showImage` updates the `CData` of the image already on the UIAxes and only creates a new image with `imshow` when there is no valid image yet or the image size has changed. `showOverlay` keeps one overlay image per axes and updates only its `AlphaData`.
- This covers the Preview, pre-map and post-map (parameter map) views, the Registration view, and the Segmenter view, including its ROI overlays.
- The Segmenter helper views (up/down) cache their image and slice-marker rectangle handles and update `CData` and `Position` in place.
- Both Registration Viewer windows (Basic and Parameter) work the same way through a `showSlice` helper. Each axes keeps its image object and only its `CData` changes, while the display range is still set per slice as before. Zoom now stays in place while scrolling through slices, and *Reset View* restores the full image.
- `imshow` calls in the main app dropped from 34 to 9. The remaining calls are the first-draw fallbacks inside the helpers and the Results-table previews, which only redraw when a table cell is clicked.

#### MATLAB R2024a migration
- The code base was refactored from R2023a to R2024a, and all eight apps are saved in R2024a.
- Standalone builds target MATLAB Runtime R2024a.
- The runtime check for the 3D Viewer's missing `volume` files uses `matlabroot` instead of a hard-coded `MATLAB Runtime\R2023a` install path, so it keeps working across Runtime versions.

#### Other changes
- `RegisterButtonPushed` sets the fixed and moving image dimensions itself, so it no longer depends on UI callbacks that do not fire during atlas registration.
- Registration-instruction parsing uses a reusable `parseSegment` helper instead of character-index string slicing.
- Parameter look-ups (TE, TR, voxel sizes, units, rotation matrix) go through one helper, `LookupExperimentParams`, across Save, DSC and export paths.
- Export-button enable state is refreshed through one helper, `refreshExportButtonState`.
- Masking in volumetry uses implicit expansion instead of nested loops.
- The ROI Volume Segmenter alpha map is built from its six control points with `interp1` instead of a 256-value literal. The values are identical.
- DSC settings use English field names (`minorSemiAxis`, `majorSemiAxis`, `recirculationCorrection`, `peakTTPClusterThreshold`). Option sets with the old Italian names still load, and the values are mirrored to the field names the DSC toolbox reads.

### Fixed
- Atlas registration showed all-black slices because `PreRegistrationFixedImage` was taken from the untrimmed atlas. It now uses the trimmed fixed image.
- The Multiply and Falsecolor overlays were wrong when int16/uint8 atlas data met double registered data. Both images are now normalized per image (with an `eps` guard) before they are combined.
- A copy-paste error in `RefreshImageSegmenterHelperDown`.
- ITK "no overlap" registration failures show an explanatory alert instead of crashing.
- 5D Time-Series Alignment left some frames unaligned. Every frame that shared either the reference dim4 index or the reference dim5 index was skipped. Now only the reference frame itself is skipped.
- NITRC download IDs and the T1w Waxholm file name.
- Progress dialogs always close, including on errors, through an `onCleanup` guard.
- A study-folder `info.txt` handle that stayed open if an error occurred.
- `info.txt` in new study folders wrote the "Subject Age" line twice.
- The ROI Volume Segmenter opened the wrong volume for 5D data, because the dim4 index was also used for dim5.
- OverlayPicker and ROIVolumeSegmenter check their inputs when they open. OverlayPicker reports real volume and ROI load errors instead of silently swallowing them, and falls back to the raw experiment only when the experiment has not been saved.

### Repository
- New `.gitignore` excludes codegen/build output, `derived/`, `backup/`, local project state, editor files, and the separately licensed Bruker `pvmatlab` package.
- `mex_files/codegen/` is removed from version control. It is build output and is regenerated by MATLAB Coder.
- Added the `mominc` MINC reader, which the MICe atlas import needs.

### Known issues
- The Segmenter "up" helper view can go blank after zooming the main axes. The "down" view is unaffected.
- The Segmenter axes can resize incorrectly after the perspective view is toggled.

[1.1.0]: https://github.com/hiim-hr/suMRak/compare/v1.0.0...v1.1.0
