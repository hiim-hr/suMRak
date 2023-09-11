//
// Student License - for use by students to meet course requirements and
// perform academic research at degree granting institutions only.  Not
// for government, commercial, or other organizational use.
//
// driver.h
//
// Code generation for function 'driver'
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
namespace coder {
namespace optim {
namespace coder {
namespace levenbergMarquardt {
real_T b_driver(const emlrtStack &sp, const anonymous_function &fun,
                const real_T ub[2], real_T x[2],
                ::coder::array<real_T, 2U> &fCurrent,
                char_T output_algorithm[19], real_T lambda_lower[2],
                real_T lambda_upper[2], ::coder::array<real_T, 2U> &jacobian,
                real_T &exitflag, real_T &output_iterations,
                real_T &output_funcCount, real_T &output_stepsize,
                real_T &output_firstorderopt);

void b_driver_anonFcn1(const emlrtStack &sp, const anonymous_function &fun,
                       const real_T x[2],
                       ::coder::array<real_T, 1U> &varargout_2);

real_T c_driver(const emlrtStack &sp, const anonymous_function &fun,
                const real_T ub[2], real_T x[2],
                ::coder::array<real_T, 2U> &fCurrent,
                char_T output_algorithm[19], real_T lambda_lower[2],
                real_T lambda_upper[2], ::coder::array<real_T, 2U> &jacobian,
                real_T &exitflag, real_T &output_iterations,
                real_T &output_funcCount, real_T &output_stepsize,
                real_T &output_firstorderopt);

void c_driver_anonFcn1(const emlrtStack &sp, const anonymous_function &fun,
                       const real_T x[2],
                       ::coder::array<real_T, 1U> &varargout_2);

real_T driver(const emlrtStack &sp, const anonymous_function &fun,
              const real_T ub[2], real_T x[2],
              ::coder::array<real_T, 2U> &fCurrent, char_T output_algorithm[19],
              real_T lambda_lower[2], real_T lambda_upper[2],
              ::coder::array<real_T, 2U> &jacobian, real_T &exitflag,
              real_T &output_iterations, real_T &output_funcCount,
              real_T &output_stepsize, real_T &output_firstorderopt);

void driver_anonFcn1(const emlrtStack &sp, const anonymous_function &fun,
                     const real_T x[2],
                     ::coder::array<real_T, 1U> &varargout_2);

} // namespace levenbergMarquardt
} // namespace coder
} // namespace optim
} // namespace coder

// End of code generation (driver.h)
