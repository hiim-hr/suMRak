//
// Student License - for use by students to meet course requirements and
// perform academic research at degree granting institutions only.  Not
// for government, commercial, or other organizational use.
//
// linearLeastSquares.cpp
//
// Code generation for function 'linearLeastSquares'
//

// Include files
#include "linearLeastSquares.h"
#include "CalculateT1Map_data.h"
#include "eml_int_forloop_overflow_check.h"
#include "rt_nonfinite.h"
#include "validateattributes.h"
#include "coder_array.h"
#include "lapacke.h"
#include <cstddef>

// Variable Definitions
static emlrtRSInfo ub_emlrtRSI{
    1,                    // lineNo
    "linearLeastSquares", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\shared\\optimlib\\+optim\\+coder\\+"
    "levenbergMarquardt\\linearLeastSquares.p" // pathName
};

static emlrtRSInfo vb_emlrtRSI{
    63,       // lineNo
    "xgeqp3", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+internal\\+"
    "lapack\\xgeqp3.m" // pathName
};

static emlrtRSInfo wb_emlrtRSI{
    151,            // lineNo
    "ceval_xgeqp3", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+internal\\+"
    "lapack\\xgeqp3.m" // pathName
};

static emlrtRSInfo xb_emlrtRSI{
    148,            // lineNo
    "ceval_xgeqp3", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+internal\\+"
    "lapack\\xgeqp3.m" // pathName
};

static emlrtRSInfo yb_emlrtRSI{
    143,            // lineNo
    "ceval_xgeqp3", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+internal\\+"
    "lapack\\xgeqp3.m" // pathName
};

static emlrtRSInfo ac_emlrtRSI{
    138,            // lineNo
    "ceval_xgeqp3", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+internal\\+"
    "lapack\\xgeqp3.m" // pathName
};

static emlrtRSInfo bc_emlrtRSI{
    31,         // lineNo
    "xunormqr", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+internal\\+"
    "lapack\\xunormqr.m" // pathName
};

static emlrtRSInfo cc_emlrtRSI{
    102,              // lineNo
    "ceval_xunormqr", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+internal\\+"
    "lapack\\xunormqr.m" // pathName
};

static emlrtRSInfo dc_emlrtRSI{
    55,      // lineNo
    "xtrsv", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+internal\\+blas\\xtrsv."
    "m" // pathName
};

static emlrtRSInfo ec_emlrtRSI{
    37,      // lineNo
    "xtrsv", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+internal\\+"
    "refblas\\xtrsv.m" // pathName
};

static emlrtRTEInfo k_emlrtRTEI{
    47,          // lineNo
    13,          // colNo
    "infocheck", // fName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+internal\\+"
    "lapack\\infocheck.m" // pName
};

static emlrtRTEInfo l_emlrtRTEI{
    44,          // lineNo
    13,          // colNo
    "infocheck", // fName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+internal\\+"
    "lapack\\infocheck.m" // pName
};

static emlrtRTEInfo m_emlrtRTEI{
    10,             // lineNo
    23,             // colNo
    "validatesize", // fName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+internal\\+"
    "valattr\\validatesize.m" // pName
};

static emlrtBCInfo s_emlrtBCI{
    1,                    // iFirst
    2,                    // iLast
    1,                    // lineNo
    1,                    // colNo
    "",                   // aName
    "linearLeastSquares", // fName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\shared\\optimlib\\+optim\\+coder\\+"
    "levenbergMarquardt\\linearLeastSquares.p", // pName
    3                                           // checkKind
};

static emlrtRTEInfo jb_emlrtRTEI{
    1,                    // lineNo
    1,                    // colNo
    "linearLeastSquares", // fName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\shared\\optimlib\\+optim\\+coder\\+"
    "levenbergMarquardt\\linearLeastSquares.p" // pName
};

// Function Definitions
namespace coder {
namespace optim {
namespace coder {
namespace levenbergMarquardt {
void linearLeastSquares(const emlrtStack &sp, ::coder::array<real_T, 2U> &lhs,
                        ::coder::array<real_T, 1U> &rhs, real_T dx[2],
                        int32_T m)
{
  static const char_T b_fname[14]{'L', 'A', 'P', 'A', 'C', 'K', 'E',
                                  '_', 'd', 'o', 'r', 'm', 'q', 'r'};
  static const char_T fname[14]{'L', 'A', 'P', 'A', 'C', 'K', 'E',
                                '_', 'd', 'g', 'e', 'q', 'p', '3'};
  ptrdiff_t jpvt_t[2];
  ptrdiff_t info_t;
  emlrtStack b_st;
  emlrtStack c_st;
  emlrtStack d_st;
  emlrtStack st;
  real_T tau_data[2];
  real_T dx_idx_1;
  int32_T sz[2];
  int32_T t1_f2[2];
  int32_T jjA;
  int32_T jpvt_idx_0;
  int32_T jpvt_idx_1;
  boolean_T overflow;
  st.prev = &sp;
  st.tls = sp.tls;
  b_st.prev = &st;
  b_st.tls = st.tls;
  c_st.prev = &b_st;
  c_st.tls = b_st.tls;
  d_st.prev = &c_st;
  d_st.tls = c_st.tls;
  t1_f2[0] = m;
  t1_f2[1] = 2;
  st.site = &ub_emlrtRSI;
  validateattributes(st, lhs, t1_f2);
  t1_f2[0] = m;
  t1_f2[1] = 1;
  st.site = &ub_emlrtRSI;
  b_st.site = &gb_emlrtRSI;
  sz[0] = m;
  sz[1] = 1;
  overflow = true;
  for (jjA = 0; jjA < 2; jjA++) {
    if ((!overflow) || (t1_f2[jjA] != sz[jjA])) {
      overflow = false;
    }
  }
  if (!overflow) {
    emlrtErrorWithMessageIdR2018a(&b_st, &m_emlrtRTEI,
                                  "MATLAB:validateattributes:badSizeArray",
                                  "MATLAB:validateattributes:badSizeArray", 0);
  }
  overflow = true;
  for (jjA = 0; jjA < 2; jjA++) {
    if (overflow) {
      if (jjA + 1 <= 1) {
        jpvt_idx_0 = rhs.size(0);
      } else {
        jpvt_idx_0 = 1;
      }
      if (t1_f2[jjA] != jpvt_idx_0) {
        overflow = false;
      }
    } else {
      overflow = false;
    }
  }
  if (!overflow) {
    emlrtErrorWithMessageIdR2018a(
        &b_st, &f_emlrtRTEI, "Coder:toolbox:ValidateattributesincorrectSize",
        "MATLAB:incorrectSize", 3, 4, 5, "Input");
  }
  st.site = &ub_emlrtRSI;
  b_st.site = &vb_emlrtRSI;
  jpvt_t[0] = (ptrdiff_t)0.0;
  jpvt_t[1] = (ptrdiff_t)0.0;
  info_t = LAPACKE_dgeqp3(102, (ptrdiff_t)m, (ptrdiff_t)2, &(lhs.data())[0],
                          (ptrdiff_t)lhs.size(0), &jpvt_t[0], &tau_data[0]);
  c_st.site = &ac_emlrtRSI;
  if ((int32_T)info_t != 0) {
    overflow = true;
    if ((int32_T)info_t != -4) {
      if ((int32_T)info_t == -1010) {
        emlrtErrorWithMessageIdR2018a(&c_st, &l_emlrtRTEI, "MATLAB:nomem",
                                      "MATLAB:nomem", 0);
      } else {
        emlrtErrorWithMessageIdR2018a(&c_st, &k_emlrtRTEI,
                                      "Coder:toolbox:LAPACKCallErrorInfo",
                                      "Coder:toolbox:LAPACKCallErrorInfo", 5, 4,
                                      14, &fname[0], 12, (int32_T)info_t);
      }
    }
  } else {
    overflow = false;
  }
  if (overflow) {
    overflow = (m > 2147483646);
    for (int32_T j{0}; j < 2; j++) {
      c_st.site = &yb_emlrtRSI;
      if (overflow) {
        d_st.site = &p_emlrtRSI;
        check_forloop_overflow_error(d_st);
      }
      for (int32_T i{0}; i < m; i++) {
        lhs[j * lhs.size(0) + i] = rtNaN;
      }
    }
    c_st.site = &xb_emlrtRSI;
    tau_data[0] = rtNaN;
    tau_data[1] = rtNaN;
    c_st.site = &wb_emlrtRSI;
    jpvt_idx_0 = 1;
    jpvt_idx_1 = 2;
  } else {
    jpvt_idx_0 = (int32_T)jpvt_t[0];
    jpvt_idx_1 = (int32_T)jpvt_t[1];
  }
  st.site = &ub_emlrtRSI;
  b_st.site = &bc_emlrtRSI;
  info_t = (ptrdiff_t)rhs.size(0);
  info_t = LAPACKE_dormqr(102, 'L', 'T', info_t, (ptrdiff_t)1, (ptrdiff_t)2,
                          &(lhs.data())[0], (ptrdiff_t)lhs.size(0),
                          &tau_data[0], &(rhs.data())[0], info_t);
  c_st.site = &cc_emlrtRSI;
  if ((int32_T)info_t != 0) {
    boolean_T p;
    overflow = true;
    p = false;
    if ((int32_T)info_t == -7) {
      p = true;
    } else if ((int32_T)info_t == -9) {
      p = true;
    } else if ((int32_T)info_t == -10) {
      p = true;
    }
    if (!p) {
      if ((int32_T)info_t == -1010) {
        emlrtErrorWithMessageIdR2018a(&c_st, &l_emlrtRTEI, "MATLAB:nomem",
                                      "MATLAB:nomem", 0);
      } else {
        emlrtErrorWithMessageIdR2018a(&c_st, &k_emlrtRTEI,
                                      "Coder:toolbox:LAPACKCallErrorInfo",
                                      "Coder:toolbox:LAPACKCallErrorInfo", 5, 4,
                                      14, &b_fname[0], 12, (int32_T)info_t);
      }
    }
  } else {
    overflow = false;
  }
  if (overflow) {
    jjA = rhs.size(0);
    rhs.set_size(&jb_emlrtRTEI, &b_st, jjA);
    for (int32_T j{0}; j < jjA; j++) {
      rhs[j] = rtNaN;
    }
  }
  st.site = &ub_emlrtRSI;
  dx[0] = rhs[0];
  dx[1] = rhs[1];
  b_st.site = &dc_emlrtRSI;
  for (int32_T j{1}; j >= 0; j--) {
    jjA = j + j * m;
    dx[j] /= lhs[jjA];
    c_st.site = &ec_emlrtRSI;
    for (int32_T i{0}; i < j; i++) {
      dx[0] -= dx[j] * lhs[jjA - 1];
    }
  }
  dx_idx_1 = dx[1];
  if ((jpvt_idx_0 < 1) || (jpvt_idx_0 > 2)) {
    emlrtDynamicBoundsCheckR2012b(jpvt_idx_0, 1, 2, &s_emlrtBCI,
                                  (emlrtConstCTX)&sp);
  }
  dx[jpvt_idx_0 - 1] = dx[0];
  if ((jpvt_idx_1 < 1) || (jpvt_idx_1 > 2)) {
    emlrtDynamicBoundsCheckR2012b(jpvt_idx_1, 1, 2, &s_emlrtBCI,
                                  (emlrtConstCTX)&sp);
  }
  dx[jpvt_idx_1 - 1] = dx_idx_1;
}

} // namespace levenbergMarquardt
} // namespace coder
} // namespace optim
} // namespace coder

// End of code generation (linearLeastSquares.cpp)
