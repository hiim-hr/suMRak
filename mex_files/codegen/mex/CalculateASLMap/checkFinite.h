//
// Student License - for use by students to meet course requirements and
// perform academic research at degree granting institutions only.  Not
// for government, commercial, or other organizational use.
//
// checkFinite.h
//
// Code generation for function 'checkFinite'
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
namespace optim {
namespace coder {
namespace validate {
boolean_T b_checkFinite(const emlrtStack &sp,
                        const ::coder::array<real_T, 2U> &x, int32_T m);

boolean_T checkFinite(const emlrtStack &sp, const ::coder::array<real_T, 2U> &x,
                      int32_T m);

} // namespace validate
} // namespace coder
} // namespace optim
} // namespace coder

// End of code generation (checkFinite.h)
