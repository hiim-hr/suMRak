//
// Student License - for use by students to meet course requirements and
// perform academic research at degree granting institutions only.  Not
// for government, commercial, or other organizational use.
//
// CalculateASLMap.h
//
// Code generation for function 'CalculateASLMap'
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
void CalculateASLMap(const emlrtStack *sp,
                     coder::array<real_T, 2U> &T1rawSS_reordered_reshaped,
                     coder::array<real_T, 2U> &T1rawNS_reordered_reshaped,
                     const coder::array<real_T, 2U> &tvalues,
                     const coder::array<real_T, 2U> &ivalues, real_T T1blood,
                     coder::array<real_T, 1U> &perf);

void CalculateASLMap_anonFcn1(const emlrtStack &sp, const real_T coeffs[2],
                              const coder::array<real_T, 2U> &ivalues,
                              coder::array<real_T, 2U> &varargout_1);

// End of code generation (CalculateASLMap.h)
