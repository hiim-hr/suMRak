//
// Student License - for use by students to meet course requirements and
// perform academic research at degree granting institutions only.  Not
// for government, commercial, or other organizational use.
//
// exp.cpp
//
// Code generation for function 'exp'
//

// Include files
#include "exp.h"
#include "CalculateT1Map_mex_data.h"
#include "eml_int_forloop_overflow_check.h"
#include "rt_nonfinite.h"
#include "coder_array.h"
#include "mwmathutil.h"

// Function Definitions
namespace coder {
void b_exp(const emlrtStack &sp, ::coder::array<real_T, 2U> &x)
{
  emlrtStack b_st;
  emlrtStack c_st;
  emlrtStack st;
  int32_T nx;
  st.prev = &sp;
  st.tls = sp.tls;
  st.site = &ab_emlrtRSI;
  b_st.prev = &st;
  b_st.tls = st.tls;
  c_st.prev = &b_st;
  c_st.tls = b_st.tls;
  nx = x.size(1);
  b_st.site = &bb_emlrtRSI;
  if (x.size(1) > 2147483646) {
    c_st.site = &p_emlrtRSI;
    check_forloop_overflow_error(c_st);
  }
  for (int32_T k{0}; k < nx; k++) {
    x[k] = muDoubleScalarExp(x[k]);
  }
}

} // namespace coder

// End of code generation (exp.cpp)
