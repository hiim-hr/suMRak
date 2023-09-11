//
// Student License - for use by students to meet course requirements and
// perform academic research at degree granting institutions only.  Not
// for government, commercial, or other organizational use.
//
// computeFiniteDifferences.h
//
// Code generation for function 'computeFiniteDifferences'
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

// Type Declarations
struct c_struct_T;

// Function Declarations
namespace coder {
namespace optim {
namespace coder {
namespace utils {
namespace FiniteDifferences {
boolean_T b_computeFiniteDifferences(
    const emlrtStack &sp, c_struct_T &obj,
    const ::coder::array<real_T, 2U> &cEqCurrent, real_T xk[2],
    ::coder::array<real_T, 2U> &JacCeqTrans, const real_T ub[2]);

boolean_T computeFiniteDifferences(const emlrtStack &sp, c_struct_T &obj,
                                   const ::coder::array<real_T, 2U> &cEqCurrent,
                                   real_T xk[2],
                                   ::coder::array<real_T, 2U> &JacCeqTrans,
                                   const real_T ub[2]);

} // namespace FiniteDifferences
} // namespace utils
} // namespace coder
} // namespace optim
} // namespace coder

// End of code generation (computeFiniteDifferences.h)
