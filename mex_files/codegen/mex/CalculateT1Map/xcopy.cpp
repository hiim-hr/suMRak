//
// Student License - for use by students to meet course requirements and
// perform academic research at degree granting institutions only.  Not
// for government, commercial, or other organizational use.
//
// xcopy.cpp
//
// Code generation for function 'xcopy'
//

// Include files
#include "xcopy.h"
#include "CalculateT1Map_data.h"
#include "eml_int_forloop_overflow_check.h"
#include "rt_nonfinite.h"
#include "coder_array.h"

// Variable Definitions
static emlrtRSInfo rb_emlrtRSI{
    69,      // lineNo
    "xcopy", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+internal\\+"
    "refblas\\xcopy.m" // pathName
};

static emlrtRSInfo tb_emlrtRSI{
    38,      // lineNo
    "xcopy", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+internal\\+blas\\xcopy."
    "m" // pathName
};

// Function Definitions
namespace coder {
namespace internal {
namespace blas {
void xcopy(const emlrtStack &sp, int32_T n, ::coder::array<real_T, 2U> &y,
           int32_T iy0)
{
  emlrtStack b_st;
  emlrtStack c_st;
  emlrtStack st;
  st.prev = &sp;
  st.tls = sp.tls;
  st.site = &tb_emlrtRSI;
  b_st.prev = &st;
  b_st.tls = st.tls;
  c_st.prev = &b_st;
  c_st.tls = b_st.tls;
  b_st.site = &rb_emlrtRSI;
  if (n > 2147483646) {
    c_st.site = &p_emlrtRSI;
    check_forloop_overflow_error(c_st);
  }
  for (int32_T k{0}; k < n; k++) {
    y[(iy0 + k) - 1] = 0.0;
  }
}

void xcopy(const emlrtStack &sp, int32_T n, ::coder::array<real_T, 2U> &y)
{
  emlrtStack b_st;
  emlrtStack c_st;
  emlrtStack st;
  st.prev = &sp;
  st.tls = sp.tls;
  st.site = &tb_emlrtRSI;
  b_st.prev = &st;
  b_st.tls = st.tls;
  c_st.prev = &b_st;
  c_st.tls = b_st.tls;
  b_st.site = &rb_emlrtRSI;
  if (n > 2147483646) {
    c_st.site = &p_emlrtRSI;
    check_forloop_overflow_error(c_st);
  }
  for (int32_T k{0}; k < n; k++) {
    y[k] = rtNaN;
  }
}

} // namespace blas
} // namespace internal
} // namespace coder

// End of code generation (xcopy.cpp)
