//
// Student License - for use by students to meet course requirements and
// perform academic research at degree granting institutions only.  Not
// for government, commercial, or other organizational use.
//
// lsqcurvefit.cpp
//
// Code generation for function 'lsqcurvefit'
//

// Include files
#include "lsqcurvefit.h"
#include "CalculateT2Map.h"
#include "CalculateT2Map_data.h"
#include "CalculateT2Map_internal_types11.h"
#include "all.h"
#include "anonymous_function1.h"
#include "driver.h"
#include "rt_nonfinite.h"
#include "coder_array.h"
#include "mwmathutil.h"
#include <emmintrin.h>

// Variable Definitions
static emlrtRTEInfo d_emlrtRTEI{
    1,             // lineNo
    1,             // colNo
    "checkBounds", // fName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\shared\\optimlib\\+optim\\+coder\\+"
    "validate\\checkBounds.p" // pName
};

static emlrtRTEInfo s_emlrtRTEI{
    14,         // lineNo
    5,          // colNo
    "isfinite", // fName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\lib\\matlab\\elmat\\isfinite.m" // pName
};

static emlrtRTEInfo t_emlrtRTEI{
    35,                // lineNo
    13,                // colNo
    "function_handle", // fName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+internal\\function_"
    "handle.m" // pName
};

// Function Declarations
static void minus(const emlrtStack &sp, coder::array<real_T, 2U> &in1,
                  const coder::array<real_T, 2U> &in2);

// Function Definitions
static void minus(const emlrtStack &sp, coder::array<real_T, 2U> &in1,
                  const coder::array<real_T, 2U> &in2)
{
  coder::array<real_T, 2U> b_in1;
  int32_T loop_ub;
  int32_T stride_0_1;
  int32_T stride_1_1;
  emlrtHeapReferenceStackEnterFcnR2012b((emlrtConstCTX)&sp);
  if (in2.size(1) == 1) {
    loop_ub = in1.size(1);
  } else {
    loop_ub = in2.size(1);
  }
  b_in1.set_size(&c_emlrtRTEI, &sp, 1, loop_ub);
  stride_0_1 = (in1.size(1) != 1);
  stride_1_1 = (in2.size(1) != 1);
  for (int32_T i{0}; i < loop_ub; i++) {
    b_in1[i] = in1[i * stride_0_1] - in2[i * stride_1_1];
  }
  in1.set_size(&c_emlrtRTEI, &sp, 1, b_in1.size(1));
  loop_ub = b_in1.size(1);
  for (int32_T i{0}; i < loop_ub; i++) {
    in1[i] = b_in1[i];
  }
  emlrtHeapReferenceStackLeaveFcnR2012b((emlrtConstCTX)&sp);
}

void binary_expand_op(const emlrtStack &sp, coder::array<real_T, 2U> &in1,
                      const coder::array<real_T, 2U> &in2,
                      const coder::anonymous_function &in3)
{
  int32_T i;
  int32_T loop_ub;
  int32_T stride_0_1;
  int32_T stride_1_1;
  if (in3.workspace.ydata.size(1) == 1) {
    i = in2.size(1);
  } else {
    i = in3.workspace.ydata.size(1);
  }
  in1.set_size(&c_emlrtRTEI, &sp, 1, i);
  stride_0_1 = (in2.size(1) != 1);
  stride_1_1 = (in3.workspace.ydata.size(1) != 1);
  if (in3.workspace.ydata.size(1) == 1) {
    loop_ub = in2.size(1);
  } else {
    loop_ub = in3.workspace.ydata.size(1);
  }
  for (i = 0; i < loop_ub; i++) {
    in1[i] = in2[i * stride_0_1] - in3.workspace.ydata[i * stride_1_1];
  }
}

namespace coder {
void lsqcurvefit(const emlrtStack &sp, const ::coder::array<real_T, 2U> &xdata,
                 const ::coder::array<real_T, 2U> &ydata, const real_T ub[2],
                 real_T x[2])
{
  anonymous_function b_this;
  array<real_T, 2U> jacobian;
  array<real_T, 2U> residual;
  array<boolean_T, 2U> r;
  emlrtStack st;
  real_T b_expl_temp[2];
  real_T c_expl_temp[2];
  real_T d_expl_temp;
  real_T e_expl_temp;
  real_T f_expl_temp;
  real_T g_expl_temp;
  real_T resnorm;
  int32_T loop_ub;
  char_T expl_temp[19];
  boolean_T varargin_1[2];
  boolean_T exitg1;
  boolean_T guard1;
  boolean_T y;
  st.prev = &sp;
  st.tls = sp.tls;
  emlrtHeapReferenceStackEnterFcnR2012b((emlrtConstCTX)&sp);
  r.set_size(&s_emlrtRTEI, &sp, 1, xdata.size(1));
  loop_ub = xdata.size(1);
  for (int32_T i{0}; i < loop_ub; i++) {
    resnorm = xdata[i];
    r[i] = ((!muDoubleScalarIsInf(resnorm)) && (!muDoubleScalarIsNaN(resnorm)));
  }
  st.site = &o_emlrtRSI;
  if (!all(st, r)) {
    emlrtErrorWithMessageIdR2018a(
        &sp, &c_emlrtRTEI, "optimlib_codegen:common:InfNaNComplexDetected",
        "optimlib_codegen:common:InfNaNComplexDetected", 3, 4, 5, "xdata");
  }
  r.set_size(&s_emlrtRTEI, &sp, 1, ydata.size(1));
  loop_ub = ydata.size(1);
  for (int32_T i{0}; i < loop_ub; i++) {
    resnorm = ydata[i];
    r[i] = ((!muDoubleScalarIsInf(resnorm)) && (!muDoubleScalarIsNaN(resnorm)));
  }
  st.site = &o_emlrtRSI;
  if (!all(st, r)) {
    emlrtErrorWithMessageIdR2018a(
        &sp, &c_emlrtRTEI, "optimlib_codegen:common:InfNaNComplexDetected",
        "optimlib_codegen:common:InfNaNComplexDetected", 3, 4, 5, "ydata");
  }
  if (xdata.size(1) != ydata.size(1)) {
    emlrtErrorWithMessageIdR2018a(
        &sp, &c_emlrtRTEI, "optimlib_codegen:lsqcurvefit:DataSizeMismatch",
        "optimlib_codegen:lsqcurvefit:DataSizeMismatch", 0);
  }
  st.site = &o_emlrtRSI;
  varargin_1[0] = (ub[0] <= rtMinusInf);
  varargin_1[1] = (ub[1] <= rtMinusInf);
  y = false;
  loop_ub = 0;
  exitg1 = false;
  while ((!exitg1) && (loop_ub < 2)) {
    if (varargin_1[loop_ub]) {
      y = true;
      exitg1 = true;
    } else {
      loop_ub++;
    }
  }
  guard1 = false;
  if (y) {
    guard1 = true;
  } else {
    varargin_1[0] = muDoubleScalarIsNaN(ub[0]);
    varargin_1[1] = muDoubleScalarIsNaN(ub[1]);
    y = false;
    loop_ub = 0;
    exitg1 = false;
    while ((!exitg1) && (loop_ub < 2)) {
      if (varargin_1[loop_ub]) {
        y = true;
        exitg1 = true;
      } else {
        loop_ub++;
      }
    }
    if (y) {
      guard1 = true;
    }
  }
  if (guard1) {
    emlrtErrorWithMessageIdR2018a(
        &st, &d_emlrtRTEI, "optimlib_codegen:common:InfNaNComplexDetectedUB",
        "optimlib_codegen:common:InfNaNComplexDetectedUB", 0);
  }
  b_this.workspace.xdata.set_size(&t_emlrtRTEI, &sp, 1, xdata.size(1));
  loop_ub = xdata.size(1);
  for (int32_T i{0}; i < loop_ub; i++) {
    b_this.workspace.xdata[i] = xdata[i];
  }
  b_this.workspace.ydata.set_size(&t_emlrtRTEI, &sp, 1, ydata.size(1));
  loop_ub = ydata.size(1);
  for (int32_T i{0}; i < loop_ub; i++) {
    b_this.workspace.ydata[i] = ydata[i];
  }
  st.site = &o_emlrtRSI;
  optim::coder::levenbergMarquardt::driver(
      st, b_this, ub, x, residual, expl_temp, b_expl_temp, c_expl_temp,
      jacobian, resnorm, d_expl_temp, e_expl_temp, f_expl_temp, g_expl_temp);
  emlrtHeapReferenceStackLeaveFcnR2012b((emlrtConstCTX)&sp);
}

void lsqcurvefit_anonFcn1(const emlrtStack &sp,
                          const ::coder::array<real_T, 2U> &xdata,
                          const ::coder::array<real_T, 2U> &ydata,
                          const real_T x[2],
                          ::coder::array<real_T, 2U> &varargout_1)
{
  emlrtStack b_st;
  emlrtStack st;
  st.prev = &sp;
  st.tls = sp.tls;
  st.site = &o_emlrtRSI;
  b_st.prev = &st;
  b_st.tls = st.tls;
  b_st.site = &o_emlrtRSI;
  CalculateT2Map_anonFcn1(b_st, x, xdata, varargout_1);
  if ((varargout_1.size(1) != ydata.size(1)) &&
      ((varargout_1.size(1) != 1) && (ydata.size(1) != 1))) {
    emlrtDimSizeImpxCheckR2021b(varargout_1.size(1), ydata.size(1), &b_emlrtECI,
                                &st);
  }
  if (varargout_1.size(1) == ydata.size(1)) {
    int32_T loop_ub;
    int32_T scalarLB;
    int32_T vectorUB;
    loop_ub = varargout_1.size(1) - 1;
    varargout_1.set_size(&c_emlrtRTEI, &st, 1, varargout_1.size(1));
    scalarLB = (varargout_1.size(1) / 2) << 1;
    vectorUB = scalarLB - 2;
    for (int32_T i{0}; i <= vectorUB; i += 2) {
      __m128d r;
      r = _mm_loadu_pd(&varargout_1[i]);
      _mm_storeu_pd(&varargout_1[i], _mm_sub_pd(r, _mm_loadu_pd(&ydata[i])));
    }
    for (int32_T i{scalarLB}; i <= loop_ub; i++) {
      varargout_1[i] = varargout_1[i] - ydata[i];
    }
  } else {
    b_st.site = &o_emlrtRSI;
    minus(b_st, varargout_1, ydata);
  }
}

} // namespace coder

// End of code generation (lsqcurvefit.cpp)
