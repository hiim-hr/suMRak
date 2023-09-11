//
// Student License - for use by students to meet course requirements and
// perform academic research at degree granting institutions only.  Not
// for government, commercial, or other organizational use.
//
// linearLeastSquares.h
//
// Code generation for function 'linearLeastSquares'
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
namespace levenbergMarquardt {
void linearLeastSquares(const emlrtStack &sp, ::coder::array<real_T, 2U> &lhs,
                        ::coder::array<real_T, 1U> &rhs, real_T dx[2],
                        int32_T m);

}
} // namespace coder
} // namespace optim
} // namespace coder

// End of code generation (linearLeastSquares.h)
