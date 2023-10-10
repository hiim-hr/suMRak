# suMRak

<b> A Simple Utility MRi Analysis Kit </b>

------------------------------------------------------------------------

![Static Badge](https://img.shields.io/badge/MATLAB-R2023a-orange) ![Static Badge](https://img.shields.io/badge/python-3.9-blue)

------------------------------------------------------------------------

suMRak is a MATLAB application created with the aim of simplifying pre-clinical brain :brain: MRi data processing. It is a program intended for research purposes and should not be used in a clinical setting.

------------------------------------------------------------------------

## Installation

suMRak is available as a MATLAB App Designer binary _.mlapp_ file and a fully exported MATLAB code _.m_ file which can both be executed directly from the MATLAB Command Window.

It is also available as a single _.exe_ installer file which installs suMRak (and the required MATLAB Runtime R2023a) as a standalone application.
> [!IMPORTANT]
> **suMRak is currently compatible with _64-bit Windows 7_ and later**.

The following are **prerequisites** for installing suMRak on a end-user machine:
- [Microsoft Visual C++ Redistributable 2015-2022](https://learn.microsoft.com/en-us/cpp/windows/latest-supported-vc-redist?view=msvc-170)
- [Python 3.9.13](https://www.python.org/downloads/release/python-3913/) - During installation, select the option to add Python to PATH

Optional - required for image registration: 
- suMRak uses the [SimpleElastix](https://simpleelastix.github.io/) python library for image registration, which can be compiled and installed by following the instructions in the [SimpleElastix Documentation](https://simpleelastix.readthedocs.io/GettingStarted.html#compiling-on-windows)

------------------------------------------------------------------------

 ## suMRak Components

suMRak contains many different components, all integrated to work and communicate with each other - thereby reducing the amount of different tools required for getting the information you need from your MRi data to only one.
> [!NOTE]
> suMRak comes with its own carefully written [MANUAL], which explains all of the components in detail and provides recommended workflow steps.

 ------------------------------------------------------------------------

 ### Segmenter

The segmenter tab allows you to easily segment the brain :brain:, hemispheres and regions of interest. Use traditional polygonal marking or speed things up using integrated 2D/3D K-means 
clustering - it's your choice.

### Volumetry Results

Obtain the volumes and slice areas of segmented data with just one click! Simply select one of the saved experiments and all information will be automatically calculated and
displayed accordingly. Segmented regions of interest can also be corrected for edema using one of multiple available correction methods.

### Registration
 
MATLAB's integrated python engine allows users to register saved experiments using the [SimpleElastix](https://simpleelastix.github.io/) python library. suMRak uses this capability to allow the following methods of image registration:
1. Standard moving/fixed non-rigid image registration, described [here](https://simpleelastix.readthedocs.io/NonRigidRegistration.html)
2. Non-rigid registration of data to reference histological/MRi atlases
3. Time-series data alignment

suMRak currently supports the following reference atlases, which are downloaded, unpacked and imported using the suMRak Reference Atlas Importer helper app:
- [MICe Neuroanatomy Atlas of the C57Bl/6j Mouse](http://www.mouseimaging.ca/technologies/mouse_atlas/C57Bl6j_mouse_atlas.html)
- [T1 and T2 weighted Waxholm Space Atlas of the C57Bl/6j Mouse](https://www.nitrc.org/frs/?group_id=1088)
- [Allen Brain Atlas: Adult Mouse Nissl Grayscale Atlas](http://help.brain-map.org/display/mousebrain/API)

### Parameter Map Calculation

suMRak can use your MRi data to calculate specific parameter maps:
- Dynamic susceptibility contrast CBV, CBF, and MTT - using the [Dynamic Susceptibility Contrast MRi toolbox](https://github.com/marcocastellaro/dsc-MRi-toolbox)
- FAIR pASL
- T1
- T2

### Data 3D Viewer

MRi data can be easily viewed in 3D using a multitude of rendering options, including classic volume rendering, minimum/maximum intensity projections and more... Interactively change colormaps, alphamaps, and overlay segmented regions or raw data.

 ------------------------------------------------------------------------
 
<p align="center">
  <img src="https://github.com/Sternak-Marko/suMRak/blob/main/resources/splash.png" />
</p>

<p align="center">
  <img src="https://github.com/Sternak-Marko/suMRak/blob/main/resources/unizg.png" />
  <img height = "179px" width = "375px" src="https://github.com/Sternak-Marko/suMRak/blob/main/resources/hrzz.png" />
</p>

<p align="center">
  <img height = "114px" width = "500px" src="https://github.com/Sternak-Marko/suMRak/blob/main/resources/glowlab.png" />
</p>
