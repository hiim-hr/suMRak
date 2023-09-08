# BrukKit

<b> A simpler way of processing your MRI data </b>

------------------------------------------------------------------------

![Static Badge](https://img.shields.io/badge/MATLAB-R2021b-orange) ![Static Badge](https://img.shields.io/badge/python-3.9-blue)

------------------------------------------------------------------------

BrukKit is a MATLAB application created with the sole purpose of simplifying pre-clinical MRI data processing.

------------------------------------------------------------------------

![Alt](https://repobeats.axiom.co/api/embed/0aede456283b07c3549addaf43a23a760de55048.svg "Repobeats analytics image")

------------------------------------------------------------------------

 ## BrukKit Components

BrukKit contains many different components, all integrated to work and communicate with each other - thereby reducing the amount of different tools required for getting the information you need from your MRI data to only one.
> [!IMPORTANT]
> BrukKit comes with its own carefully written [MANUAL], which explains all of the components in detail, and provides workflow steps recommended for success.

 ------------------------------------------------------------------------

 ### Segmenter

The segmenter tab allows you to easily segment the brain, hemispheres and regions of interest. Use traditional polygonal marking or speed things up using integrated 2D/3D K-means 
clustering - it's your choice.

### Volumetry

Obtain the volumes and slice areas of segmented data in just one click! Simply select one of the saved experiments and all information will be automatically calculated and
displayed accordingly. Segmented regions of interest can also be corrected for edema using one of multiple available correction methods.

### Registration
 
MATLAB's integrated python engine allows BrukKit to register saved experiments using the [SimpleElastix](https://simpleelastix.github.io/) python library.

### Parameter Maps

