//
// Student License - for use by students to meet course requirements and
// perform academic research at degree granting institutions only.  Not
// for government, commercial, or other organizational use.
//
// lsqcurvefit.h
//
// Code generation for function 'lsqcurvefit'
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
namespace coder {
class anonymous_function;

}

// Function Declarations
void binary_expand_op(const emlrtStack &sp, coder::array<real_T, 2U> &in1,
                      const coder::array<real_T, 2U> &in2,
                      const coder::anonymous_function &in3);

namespace coder {
void lsqcurvefit(const emlrtStack &sp, const ::coder::array<real_T, 2U> &xdata,
                 const ::coder::array<real_T, 2U> &ydata, const real_T ub[2],
                 real_T x[2]);

void lsqcurvefit_anonFcn1(const emlrtStack &sp,
                          const ::coder::array<real_T, 2U> &xdata,
                          const ::coder::array<real_T, 2U> &ydata,
                          const real_T x[2],
                          ::coder::array<real_T, 2U> &varargout_1);

} // namespace coder

// End of code generation (lsqcurvefit.h)
