//
// Student License - for use by students to meet course requirements and
// perform academic research at degree granting institutions only.  Not
// for government, commercial, or other organizational use.
//
// RefreshImageBC.h
//
// Code generation for function 'RefreshImageBC'
//

#pragma once

// Include files
#include "rtwtypes.h"
#include "coder_array.h"
#include "emlrt.h"
#include "mex.h"
#include <cmath>
#include <cstdio>
#include <cstdlib>
#include <cstring>

// Function Declarations
void RefreshImageBC(const emlrtStack *sp,
                    coder::array<real_T, 2U> &CurrentSlice,
                    real_T ContrastSliderValue, real_T BrightnessSliderValue);

// End of code generation (RefreshImageBC.h)
