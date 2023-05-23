import SimpleITK as sitk

elastixImageFilter = sitk.ElastixImageFilter();
elastixImageFilter.SetFixedImage(sitk.GetImageFromArray(fixIm));
elastixImageFilter.SetMovingImage(sitk.GetImageFromArray(paramIm));

parameterMapVector = sitk.VectorOfParameterMap();
parameterMapVector.append(sitk.GetDefaultParameterMap("affine"));
parameterMapVector.append(sitk.GetDefaultParameterMap("bspline"));
elastixImageFilter.SetParameterMap(parameterMapVector);

elastixImageFilter.Execute();

transformParameterMap = elastixImageFilter.GetTransformParameterMap();
transformix = sitk.TransformixImageFilter();
transformix.SetTransformParameterMap(transformParameterMap);
transformix.SetMovingImage(sitk.GetImageFromArray(movIm));

transformix.Execute();

resultArray = sitk.GetArrayFromImage(transformix.GetResultImage());
