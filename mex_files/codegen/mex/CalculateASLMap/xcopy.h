//
// Student License - for use by students to meet course requirements and
// perform academic research at degree granting institutions only.  Not
// for government, commercial, or other organizational use.
//
// xcopy.h
//
// Code generation for function 'xcopy'
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
namespace coder {
namespace internal {
namespace blas {
void xcopy(const emlrtStack &sp, int32_T n, ::coder::array<real_T, 2U> &y);

void xcopy(int32_T n, const ::coder::array<real_T, 2U> &x,
           ::coder::array<real_T, 1U> &y);

} // namespace blas
} // namespace internal
} // namespace coder

// End of code generation (xcopy.h)
