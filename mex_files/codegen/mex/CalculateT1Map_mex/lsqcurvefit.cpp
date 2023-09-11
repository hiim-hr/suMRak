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
#include "CalculateT1Map.h"
#include "CalculateT1Map_mex_data.h"
#include "CalculateT1Map_mex_internal_types11.h"
#include "all.h"
#include "anonymous_function1.h"
#include "checkBounds.h"
#include "driver.h"
#include "exp.h"
#include "rt_nonfinite.h"
#include "coder_array.h"
#include "mwmathutil.h"
#include <emmintrin.h>

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
void b_lsqcurvefit(const emlrtStack &sp,
                   const ::coder::array<real_T, 2U> &xdata,
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
  st.prev = &sp;
  st.tls = sp.tls;
  emlrtHeapReferenceStackEnterFcnR2012b((emlrtConstCTX)&sp);
  r.set_size(&x_emlrtRTEI, &sp, 1, xdata.size(1));
  loop_ub = xdata.size(1);
  for (int32_T i{0}; i < loop_ub; i++) {
    resnorm = xdata[i];
    r[i] = ((!muDoubleScalarIsInf(resnorm)) && (!muDoubleScalarIsNaN(resnorm)));
  }
  st.site = &r_emlrtRSI;
  if (!all(st, r)) {
    emlrtErrorWithMessageIdR2018a(
        &sp, &c_emlrtRTEI, "optimlib_codegen:common:InfNaNComplexDetected",
        "optimlib_codegen:common:InfNaNComplexDetected", 3, 4, 5, "xdata");
  }
  r.set_size(&x_emlrtRTEI, &sp, 1, ydata.size(1));
  loop_ub = ydata.size(1);
  for (int32_T i{0}; i < loop_ub; i++) {
    resnorm = ydata[i];
    r[i] = ((!muDoubleScalarIsInf(resnorm)) && (!muDoubleScalarIsNaN(resnorm)));
  }
  st.site = &r_emlrtRSI;
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
  st.site = &r_emlrtRSI;
  optim::coder::validate::checkBounds(st, ub);
  b_this.workspace.xdata.set_size(&y_emlrtRTEI, &sp, 1, xdata.size(1));
  loop_ub = xdata.size(1);
  for (int32_T i{0}; i < loop_ub; i++) {
    b_this.workspace.xdata[i] = xdata[i];
  }
  b_this.workspace.ydata.set_size(&y_emlrtRTEI, &sp, 1, ydata.size(1));
  loop_ub = ydata.size(1);
  for (int32_T i{0}; i < loop_ub; i++) {
    b_this.workspace.ydata[i] = ydata[i];
  }
  st.site = &r_emlrtRSI;
  optim::coder::levenbergMarquardt::b_driver(
      st, b_this, ub, x, residual, expl_temp, b_expl_temp, c_expl_temp,
      jacobian, resnorm, d_expl_temp, e_expl_temp, f_expl_temp, g_expl_temp);
  emlrtHeapReferenceStackLeaveFcnR2012b((emlrtConstCTX)&sp);
}

void b_lsqcurvefit_anonFcn1(const emlrtStack &sp,
                            const ::coder::array<real_T, 2U> &xdata,
                            const ::coder::array<real_T, 2U> &ydata,
                            const real_T x[2],
                            ::coder::array<real_T, 2U> &varargout_1)
{
  emlrtStack b_st;
  emlrtStack st;
  st.prev = &sp;
  st.tls = sp.tls;
  st.site = &fc_emlrtRSI;
  b_st.prev = &st;
  b_st.tls = st.tls;
  b_st.site = &gc_emlrtRSI;
  CalculateT1Map_anonFcn2(b_st, x, xdata, varargout_1);
  if ((varargout_1.size(1) != ydata.size(1)) &&
      ((varargout_1.size(1) != 1) && (ydata.size(1) != 1))) {
    emlrtDimSizeImpxCheckR2021b(varargout_1.size(1), ydata.size(1), &d_emlrtECI,
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
    b_st.site = &gc_emlrtRSI;
    minus(b_st, varargout_1, ydata);
  }
}

void c_lsqcurvefit_anonFcn1(const emlrtStack &sp,
                            const ::coder::array<real_T, 2U> &xdata,
                            const ::coder::array<real_T, 2U> &ydata,
                            const real_T x[2],
                            ::coder::array<real_T, 2U> &varargout_1)
{
  __m128d r;
  emlrtStack b_st;
  emlrtStack c_st;
  emlrtStack st;
  real_T b_x;
  int32_T loop_ub;
  int32_T scalarLB;
  int32_T vectorUB;
  st.prev = &sp;
  st.tls = sp.tls;
  st.site = &fc_emlrtRSI;
  b_st.prev = &st;
  b_st.tls = st.tls;
  c_st.prev = &b_st;
  c_st.tls = b_st.tls;
  b_st.site = &gc_emlrtRSI;
  varargout_1.set_size(&mb_emlrtRTEI, &b_st, 1, xdata.size(1));
  b_x = x[1];
  loop_ub = xdata.size(1);
  scalarLB = (xdata.size(1) / 2) << 1;
  vectorUB = scalarLB - 2;
  for (int32_T i{0}; i <= vectorUB; i += 2) {
    _mm_storeu_pd(
        &varargout_1[i],
        _mm_div_pd(_mm_mul_pd(_mm_loadu_pd(&xdata[i]), _mm_set1_pd(-1.0)),
                   _mm_set1_pd(b_x)));
  }
  for (int32_T i{scalarLB}; i < loop_ub; i++) {
    varargout_1[i] = -xdata[i] / b_x;
  }
  c_st.site = &pc_emlrtRSI;
  b_exp(c_st, varargout_1);
  varargout_1.set_size(&c_emlrtRTEI, &b_st, 1, varargout_1.size(1));
  b_x = x[0];
  loop_ub = varargout_1.size(1) - 1;
  scalarLB = (varargout_1.size(1) / 2) << 1;
  vectorUB = scalarLB - 2;
  for (int32_T i{0}; i <= vectorUB; i += 2) {
    r = _mm_loadu_pd(&varargout_1[i]);
    _mm_storeu_pd(&varargout_1[i], _mm_mul_pd(_mm_set1_pd(b_x), r));
  }
  for (int32_T i{scalarLB}; i <= loop_ub; i++) {
    varargout_1[i] = b_x * varargout_1[i];
  }
  if ((varargout_1.size(1) != ydata.size(1)) &&
      ((varargout_1.size(1) != 1) && (ydata.size(1) != 1))) {
    emlrtDimSizeImpxCheckR2021b(varargout_1.size(1), ydata.size(1), &d_emlrtECI,
                                &st);
  }
  if (varargout_1.size(1) == ydata.size(1)) {
    loop_ub = varargout_1.size(1) - 1;
    varargout_1.set_size(&c_emlrtRTEI, &st, 1, varargout_1.size(1));
    scalarLB = (varargout_1.size(1) / 2) << 1;
    vectorUB = scalarLB - 2;
    for (int32_T i{0}; i <= vectorUB; i += 2) {
      r = _mm_loadu_pd(&varargout_1[i]);
      _mm_storeu_pd(&varargout_1[i], _mm_sub_pd(r, _mm_loadu_pd(&ydata[i])));
    }
    for (int32_T i{scalarLB}; i <= loop_ub; i++) {
      varargout_1[i] = varargout_1[i] - ydata[i];
    }
  } else {
    b_st.site = &gc_emlrtRSI;
    minus(b_st, varargout_1, ydata);
  }
}

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
  st.prev = &sp;
  st.tls = sp.tls;
  emlrtHeapReferenceStackEnterFcnR2012b((emlrtConstCTX)&sp);
  r.set_size(&x_emlrtRTEI, &sp, 1, xdata.size(1));
  loop_ub = xdata.size(1);
  for (int32_T i{0}; i < loop_ub; i++) {
    resnorm = xdata[i];
    r[i] = ((!muDoubleScalarIsInf(resnorm)) && (!muDoubleScalarIsNaN(resnorm)));
  }
  st.site = &r_emlrtRSI;
  if (!all(st, r)) {
    emlrtErrorWithMessageIdR2018a(
        &sp, &c_emlrtRTEI, "optimlib_codegen:common:InfNaNComplexDetected",
        "optimlib_codegen:common:InfNaNComplexDetected", 3, 4, 5, "xdata");
  }
  r.set_size(&x_emlrtRTEI, &sp, 1, ydata.size(1));
  loop_ub = ydata.size(1);
  for (int32_T i{0}; i < loop_ub; i++) {
    resnorm = ydata[i];
    r[i] = ((!muDoubleScalarIsInf(resnorm)) && (!muDoubleScalarIsNaN(resnorm)));
  }
  st.site = &r_emlrtRSI;
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
  st.site = &r_emlrtRSI;
  optim::coder::validate::checkBounds(st, ub);
  b_this.workspace.xdata.set_size(&y_emlrtRTEI, &sp, 1, xdata.size(1));
  loop_ub = xdata.size(1);
  for (int32_T i{0}; i < loop_ub; i++) {
    b_this.workspace.xdata[i] = xdata[i];
  }
  b_this.workspace.ydata.set_size(&y_emlrtRTEI, &sp, 1, ydata.size(1));
  loop_ub = ydata.size(1);
  for (int32_T i{0}; i < loop_ub; i++) {
    b_this.workspace.ydata[i] = ydata[i];
  }
  st.site = &r_emlrtRSI;
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
  __m128d r;
  emlrtStack b_st;
  emlrtStack c_st;
  emlrtStack st;
  real_T b_x;
  int32_T loop_ub;
  int32_T scalarLB;
  int32_T vectorUB;
  st.prev = &sp;
  st.tls = sp.tls;
  st.site = &r_emlrtRSI;
  b_st.prev = &st;
  b_st.tls = st.tls;
  c_st.prev = &b_st;
  c_st.tls = b_st.tls;
  b_st.site = &r_emlrtRSI;
  varargout_1.set_size(&ab_emlrtRTEI, &b_st, 1, xdata.size(1));
  b_x = x[1];
  loop_ub = xdata.size(1);
  scalarLB = (xdata.size(1) / 2) << 1;
  vectorUB = scalarLB - 2;
  for (int32_T i{0}; i <= vectorUB; i += 2) {
    _mm_storeu_pd(
        &varargout_1[i],
        _mm_div_pd(_mm_mul_pd(_mm_loadu_pd(&xdata[i]), _mm_set1_pd(-1.0)),
                   _mm_set1_pd(b_x)));
  }
  for (int32_T i{scalarLB}; i < loop_ub; i++) {
    varargout_1[i] = -xdata[i] / b_x;
  }
  c_st.site = &cb_emlrtRSI;
  b_exp(c_st, varargout_1);
  varargout_1.set_size(&bb_emlrtRTEI, &b_st, 1, varargout_1.size(1));
  loop_ub = varargout_1.size(1) - 1;
  scalarLB = (varargout_1.size(1) / 2) << 1;
  vectorUB = scalarLB - 2;
  for (int32_T i{0}; i <= vectorUB; i += 2) {
    r = _mm_loadu_pd(&varargout_1[i]);
    _mm_storeu_pd(&varargout_1[i], _mm_sub_pd(_mm_set1_pd(1.0), r));
  }
  for (int32_T i{scalarLB}; i <= loop_ub; i++) {
    varargout_1[i] = 1.0 - varargout_1[i];
  }
  varargout_1.set_size(&c_emlrtRTEI, &b_st, 1, varargout_1.size(1));
  b_x = x[0];
  loop_ub = varargout_1.size(1) - 1;
  scalarLB = (varargout_1.size(1) / 2) << 1;
  vectorUB = scalarLB - 2;
  for (int32_T i{0}; i <= vectorUB; i += 2) {
    r = _mm_loadu_pd(&varargout_1[i]);
    _mm_storeu_pd(&varargout_1[i], _mm_mul_pd(_mm_set1_pd(b_x), r));
  }
  for (int32_T i{scalarLB}; i <= loop_ub; i++) {
    varargout_1[i] = b_x * varargout_1[i];
  }
  if ((varargout_1.size(1) != ydata.size(1)) &&
      ((varargout_1.size(1) != 1) && (ydata.size(1) != 1))) {
    emlrtDimSizeImpxCheckR2021b(varargout_1.size(1), ydata.size(1), &c_emlrtECI,
                                &st);
  }
  if (varargout_1.size(1) == ydata.size(1)) {
    loop_ub = varargout_1.size(1) - 1;
    varargout_1.set_size(&c_emlrtRTEI, &st, 1, varargout_1.size(1));
    scalarLB = (varargout_1.size(1) / 2) << 1;
    vectorUB = scalarLB - 2;
    for (int32_T i{0}; i <= vectorUB; i += 2) {
      r = _mm_loadu_pd(&varargout_1[i]);
      _mm_storeu_pd(&varargout_1[i], _mm_sub_pd(r, _mm_loadu_pd(&ydata[i])));
    }
    for (int32_T i{scalarLB}; i <= loop_ub; i++) {
      varargout_1[i] = varargout_1[i] - ydata[i];
    }
  } else {
    b_st.site = &r_emlrtRSI;
    minus(b_st, varargout_1, ydata);
  }
}

} // namespace coder

// End of code generation (lsqcurvefit.cpp)
