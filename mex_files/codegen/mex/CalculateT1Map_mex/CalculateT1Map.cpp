//
// Student License - for use by students to meet course requirements and
// perform academic research at degree granting institutions only.  Not
// for government, commercial, or other organizational use.
//
// CalculateT1Map.cpp
//
// Code generation for function 'CalculateT1Map'
//

// Include files
#include "CalculateT1Map.h"
#include "CalculateT1Map_mex_data.h"
#include "eml_int_forloop_overflow_check.h"
#include "lsqcurvefit.h"
#include "rt_nonfinite.h"
#include "coder_array.h"
#include "mwmathutil.h"
#include <emmintrin.h>

// Variable Definitions
static emlrtRSInfo emlrtRSI{
    6,                // lineNo
    "CalculateT1Map", // fcnName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT1Map.m" // pathName
};

static emlrtRSInfo b_emlrtRSI{
    14,               // lineNo
    "CalculateT1Map", // fcnName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT1Map.m" // pathName
};

static emlrtRSInfo c_emlrtRSI{
    15,               // lineNo
    "CalculateT1Map", // fcnName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT1Map.m" // pathName
};

static emlrtRSInfo d_emlrtRSI{
    16,               // lineNo
    "CalculateT1Map", // fcnName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT1Map.m" // pathName
};

static emlrtRSInfo e_emlrtRSI{
    26,               // lineNo
    "CalculateT1Map", // fcnName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT1Map.m" // pathName
};

static emlrtRSInfo f_emlrtRSI{
    27,               // lineNo
    "CalculateT1Map", // fcnName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT1Map.m" // pathName
};

static emlrtRSInfo g_emlrtRSI{
    28,               // lineNo
    "CalculateT1Map", // fcnName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT1Map.m" // pathName
};

static emlrtRSInfo hc_emlrtRSI{
    21,                                                              // lineNo
    "@(coeffs,ivalues)coeffs(1)*abs((1-2*exp(-ivalues/coeffs(2))))", // fcnName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT1Map.m" // pathName
};

static emlrtRSInfo
    ic_emlrtRSI{
        18,    // lineNo
        "abs", // fcnName
        "C:\\Program "
        "Files\\MATLAB\\R2023a\\toolbox\\eml\\lib\\matlab\\elfun\\abs.m" // pathName
    };

static emlrtRSInfo jc_emlrtRSI{
    74,                    // lineNo
    "applyScalarFunction", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+"
    "internal\\applyScalarFunction.m" // pathName
};

static emlrtBCInfo emlrtBCI{
    -1,               // iFirst
    -1,               // iLast
    8,                // lineNo
    22,               // colNo
    "ivalues",        // aName
    "CalculateT1Map", // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT1Map.m", // pName
    0                         // checkKind
};

static emlrtBCInfo b_emlrtBCI{
    -1,                         // iFirst
    -1,                         // iLast
    14,                         // lineNo
    45,                         // colNo
    "T1raw_reordered_reshaped", // aName
    "CalculateT1Map",           // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT1Map.m", // pName
    0                         // checkKind
};

static emlrtBCInfo c_emlrtBCI{
    -1,                         // iFirst
    -1,                         // iLast
    15,                         // lineNo
    75,                         // colNo
    "T1raw_reordered_reshaped", // aName
    "CalculateT1Map",           // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT1Map.m", // pName
    0                         // checkKind
};

static emlrtBCInfo d_emlrtBCI{
    -1,                         // iFirst
    -1,                         // iLast
    15,                         // lineNo
    112,                        // colNo
    "T1raw_reordered_reshaped", // aName
    "CalculateT1Map",           // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT1Map.m", // pName
    0                         // checkKind
};

static emlrtBCInfo e_emlrtBCI{
    -1,                         // iFirst
    -1,                         // iLast
    15,                         // lineNo
    42,                         // colNo
    "T1raw_reordered_reshaped", // aName
    "CalculateT1Map",           // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT1Map.m", // pName
    0                         // checkKind
};

static emlrtECInfo emlrtECI{
    -1,               // nDims
    15,               // lineNo
    17,               // colNo
    "CalculateT1Map", // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT1Map.m" // pName
};

static emlrtBCInfo f_emlrtBCI{
    -1,                         // iFirst
    -1,                         // iLast
    16,                         // lineNo
    89,                         // colNo
    "T1raw_reordered_reshaped", // aName
    "CalculateT1Map",           // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT1Map.m", // pName
    0                         // checkKind
};

static emlrtBCInfo g_emlrtBCI{
    -1,                         // iFirst
    -1,                         // iLast
    26,                         // lineNo
    45,                         // colNo
    "T1raw_reordered_reshaped", // aName
    "CalculateT1Map",           // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT1Map.m", // pName
    0                         // checkKind
};

static emlrtBCInfo h_emlrtBCI{
    -1,                         // iFirst
    -1,                         // iLast
    27,                         // lineNo
    75,                         // colNo
    "T1raw_reordered_reshaped", // aName
    "CalculateT1Map",           // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT1Map.m", // pName
    0                         // checkKind
};

static emlrtBCInfo i_emlrtBCI{
    -1,                         // iFirst
    -1,                         // iLast
    27,                         // lineNo
    112,                        // colNo
    "T1raw_reordered_reshaped", // aName
    "CalculateT1Map",           // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT1Map.m", // pName
    0                         // checkKind
};

static emlrtBCInfo j_emlrtBCI{
    -1,                         // iFirst
    -1,                         // iLast
    27,                         // lineNo
    42,                         // colNo
    "T1raw_reordered_reshaped", // aName
    "CalculateT1Map",           // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT1Map.m", // pName
    0                         // checkKind
};

static emlrtECInfo b_emlrtECI{
    -1,               // nDims
    27,               // lineNo
    17,               // colNo
    "CalculateT1Map", // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT1Map.m" // pName
};

static emlrtBCInfo k_emlrtBCI{
    -1,                         // iFirst
    -1,                         // iLast
    28,                         // lineNo
    89,                         // colNo
    "T1raw_reordered_reshaped", // aName
    "CalculateT1Map",           // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT1Map.m", // pName
    0                         // checkKind
};

static emlrtBCInfo l_emlrtBCI{
    -1,               // iFirst
    -1,               // iLast
    16,               // lineNo
    24,               // colNo
    "coeffs",         // aName
    "CalculateT1Map", // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT1Map.m", // pName
    0                         // checkKind
};

static emlrtBCInfo m_emlrtBCI{
    -1,               // iFirst
    -1,               // iLast
    28,               // lineNo
    24,               // colNo
    "coeffs",         // aName
    "CalculateT1Map", // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT1Map.m", // pName
    0                         // checkKind
};

static emlrtRTEInfo n_emlrtRTEI{
    23,               // lineNo
    9,                // colNo
    "CalculateT1Map", // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT1Map.m" // pName
};

static emlrtRTEInfo o_emlrtRTEI{
    26,               // lineNo
    20,               // colNo
    "CalculateT1Map", // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT1Map.m" // pName
};

static emlrtRTEInfo p_emlrtRTEI{
    27,               // lineNo
    87,               // colNo
    "CalculateT1Map", // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT1Map.m" // pName
};

static emlrtRTEInfo q_emlrtRTEI{
    27,               // lineNo
    50,               // colNo
    "CalculateT1Map", // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT1Map.m" // pName
};

static emlrtRTEInfo r_emlrtRTEI{
    28,               // lineNo
    64,               // colNo
    "CalculateT1Map", // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT1Map.m" // pName
};

static emlrtRTEInfo s_emlrtRTEI{
    11,               // lineNo
    9,                // colNo
    "CalculateT1Map", // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT1Map.m" // pName
};

static emlrtRTEInfo t_emlrtRTEI{
    14,               // lineNo
    20,               // colNo
    "CalculateT1Map", // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT1Map.m" // pName
};

static emlrtRTEInfo u_emlrtRTEI{
    15,               // lineNo
    87,               // colNo
    "CalculateT1Map", // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT1Map.m" // pName
};

static emlrtRTEInfo v_emlrtRTEI{
    15,               // lineNo
    50,               // colNo
    "CalculateT1Map", // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT1Map.m" // pName
};

static emlrtRTEInfo w_emlrtRTEI{
    16,               // lineNo
    64,               // colNo
    "CalculateT1Map", // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT1Map.m" // pName
};

static emlrtRTEInfo db_emlrtRTEI{
    21,               // lineNo
    51,               // colNo
    "CalculateT1Map", // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT1Map.m" // pName
};

static emlrtRTEInfo eb_emlrtRTEI{
    21,               // lineNo
    47,               // colNo
    "CalculateT1Map", // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT1Map.m" // pName
};

static emlrtRTEInfo fb_emlrtRTEI{
    30,                    // lineNo
    21,                    // colNo
    "applyScalarFunction", // fName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+"
    "internal\\applyScalarFunction.m" // pName
};

static emlrtRTEInfo gb_emlrtRTEI{
    21,               // lineNo
    15,               // colNo
    "CalculateT1Map", // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT1Map.m" // pName
};

// Function Definitions
void CalculateT1Map(const emlrtStack *sp,
                    coder::array<real_T, 2U> &T1raw_reordered_reshaped,
                    const coder::array<real_T, 2U> &tvalues,
                    const coder::array<real_T, 2U> &ivalues,
                    coder::array<real_T, 2U> &coeffs)
{
  coder::array<real_T, 2U> varargin_1;
  emlrtStack b_st;
  emlrtStack c_st;
  emlrtStack d_st;
  emlrtStack e_st;
  emlrtStack f_st;
  emlrtStack g_st;
  emlrtStack h_st;
  emlrtStack i_st;
  emlrtStack st;
  real_T d;
  real_T tmax;
  int32_T iv[2];
  int32_T a;
  int32_T idx;
  int32_T k;
  int32_T last;
  boolean_T exitg1;
  st.prev = sp;
  st.tls = sp->tls;
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
  h_st.prev = &g_st;
  h_st.tls = g_st.tls;
  i_st.prev = &h_st;
  i_st.tls = h_st.tls;
  emlrtHeapReferenceStackEnterFcnR2012b((emlrtConstCTX)sp);
  // UNTITLED Summary of this function goes here
  //    Detailed explanation goes here
  st.site = &emlrtRSI;
  b_st.site = &h_emlrtRSI;
  c_st.site = &i_emlrtRSI;
  d_st.site = &j_emlrtRSI;
  if (tvalues.size(1) < 1) {
    emlrtErrorWithMessageIdR2018a(&d_st, &b_emlrtRTEI,
                                  "Coder:toolbox:eml_min_or_max_varDimZero",
                                  "Coder:toolbox:eml_min_or_max_varDimZero", 0);
  }
  e_st.site = &k_emlrtRSI;
  f_st.site = &l_emlrtRSI;
  last = tvalues.size(1);
  if (tvalues.size(1) <= 2) {
    if (tvalues.size(1) == 1) {
      tmax = tvalues[0];
    } else if ((tvalues[0] < tvalues[1]) ||
               (muDoubleScalarIsNaN(tvalues[0]) &&
                (!muDoubleScalarIsNaN(tvalues[1])))) {
      tmax = tvalues[1];
    } else {
      tmax = tvalues[0];
    }
  } else {
    g_st.site = &n_emlrtRSI;
    if (!muDoubleScalarIsNaN(tvalues[0])) {
      idx = 1;
    } else {
      idx = 0;
      h_st.site = &o_emlrtRSI;
      if (tvalues.size(1) > 2147483646) {
        i_st.site = &p_emlrtRSI;
        coder::check_forloop_overflow_error(i_st);
      }
      k = 2;
      exitg1 = false;
      while ((!exitg1) && (k <= last)) {
        if (!muDoubleScalarIsNaN(tvalues[k - 1])) {
          idx = k;
          exitg1 = true;
        } else {
          k++;
        }
      }
    }
    if (idx == 0) {
      tmax = tvalues[0];
    } else {
      g_st.site = &m_emlrtRSI;
      tmax = tvalues[idx - 1];
      a = idx + 1;
      h_st.site = &q_emlrtRSI;
      if ((idx + 1 <= tvalues.size(1)) && (tvalues.size(1) > 2147483646)) {
        i_st.site = &p_emlrtRSI;
        coder::check_forloop_overflow_error(i_st);
      }
      for (k = a; k <= last; k++) {
        d = tvalues[k - 1];
        if (tmax < d) {
          tmax = d;
        }
      }
    }
  }
  if (ivalues.size(1) < 1) {
    emlrtDynamicBoundsCheckR2012b(1, 1, ivalues.size(1), &emlrtBCI,
                                  (emlrtConstCTX)sp);
  }
  if (muDoubleScalarIsNaN(ivalues[0])) {
    int32_T n;
    if ((T1raw_reordered_reshaped.size(0) == 0) ||
        (T1raw_reordered_reshaped.size(1) == 0)) {
      n = 0;
    } else {
      last = T1raw_reordered_reshaped.size(0);
      a = T1raw_reordered_reshaped.size(1);
      n = muIntScalarMax_sint32(last, a);
    }
    coeffs.set_size(&s_emlrtRTEI, sp, n, 2);
    last = n << 1;
    for (idx = 0; idx < last; idx++) {
      coeffs[idx] = 0.0;
    }
    if ((T1raw_reordered_reshaped.size(0) == 0) ||
        (T1raw_reordered_reshaped.size(1) == 0)) {
      n = 0;
    } else {
      last = T1raw_reordered_reshaped.size(0);
      a = T1raw_reordered_reshaped.size(1);
      n = muIntScalarMax_sint32(last, a);
    }
    for (int32_T br{0}; br < n; br++) {
      real_T ex;
      st.site = &b_emlrtRSI;
      if (br + 1 > T1raw_reordered_reshaped.size(0)) {
        emlrtDynamicBoundsCheckR2012b(
            br + 1, 1, T1raw_reordered_reshaped.size(0), &b_emlrtBCI, &st);
      }
      varargin_1.set_size(&t_emlrtRTEI, &st, 1,
                          T1raw_reordered_reshaped.size(1));
      last = T1raw_reordered_reshaped.size(1);
      for (idx = 0; idx < last; idx++) {
        varargin_1[idx] =
            T1raw_reordered_reshaped[br +
                                     T1raw_reordered_reshaped.size(0) * idx];
      }
      b_st.site = &h_emlrtRSI;
      c_st.site = &i_emlrtRSI;
      d_st.site = &j_emlrtRSI;
      if (T1raw_reordered_reshaped.size(1) < 1) {
        emlrtErrorWithMessageIdR2018a(
            &d_st, &b_emlrtRTEI, "Coder:toolbox:eml_min_or_max_varDimZero",
            "Coder:toolbox:eml_min_or_max_varDimZero", 0);
      }
      e_st.site = &k_emlrtRSI;
      f_st.site = &l_emlrtRSI;
      last = T1raw_reordered_reshaped.size(1);
      if (T1raw_reordered_reshaped.size(1) <= 2) {
        if (T1raw_reordered_reshaped.size(1) == 1) {
          ex = T1raw_reordered_reshaped[br];
        } else if ((T1raw_reordered_reshaped[br] <
                    T1raw_reordered_reshaped[br + T1raw_reordered_reshaped.size(
                                                      0)]) ||
                   (muDoubleScalarIsNaN(T1raw_reordered_reshaped[br]) &&
                    (!muDoubleScalarIsNaN(
                        T1raw_reordered_reshaped[br + T1raw_reordered_reshaped
                                                          .size(0)])))) {
          ex = T1raw_reordered_reshaped[br + T1raw_reordered_reshaped.size(0)];
        } else {
          ex = T1raw_reordered_reshaped[br];
        }
      } else {
        g_st.site = &n_emlrtRSI;
        if (!muDoubleScalarIsNaN(T1raw_reordered_reshaped[br])) {
          idx = 1;
        } else {
          idx = 0;
          h_st.site = &o_emlrtRSI;
          if (T1raw_reordered_reshaped.size(1) > 2147483646) {
            i_st.site = &p_emlrtRSI;
            coder::check_forloop_overflow_error(i_st);
          }
          k = 2;
          exitg1 = false;
          while ((!exitg1) && (k <= last)) {
            if (!muDoubleScalarIsNaN(varargin_1[k - 1])) {
              idx = k;
              exitg1 = true;
            } else {
              k++;
            }
          }
        }
        if (idx == 0) {
          ex = T1raw_reordered_reshaped[br];
        } else {
          g_st.site = &m_emlrtRSI;
          ex = T1raw_reordered_reshaped[br + T1raw_reordered_reshaped.size(0) *
                                                 (idx - 1)];
          a = idx + 1;
          h_st.site = &q_emlrtRSI;
          if ((idx + 1 <= T1raw_reordered_reshaped.size(1)) &&
              (T1raw_reordered_reshaped.size(1) > 2147483646)) {
            i_st.site = &p_emlrtRSI;
            coder::check_forloop_overflow_error(i_st);
          }
          for (k = a; k <= last; k++) {
            d = varargin_1[k - 1];
            if (ex < d) {
              ex = d;
            }
          }
        }
      }
      if (ex != 0.0) {
        real_T dv1[2];
        if (br + 1 > T1raw_reordered_reshaped.size(0)) {
          emlrtDynamicBoundsCheckR2012b(br + 1, 1,
                                        T1raw_reordered_reshaped.size(0),
                                        &e_emlrtBCI, (emlrtConstCTX)sp);
        }
        st.site = &c_emlrtRSI;
        if (br + 1 > T1raw_reordered_reshaped.size(0)) {
          emlrtDynamicBoundsCheckR2012b(
              br + 1, 1, T1raw_reordered_reshaped.size(0), &d_emlrtBCI, &st);
        }
        varargin_1.set_size(&u_emlrtRTEI, &st, 1,
                            T1raw_reordered_reshaped.size(1));
        last = T1raw_reordered_reshaped.size(1);
        for (idx = 0; idx < last; idx++) {
          varargin_1[idx] =
              T1raw_reordered_reshaped[br +
                                       T1raw_reordered_reshaped.size(0) * idx];
        }
        b_st.site = &h_emlrtRSI;
        c_st.site = &i_emlrtRSI;
        d_st.site = &j_emlrtRSI;
        e_st.site = &k_emlrtRSI;
        f_st.site = &l_emlrtRSI;
        last = T1raw_reordered_reshaped.size(1);
        if (T1raw_reordered_reshaped.size(1) <= 2) {
          if (T1raw_reordered_reshaped.size(1) == 1) {
            ex = T1raw_reordered_reshaped[br];
          } else if ((T1raw_reordered_reshaped[br] <
                      T1raw_reordered_reshaped[br + T1raw_reordered_reshaped
                                                        .size(0)]) ||
                     (muDoubleScalarIsNaN(T1raw_reordered_reshaped[br]) &&
                      (!muDoubleScalarIsNaN(
                          T1raw_reordered_reshaped[br + T1raw_reordered_reshaped
                                                            .size(0)])))) {
            ex =
                T1raw_reordered_reshaped[br + T1raw_reordered_reshaped.size(0)];
          } else {
            ex = T1raw_reordered_reshaped[br];
          }
        } else {
          g_st.site = &n_emlrtRSI;
          if (!muDoubleScalarIsNaN(T1raw_reordered_reshaped[br])) {
            idx = 1;
          } else {
            idx = 0;
            h_st.site = &o_emlrtRSI;
            if (T1raw_reordered_reshaped.size(1) > 2147483646) {
              i_st.site = &p_emlrtRSI;
              coder::check_forloop_overflow_error(i_st);
            }
            k = 2;
            exitg1 = false;
            while ((!exitg1) && (k <= last)) {
              if (!muDoubleScalarIsNaN(varargin_1[k - 1])) {
                idx = k;
                exitg1 = true;
              } else {
                k++;
              }
            }
          }
          if (idx == 0) {
            ex = T1raw_reordered_reshaped[br];
          } else {
            g_st.site = &m_emlrtRSI;
            ex =
                T1raw_reordered_reshaped[br + T1raw_reordered_reshaped.size(0) *
                                                  (idx - 1)];
            a = idx + 1;
            h_st.site = &q_emlrtRSI;
            if ((idx + 1 <= T1raw_reordered_reshaped.size(1)) &&
                (T1raw_reordered_reshaped.size(1) > 2147483646)) {
              i_st.site = &p_emlrtRSI;
              coder::check_forloop_overflow_error(i_st);
            }
            for (k = a; k <= last; k++) {
              d = varargin_1[k - 1];
              if (ex < d) {
                ex = d;
              }
            }
          }
        }
        if (br + 1 > T1raw_reordered_reshaped.size(0)) {
          emlrtDynamicBoundsCheckR2012b(br + 1, 1,
                                        T1raw_reordered_reshaped.size(0),
                                        &c_emlrtBCI, (emlrtConstCTX)sp);
        }
        varargin_1.set_size(&v_emlrtRTEI, sp, 1,
                            T1raw_reordered_reshaped.size(1));
        last = T1raw_reordered_reshaped.size(1);
        for (idx = 0; idx < last; idx++) {
          varargin_1[idx] =
              T1raw_reordered_reshaped[br +
                                       T1raw_reordered_reshaped.size(0) * idx] /
              ex;
        }
        iv[0] = 1;
        iv[1] = T1raw_reordered_reshaped.size(1);
        emlrtSubAssignSizeCheckR2012b(&iv[0], 2, varargin_1.size(), 2,
                                      &emlrtECI, (emlrtCTX)sp);
        last = varargin_1.size(1);
        for (idx = 0; idx < last; idx++) {
          T1raw_reordered_reshaped[br + T1raw_reordered_reshaped.size(0) *
                                            idx] = varargin_1[idx];
        }
        if (br + 1 > T1raw_reordered_reshaped.size(0)) {
          emlrtDynamicBoundsCheckR2012b(br + 1, 1,
                                        T1raw_reordered_reshaped.size(0),
                                        &f_emlrtBCI, (emlrtConstCTX)sp);
        }
        varargin_1.set_size(&w_emlrtRTEI, sp, 1,
                            T1raw_reordered_reshaped.size(1));
        last = T1raw_reordered_reshaped.size(1);
        for (idx = 0; idx < last; idx++) {
          varargin_1[idx] =
              T1raw_reordered_reshaped[br +
                                       T1raw_reordered_reshaped.size(0) * idx];
        }
        real_T dv[2];
        dv[0] = 1.0;
        dv[1] = 2.0 * tmax;
        st.site = &d_emlrtRSI;
        coder::lsqcurvefit(st, tvalues, varargin_1, dv, dv1);
        if (br + 1 > coeffs.size(0)) {
          emlrtDynamicBoundsCheckR2012b(br + 1, 1, coeffs.size(0), &l_emlrtBCI,
                                        (emlrtConstCTX)sp);
        }
        coeffs[br] = dv1[0];
        coeffs[br + coeffs.size(0)] = dv1[1];
      }
      if (*emlrtBreakCheckR2012bFlagVar != 0) {
        emlrtBreakCheckR2012b((emlrtConstCTX)sp);
      }
    }
  } else {
    int32_T n;
    if ((T1raw_reordered_reshaped.size(0) == 0) ||
        (T1raw_reordered_reshaped.size(1) == 0)) {
      n = 0;
    } else {
      last = T1raw_reordered_reshaped.size(0);
      a = T1raw_reordered_reshaped.size(1);
      n = muIntScalarMax_sint32(last, a);
    }
    coeffs.set_size(&n_emlrtRTEI, sp, n, 2);
    last = n << 1;
    for (idx = 0; idx < last; idx++) {
      coeffs[idx] = 0.0;
    }
    if ((T1raw_reordered_reshaped.size(0) == 0) ||
        (T1raw_reordered_reshaped.size(1) == 0)) {
      n = 0;
    } else {
      last = T1raw_reordered_reshaped.size(0);
      a = T1raw_reordered_reshaped.size(1);
      n = muIntScalarMax_sint32(last, a);
    }
    for (int32_T br{0}; br < n; br++) {
      real_T ex;
      st.site = &e_emlrtRSI;
      if (br + 1 > T1raw_reordered_reshaped.size(0)) {
        emlrtDynamicBoundsCheckR2012b(
            br + 1, 1, T1raw_reordered_reshaped.size(0), &g_emlrtBCI, &st);
      }
      varargin_1.set_size(&o_emlrtRTEI, &st, 1,
                          T1raw_reordered_reshaped.size(1));
      last = T1raw_reordered_reshaped.size(1);
      for (idx = 0; idx < last; idx++) {
        varargin_1[idx] =
            T1raw_reordered_reshaped[br +
                                     T1raw_reordered_reshaped.size(0) * idx];
      }
      b_st.site = &h_emlrtRSI;
      c_st.site = &i_emlrtRSI;
      d_st.site = &j_emlrtRSI;
      if (T1raw_reordered_reshaped.size(1) < 1) {
        emlrtErrorWithMessageIdR2018a(
            &d_st, &b_emlrtRTEI, "Coder:toolbox:eml_min_or_max_varDimZero",
            "Coder:toolbox:eml_min_or_max_varDimZero", 0);
      }
      e_st.site = &k_emlrtRSI;
      f_st.site = &l_emlrtRSI;
      last = T1raw_reordered_reshaped.size(1);
      if (T1raw_reordered_reshaped.size(1) <= 2) {
        if (T1raw_reordered_reshaped.size(1) == 1) {
          ex = T1raw_reordered_reshaped[br];
        } else if ((T1raw_reordered_reshaped[br] <
                    T1raw_reordered_reshaped[br + T1raw_reordered_reshaped.size(
                                                      0)]) ||
                   (muDoubleScalarIsNaN(T1raw_reordered_reshaped[br]) &&
                    (!muDoubleScalarIsNaN(
                        T1raw_reordered_reshaped[br + T1raw_reordered_reshaped
                                                          .size(0)])))) {
          ex = T1raw_reordered_reshaped[br + T1raw_reordered_reshaped.size(0)];
        } else {
          ex = T1raw_reordered_reshaped[br];
        }
      } else {
        g_st.site = &n_emlrtRSI;
        if (!muDoubleScalarIsNaN(T1raw_reordered_reshaped[br])) {
          idx = 1;
        } else {
          idx = 0;
          h_st.site = &o_emlrtRSI;
          if (T1raw_reordered_reshaped.size(1) > 2147483646) {
            i_st.site = &p_emlrtRSI;
            coder::check_forloop_overflow_error(i_st);
          }
          k = 2;
          exitg1 = false;
          while ((!exitg1) && (k <= last)) {
            if (!muDoubleScalarIsNaN(varargin_1[k - 1])) {
              idx = k;
              exitg1 = true;
            } else {
              k++;
            }
          }
        }
        if (idx == 0) {
          ex = T1raw_reordered_reshaped[br];
        } else {
          g_st.site = &m_emlrtRSI;
          ex = T1raw_reordered_reshaped[br + T1raw_reordered_reshaped.size(0) *
                                                 (idx - 1)];
          a = idx + 1;
          h_st.site = &q_emlrtRSI;
          if ((idx + 1 <= T1raw_reordered_reshaped.size(1)) &&
              (T1raw_reordered_reshaped.size(1) > 2147483646)) {
            i_st.site = &p_emlrtRSI;
            coder::check_forloop_overflow_error(i_st);
          }
          for (k = a; k <= last; k++) {
            d = varargin_1[k - 1];
            if (ex < d) {
              ex = d;
            }
          }
        }
      }
      if (ex != 0.0) {
        real_T dv1[2];
        if (br + 1 > T1raw_reordered_reshaped.size(0)) {
          emlrtDynamicBoundsCheckR2012b(br + 1, 1,
                                        T1raw_reordered_reshaped.size(0),
                                        &j_emlrtBCI, (emlrtConstCTX)sp);
        }
        st.site = &f_emlrtRSI;
        if (br + 1 > T1raw_reordered_reshaped.size(0)) {
          emlrtDynamicBoundsCheckR2012b(
              br + 1, 1, T1raw_reordered_reshaped.size(0), &i_emlrtBCI, &st);
        }
        varargin_1.set_size(&p_emlrtRTEI, &st, 1,
                            T1raw_reordered_reshaped.size(1));
        last = T1raw_reordered_reshaped.size(1);
        for (idx = 0; idx < last; idx++) {
          varargin_1[idx] =
              T1raw_reordered_reshaped[br +
                                       T1raw_reordered_reshaped.size(0) * idx];
        }
        b_st.site = &h_emlrtRSI;
        c_st.site = &i_emlrtRSI;
        d_st.site = &j_emlrtRSI;
        e_st.site = &k_emlrtRSI;
        f_st.site = &l_emlrtRSI;
        last = T1raw_reordered_reshaped.size(1);
        if (T1raw_reordered_reshaped.size(1) <= 2) {
          if (T1raw_reordered_reshaped.size(1) == 1) {
            ex = T1raw_reordered_reshaped[br];
          } else if ((T1raw_reordered_reshaped[br] <
                      T1raw_reordered_reshaped[br + T1raw_reordered_reshaped
                                                        .size(0)]) ||
                     (muDoubleScalarIsNaN(T1raw_reordered_reshaped[br]) &&
                      (!muDoubleScalarIsNaN(
                          T1raw_reordered_reshaped[br + T1raw_reordered_reshaped
                                                            .size(0)])))) {
            ex =
                T1raw_reordered_reshaped[br + T1raw_reordered_reshaped.size(0)];
          } else {
            ex = T1raw_reordered_reshaped[br];
          }
        } else {
          g_st.site = &n_emlrtRSI;
          if (!muDoubleScalarIsNaN(T1raw_reordered_reshaped[br])) {
            idx = 1;
          } else {
            idx = 0;
            h_st.site = &o_emlrtRSI;
            if (T1raw_reordered_reshaped.size(1) > 2147483646) {
              i_st.site = &p_emlrtRSI;
              coder::check_forloop_overflow_error(i_st);
            }
            k = 2;
            exitg1 = false;
            while ((!exitg1) && (k <= last)) {
              if (!muDoubleScalarIsNaN(varargin_1[k - 1])) {
                idx = k;
                exitg1 = true;
              } else {
                k++;
              }
            }
          }
          if (idx == 0) {
            ex = T1raw_reordered_reshaped[br];
          } else {
            g_st.site = &m_emlrtRSI;
            ex =
                T1raw_reordered_reshaped[br + T1raw_reordered_reshaped.size(0) *
                                                  (idx - 1)];
            a = idx + 1;
            h_st.site = &q_emlrtRSI;
            if ((idx + 1 <= T1raw_reordered_reshaped.size(1)) &&
                (T1raw_reordered_reshaped.size(1) > 2147483646)) {
              i_st.site = &p_emlrtRSI;
              coder::check_forloop_overflow_error(i_st);
            }
            for (k = a; k <= last; k++) {
              d = varargin_1[k - 1];
              if (ex < d) {
                ex = d;
              }
            }
          }
        }
        if (br + 1 > T1raw_reordered_reshaped.size(0)) {
          emlrtDynamicBoundsCheckR2012b(br + 1, 1,
                                        T1raw_reordered_reshaped.size(0),
                                        &h_emlrtBCI, (emlrtConstCTX)sp);
        }
        varargin_1.set_size(&q_emlrtRTEI, sp, 1,
                            T1raw_reordered_reshaped.size(1));
        last = T1raw_reordered_reshaped.size(1);
        for (idx = 0; idx < last; idx++) {
          varargin_1[idx] =
              T1raw_reordered_reshaped[br +
                                       T1raw_reordered_reshaped.size(0) * idx] /
              ex;
        }
        iv[0] = 1;
        iv[1] = T1raw_reordered_reshaped.size(1);
        emlrtSubAssignSizeCheckR2012b(&iv[0], 2, varargin_1.size(), 2,
                                      &b_emlrtECI, (emlrtCTX)sp);
        last = varargin_1.size(1);
        for (idx = 0; idx < last; idx++) {
          T1raw_reordered_reshaped[br + T1raw_reordered_reshaped.size(0) *
                                            idx] = varargin_1[idx];
        }
        if (br + 1 > T1raw_reordered_reshaped.size(0)) {
          emlrtDynamicBoundsCheckR2012b(br + 1, 1,
                                        T1raw_reordered_reshaped.size(0),
                                        &k_emlrtBCI, (emlrtConstCTX)sp);
        }
        varargin_1.set_size(&r_emlrtRTEI, sp, 1,
                            T1raw_reordered_reshaped.size(1));
        last = T1raw_reordered_reshaped.size(1);
        for (idx = 0; idx < last; idx++) {
          varargin_1[idx] =
              T1raw_reordered_reshaped[br +
                                       T1raw_reordered_reshaped.size(0) * idx];
        }
        real_T dv[2];
        dv[0] = 1.0;
        dv[1] = 2.0 * tmax;
        st.site = &g_emlrtRSI;
        coder::b_lsqcurvefit(st, ivalues, varargin_1, dv, dv1);
        if (br + 1 > coeffs.size(0)) {
          emlrtDynamicBoundsCheckR2012b(br + 1, 1, coeffs.size(0), &m_emlrtBCI,
                                        (emlrtConstCTX)sp);
        }
        coeffs[br] = dv1[0];
        coeffs[br + coeffs.size(0)] = dv1[1];
      }
      if (*emlrtBreakCheckR2012bFlagVar != 0) {
        emlrtBreakCheckR2012b((emlrtConstCTX)sp);
      }
    }
  }
  emlrtHeapReferenceStackLeaveFcnR2012b((emlrtConstCTX)sp);
}

void CalculateT1Map_anonFcn2(const emlrtStack &sp, const real_T coeffs[2],
                             const coder::array<real_T, 2U> &ivalues,
                             coder::array<real_T, 2U> &varargout_1)
{
  __m128d r;
  coder::array<real_T, 2U> b;
  emlrtStack b_st;
  emlrtStack c_st;
  emlrtStack d_st;
  emlrtStack st;
  real_T b_coeffs;
  int32_T nx;
  int32_T scalarLB;
  int32_T vectorUB;
  st.prev = &sp;
  st.tls = sp.tls;
  b_st.prev = &st;
  b_st.tls = st.tls;
  c_st.prev = &b_st;
  c_st.tls = b_st.tls;
  d_st.prev = &c_st;
  d_st.tls = c_st.tls;
  emlrtHeapReferenceStackEnterFcnR2012b((emlrtConstCTX)&sp);
  b.set_size(&db_emlrtRTEI, &sp, 1, ivalues.size(1));
  b_coeffs = coeffs[1];
  nx = ivalues.size(1);
  scalarLB = (ivalues.size(1) / 2) << 1;
  vectorUB = scalarLB - 2;
  for (int32_T i{0}; i <= vectorUB; i += 2) {
    _mm_storeu_pd(&b[i], _mm_div_pd(_mm_mul_pd(_mm_loadu_pd(&ivalues[i]),
                                               _mm_set1_pd(-1.0)),
                                    _mm_set1_pd(b_coeffs)));
  }
  for (int32_T i{scalarLB}; i < nx; i++) {
    b[i] = -ivalues[i] / b_coeffs;
  }
  st.site = &hc_emlrtRSI;
  b_st.site = &ab_emlrtRSI;
  nx = b.size(1);
  c_st.site = &bb_emlrtRSI;
  if (b.size(1) > 2147483646) {
    d_st.site = &p_emlrtRSI;
    coder::check_forloop_overflow_error(d_st);
  }
  for (scalarLB = 0; scalarLB < nx; scalarLB++) {
    b[scalarLB] = muDoubleScalarExp(b[scalarLB]);
  }
  st.site = &hc_emlrtRSI;
  b.set_size(&eb_emlrtRTEI, &st, 1, b.size(1));
  nx = b.size(1) - 1;
  scalarLB = (b.size(1) / 2) << 1;
  vectorUB = scalarLB - 2;
  for (int32_T i{0}; i <= vectorUB; i += 2) {
    r = _mm_loadu_pd(&b[i]);
    _mm_storeu_pd(
        &b[i], _mm_sub_pd(_mm_set1_pd(1.0), _mm_mul_pd(_mm_set1_pd(2.0), r)));
  }
  for (int32_T i{scalarLB}; i <= nx; i++) {
    b[i] = 1.0 - 2.0 * b[i];
  }
  b_st.site = &ic_emlrtRSI;
  nx = b.size(1);
  varargout_1.set_size(&fb_emlrtRTEI, &b_st, 1, b.size(1));
  c_st.site = &jc_emlrtRSI;
  if (b.size(1) > 2147483646) {
    d_st.site = &p_emlrtRSI;
    coder::check_forloop_overflow_error(d_st);
  }
  for (scalarLB = 0; scalarLB < nx; scalarLB++) {
    varargout_1[scalarLB] = muDoubleScalarAbs(b[scalarLB]);
  }
  varargout_1.set_size(&gb_emlrtRTEI, &sp, 1, varargout_1.size(1));
  b_coeffs = coeffs[0];
  nx = varargout_1.size(1) - 1;
  scalarLB = (varargout_1.size(1) / 2) << 1;
  vectorUB = scalarLB - 2;
  for (int32_T i{0}; i <= vectorUB; i += 2) {
    r = _mm_loadu_pd(&varargout_1[i]);
    _mm_storeu_pd(&varargout_1[i], _mm_mul_pd(_mm_set1_pd(b_coeffs), r));
  }
  for (int32_T i{scalarLB}; i <= nx; i++) {
    varargout_1[i] = b_coeffs * varargout_1[i];
  }
  emlrtHeapReferenceStackLeaveFcnR2012b((emlrtConstCTX)&sp);
}

// End of code generation (CalculateT1Map.cpp)
