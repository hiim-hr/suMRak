//
// Student License - for use by students to meet course requirements and
// perform academic research at degree granting institutions only.  Not
// for government, commercial, or other organizational use.
//
// checkFinite.cpp
//
// Code generation for function 'checkFinite'
//

// Include files
#include "checkFinite.h"
#include "CalculateT1Map_data.h"
#include "eml_int_forloop_overflow_check.h"
#include "rt_nonfinite.h"
#include "coder_array.h"
#include "mwmathutil.h"

// Variable Definitions
static emlrtRSInfo eb_emlrtRSI{
    1,             // lineNo
    "checkFinite", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\shared\\optimlib\\+optim\\+coder\\+"
    "validate\\checkFinite.p" // pathName
};

static emlrtRTEInfo j_emlrtRTEI{
    1,             // lineNo
    1,             // colNo
    "checkFinite", // fName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\shared\\optimlib\\+optim\\+coder\\+"
    "validate\\checkFinite.p" // pName
};

static emlrtBCInfo o_emlrtBCI{
    -1,            // iFirst
    -1,            // iLast
    1,             // lineNo
    1,             // colNo
    "",            // aName
    "checkFinite", // fName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\shared\\optimlib\\+optim\\+coder\\+"
    "validate\\checkFinite.p", // pName
    0                          // checkKind
};

// Function Definitions
namespace coder {
namespace optim {
namespace coder {
namespace validate {
boolean_T b_checkFinite(const emlrtStack &sp,
                        const ::coder::array<real_T, 2U> &x, int32_T m)
{
  emlrtStack b_st;
  emlrtStack st;
  int32_T b;
  int32_T i;
  boolean_T evalOK;
  st.prev = &sp;
  st.tls = sp.tls;
  b_st.prev = &st;
  b_st.tls = st.tls;
  b = m << 1;
  i = x.size(0) << 1;
  if (i != b) {
    emlrtErrorWithMessageIdR2018a(
        &sp, &j_emlrtRTEI,
        "optimlib_codegen:common:IncorrectSizeObjectiveJacobian",
        "optimlib_codegen:common:IncorrectSizeObjectiveJacobian", 4, 12, m, 12,
        2);
  }
  evalOK = true;
  st.site = &eb_emlrtRSI;
  if (b > 2147483646) {
    b_st.site = &p_emlrtRSI;
    check_forloop_overflow_error(b_st);
  }
  for (int32_T b_i{0}; b_i < b; b_i++) {
    if (evalOK) {
      real_T b_x;
      if ((b_i + 1 < 1) || (b_i + 1 > i)) {
        emlrtDynamicBoundsCheckR2012b(b_i + 1, 1, i, &o_emlrtBCI,
                                      (emlrtConstCTX)&sp);
      }
      b_x = x[b_i];
      if (muDoubleScalarIsInf(b_x) || muDoubleScalarIsNaN(b_x)) {
        evalOK = false;
      }
    } else {
      evalOK = false;
    }
  }
  return evalOK;
}

boolean_T checkFinite(const emlrtStack &sp, const ::coder::array<real_T, 2U> &x,
                      int32_T m)
{
  emlrtStack b_st;
  emlrtStack st;
  boolean_T evalOK;
  st.prev = &sp;
  st.tls = sp.tls;
  b_st.prev = &st;
  b_st.tls = st.tls;
  if (x.size(1) != m) {
    emlrtErrorWithMessageIdR2018a(
        &sp, &j_emlrtRTEI, "optimlib_codegen:common:IncorrectSizeObjective",
        "optimlib_codegen:common:IncorrectSizeObjective", 2, 12, m);
  }
  evalOK = true;
  st.site = &eb_emlrtRSI;
  if (m > 2147483646) {
    b_st.site = &p_emlrtRSI;
    check_forloop_overflow_error(b_st);
  }
  for (int32_T i{0}; i < m; i++) {
    if (evalOK) {
      real_T b_x;
      int32_T b_i;
      b_i = x.size(1);
      if (i + 1 > b_i) {
        emlrtDynamicBoundsCheckR2012b(i + 1, 1, b_i, &o_emlrtBCI,
                                      (emlrtConstCTX)&sp);
      }
      b_x = x[i];
      if (muDoubleScalarIsInf(b_x) || muDoubleScalarIsNaN(b_x)) {
        evalOK = false;
      }
    } else {
      evalOK = false;
    }
  }
  return evalOK;
}

} // namespace validate
} // namespace coder
} // namespace optim
} // namespace coder

// End of code generation (checkFinite.cpp)
