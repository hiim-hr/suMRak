//
// Student License - for use by students to meet course requirements and
// perform academic research at degree granting institutions only.  Not
// for government, commercial, or other organizational use.
//
// CalculateT1Map.h
//
// Code generation for function 'CalculateT1Map'
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
void CalculateT1Map(const emlrtStack *sp,
                    coder::array<real_T, 2U> &T1raw_reordered_reshaped,
                    const coder::array<real_T, 2U> &tvalues,
                    const coder::array<real_T, 2U> &ivalues,
                    coder::array<real_T, 2U> &coeffs);

void CalculateT1Map_anonFcn2(const emlrtStack &sp, const real_T coeffs[2],
                             const coder::array<real_T, 2U> &ivalues,
                             coder::array<real_T, 2U> &varargout_1);

// End of code generation (CalculateT1Map.h)
