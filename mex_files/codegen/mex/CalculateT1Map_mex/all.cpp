//
// Student License - for use by students to meet course requirements and
// perform academic research at degree granting institutions only.  Not
// for government, commercial, or other organizational use.
//
// all.cpp
//
// Code generation for function 'all'
//

// Include files
#include "all.h"
#include "CalculateT1Map_mex_data.h"
#include "eml_int_forloop_overflow_check.h"
#include "rt_nonfinite.h"
#include "coder_array.h"

// Variable Definitions
static emlrtRSInfo
    s_emlrtRSI{
        16,    // lineNo
        "all", // fcnName
        "C:\\Program "
        "Files\\MATLAB\\R2023a\\toolbox\\eml\\lib\\matlab\\ops\\all.m" // pathName
    };

static emlrtRSInfo
    t_emlrtRSI{
        57,         // lineNo
        "allOrAny", // fcnName
        "C:\\Program "
        "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+internal\\allOrAny."
        "m" // pathName
    };

static emlrtRSInfo u_emlrtRSI{
    106,                   // lineNo
    "applyToMultipleDims", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+"
    "internal\\applyToMultipleDims.m" // pathName
};

static emlrtRSInfo
    w_emlrtRSI{
        56, // lineNo
        "@(x)coder.internal.allOrAny(op,x,coder.internal.indexInt(1))", // fcnName
        "C:\\Program "
        "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+internal\\allOrAny."
        "m" // pathName
    };

static emlrtRSInfo
    x_emlrtRSI{
        143,        // lineNo
        "allOrAny", // fcnName
        "C:\\Program "
        "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+internal\\allOrAny."
        "m" // pathName
    };

// Function Definitions
namespace coder {
boolean_T all(const emlrtStack &sp, const ::coder::array<boolean_T, 2U> &x)
{
  emlrtStack b_st;
  emlrtStack c_st;
  emlrtStack d_st;
  emlrtStack e_st;
  emlrtStack f_st;
  emlrtStack g_st;
  emlrtStack st;
  int32_T ix;
  boolean_T exitg1;
  boolean_T y;
  st.prev = &sp;
  st.tls = sp.tls;
  st.site = &s_emlrtRSI;
  b_st.prev = &st;
  b_st.tls = st.tls;
  c_st.prev = &b_st;
  c_st.tls = b_st.tls;
  d_st.prev = &c_st;
  d_st.tls = c_st.tls;
  e_st.prev = &d_st;
  e_st.tls = d_st.tls;
  f_st.prev = &e_st;
  f_st.tls = e_st.tls;
  g_st.prev = &f_st;
  g_st.tls = f_st.tls;
  b_st.site = &t_emlrtRSI;
  c_st.site = &u_emlrtRSI;
  d_st.site = &v_emlrtRSI;
  e_st.site = &w_emlrtRSI;
  y = true;
  f_st.site = &x_emlrtRSI;
  if (x.size(1) > 2147483646) {
    g_st.site = &p_emlrtRSI;
    check_forloop_overflow_error(g_st);
  }
  ix = 1;
  exitg1 = false;
  while ((!exitg1) && (ix <= x.size(1))) {
    if (!x[ix - 1]) {
      y = false;
      exitg1 = true;
    } else {
      ix++;
    }
  }
  return y;
}

} // namespace coder

// End of code generation (all.cpp)
