//
// Student License - for use by students to meet course requirements and
// perform academic research at degree granting institutions only.  Not
// for government, commercial, or other organizational use.
//
// checkStoppingCriteria.h
//
// Code generation for function 'checkStoppingCriteria'
//

#pragma once

// Include files
#include "rtwtypes.h"
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
namespace levenbergMarquardt {
int32_T b_checkStoppingCriteria(const real_T gradf[2], real_T relFactor,
                                real_T funDiff, const real_T x[2],
                                const real_T dx[2], int32_T funcCount,
                                boolean_T stepSuccessful, int32_T &iter,
                                real_T projSteepestDescentInfNorm,
                                boolean_T hasFiniteBounds);

int32_T checkStoppingCriteria(const real_T gradf[2], real_T relFactor,
                              int32_T funcCount,
                              real_T projSteepestDescentInfNorm,
                              boolean_T hasFiniteBounds);

} // namespace levenbergMarquardt
} // namespace coder
} // namespace optim
} // namespace coder

// End of code generation (checkStoppingCriteria.h)
