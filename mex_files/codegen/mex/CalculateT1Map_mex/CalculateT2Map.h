//
// Student License - for use by students to meet course requirements and
// perform academic research at degree granting institutions only.  Not
// for government, commercial, or other organizational use.
//
// CalculateT2Map.h
//
// Code generation for function 'CalculateT2Map'
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
void CalculateT2Map(const emlrtStack *sp,
                    coder::array<real_T, 2U> &T2raw_reordered_reshaped,
                    const coder::array<real_T, 2U> &tvalues,
                    coder::array<real_T, 2U> &coeffs);

// End of code generation (CalculateT2Map.h)
