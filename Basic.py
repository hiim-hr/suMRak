import SimpleITK as sitk

elastixImageFilter = sitk.ElastixImageFilter();
elastixImageFilter.SetFixedImage(sitk.GetImageFromArray(fixIm));
elastixImageFilter.SetMovingImage(sitk.GetImageFromArray(movIm));

parameterMapVector = sitk.VectorOfParameterMap();
parameterMapVector.append(sitk.GetDefaultParameterMap("affine"));
parameterMapVector.append(sitk.GetDefaultParameterMap("bspline"));
elastixImageFilter.SetParameterMap(parameterMapVector);

elastixImageFilter.Execute();

resultArray = sitk.GetArrayFromImage(elastixImageFilter.GetResultImage());
