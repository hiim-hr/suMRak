//
// Student License - for use by students to meet course requirements and
// perform academic research at degree granting institutions only.  Not
// for government, commercial, or other organizational use.
//
// jacobianFiniteDifference.h
//
// Code generation for function 'jacobianFiniteDifference'
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
namespace levenbergMarquardt {
boolean_T b_jacobianFiniteDifference(const emlrtStack &sp,
                                     ::coder::array<real_T, 2U> &augJacobian,
                                     const ::coder::array<real_T, 2U> &fCurrent,
                                     int32_T &funcCount, const real_T x[2],
                                     const real_T ub[2],
                                     const c_struct_T &FiniteDifferences);

int32_T jacobianFiniteDifference(const emlrtStack &sp,
                                 ::coder::array<real_T, 2U> &augJacobian,
                                 const ::coder::array<real_T, 2U> &fCurrent,
                                 const real_T x[2], const real_T ub[2],
                                 c_struct_T &FiniteDifferences,
                                 boolean_T &evalOK);

} // namespace levenbergMarquardt
} // namespace coder
} // namespace optim
} // namespace coder

// End of code generation (jacobianFiniteDifference.h)
