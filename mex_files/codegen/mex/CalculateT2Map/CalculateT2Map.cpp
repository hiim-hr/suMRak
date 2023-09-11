//
// Student License - for use by students to meet course requirements and
// perform academic research at degree granting institutions only.  Not
// for government, commercial, or other organizational use.
//
// CalculateT2Map.cpp
//
// Code generation for function 'CalculateT2Map'
//

// Include files
#include "CalculateT2Map.h"
#include "CalculateT2Map_data.h"
#include "eml_int_forloop_overflow_check.h"
#include "lsqcurvefit.h"
#include "rt_nonfinite.h"
#include "coder_array.h"
#include "mwmathutil.h"
#include <emmintrin.h>

// Variable Definitions
static emlrtRSInfo emlrtRSI{
    7,                // lineNo
    "CalculateT2Map", // fcnName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT2Map.m" // pathName
};

static emlrtRSInfo b_emlrtRSI{
    14,               // lineNo
    "CalculateT2Map", // fcnName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT2Map.m" // pathName
};

static emlrtRSInfo c_emlrtRSI{
    15,               // lineNo
    "CalculateT2Map", // fcnName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT2Map.m" // pathName
};

static emlrtRSInfo d_emlrtRSI{
    16,               // lineNo
    "CalculateT2Map", // fcnName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT2Map.m" // pathName
};

static emlrtRSInfo e_emlrtRSI{
    15,    // lineNo
    "max", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\lib\\matlab\\datafun\\max.m" // pathName
};

static emlrtRSInfo
    f_emlrtRSI{
        44,         // lineNo
        "minOrMax", // fcnName
        "C:\\Program "
        "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+internal\\minOrMax."
        "m" // pathName
    };

static emlrtRSInfo
    g_emlrtRSI{
        79,        // lineNo
        "maximum", // fcnName
        "C:\\Program "
        "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+internal\\minOrMax."
        "m" // pathName
    };

static emlrtRSInfo h_emlrtRSI{
    190,             // lineNo
    "unaryMinOrMax", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+"
    "internal\\unaryMinOrMax.m" // pathName
};

static emlrtRSInfo i_emlrtRSI{
    901,                    // lineNo
    "maxRealVectorOmitNaN", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+"
    "internal\\unaryMinOrMax.m" // pathName
};

static emlrtRSInfo j_emlrtRSI{
    72,                      // lineNo
    "vectorMinOrMaxInPlace", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+"
    "internal\\vectorMinOrMaxInPlace.m" // pathName
};

static emlrtRSInfo k_emlrtRSI{
    64,                      // lineNo
    "vectorMinOrMaxInPlace", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+"
    "internal\\vectorMinOrMaxInPlace.m" // pathName
};

static emlrtRSInfo l_emlrtRSI{
    113,         // lineNo
    "findFirst", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+"
    "internal\\vectorMinOrMaxInPlace.m" // pathName
};

static emlrtRSInfo n_emlrtRSI{
    130,                        // lineNo
    "minOrMaxRealVectorKernel", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+"
    "internal\\vectorMinOrMaxInPlace.m" // pathName
};

static emlrtRSInfo
    w_emlrtRSI{
        10,    // lineNo
        "exp", // fcnName
        "C:\\Program "
        "Files\\MATLAB\\R2023a\\toolbox\\eml\\lib\\matlab\\elfun\\exp.m" // pathName
    };

static emlrtRSInfo x_emlrtRSI{
    33,                           // lineNo
    "applyScalarFunctionInPlace", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+"
    "internal\\applyScalarFunctionInPlace.m" // pathName
};

static emlrtRSInfo y_emlrtRSI{
    9,                                                    // lineNo
    "@(coeffs,tvalues)coeffs(1)*exp(-tvalues/coeffs(2))", // fcnName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT2Map.m" // pathName
};

static emlrtBCInfo emlrtBCI{
    -1,                         // iFirst
    -1,                         // iLast
    14,                         // lineNo
    41,                         // colNo
    "T2raw_reordered_reshaped", // aName
    "CalculateT2Map",           // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT2Map.m", // pName
    0                         // checkKind
};

static emlrtBCInfo b_emlrtBCI{
    -1,                         // iFirst
    -1,                         // iLast
    15,                         // lineNo
    71,                         // colNo
    "T2raw_reordered_reshaped", // aName
    "CalculateT2Map",           // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT2Map.m", // pName
    0                         // checkKind
};

static emlrtBCInfo c_emlrtBCI{
    -1,                         // iFirst
    -1,                         // iLast
    15,                         // lineNo
    108,                        // colNo
    "T2raw_reordered_reshaped", // aName
    "CalculateT2Map",           // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT2Map.m", // pName
    0                         // checkKind
};

static emlrtBCInfo d_emlrtBCI{
    -1,                         // iFirst
    -1,                         // iLast
    15,                         // lineNo
    38,                         // colNo
    "T2raw_reordered_reshaped", // aName
    "CalculateT2Map",           // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT2Map.m", // pName
    0                         // checkKind
};

static emlrtECInfo emlrtECI{
    -1,               // nDims
    15,               // lineNo
    13,               // colNo
    "CalculateT2Map", // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT2Map.m" // pName
};

static emlrtBCInfo e_emlrtBCI{
    -1,                         // iFirst
    -1,                         // iLast
    16,                         // lineNo
    85,                         // colNo
    "T2raw_reordered_reshaped", // aName
    "CalculateT2Map",           // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT2Map.m", // pName
    0                         // checkKind
};

static emlrtBCInfo f_emlrtBCI{
    -1,               // iFirst
    -1,               // iLast
    16,               // lineNo
    20,               // colNo
    "coeffs",         // aName
    "CalculateT2Map", // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT2Map.m", // pName
    0                         // checkKind
};

static emlrtRTEInfo b_emlrtRTEI{
    134,             // lineNo
    27,              // colNo
    "unaryMinOrMax", // fName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+"
    "internal\\unaryMinOrMax.m" // pName
};

static emlrtRTEInfo n_emlrtRTEI{
    11,               // lineNo
    5,                // colNo
    "CalculateT2Map", // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT2Map.m" // pName
};

static emlrtRTEInfo o_emlrtRTEI{
    14,               // lineNo
    16,               // colNo
    "CalculateT2Map", // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT2Map.m" // pName
};

static emlrtRTEInfo p_emlrtRTEI{
    15,               // lineNo
    83,               // colNo
    "CalculateT2Map", // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT2Map.m" // pName
};

static emlrtRTEInfo q_emlrtRTEI{
    15,               // lineNo
    46,               // colNo
    "CalculateT2Map", // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT2Map.m" // pName
};

static emlrtRTEInfo r_emlrtRTEI{
    16,               // lineNo
    60,               // colNo
    "CalculateT2Map", // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT2Map.m" // pName
};

static emlrtRTEInfo u_emlrtRTEI{
    9,                // lineNo
    42,               // colNo
    "CalculateT2Map", // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT2Map.m" // pName
};

static emlrtRTEInfo v_emlrtRTEI{
    9,                // lineNo
    11,               // colNo
    "CalculateT2Map", // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT2Map.m" // pName
};

// Function Definitions
void CalculateT2Map(const emlrtStack *sp,
                    coder::array<real_T, 2U> &T2raw_reordered_reshaped,
                    const coder::array<real_T, 2U> &tvalues,
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
  int32_T n;
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
  // UNTITLED2 Summary of this function goes here
  //    Detailed explanation goes here
  st.site = &emlrtRSI;
  b_st.site = &e_emlrtRSI;
  c_st.site = &f_emlrtRSI;
  d_st.site = &g_emlrtRSI;
  if (tvalues.size(1) < 1) {
    emlrtErrorWithMessageIdR2018a(&d_st, &b_emlrtRTEI,
                                  "Coder:toolbox:eml_min_or_max_varDimZero",
                                  "Coder:toolbox:eml_min_or_max_varDimZero", 0);
  }
  e_st.site = &h_emlrtRSI;
  f_st.site = &i_emlrtRSI;
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
    g_st.site = &k_emlrtRSI;
    if (!muDoubleScalarIsNaN(tvalues[0])) {
      idx = 1;
    } else {
      idx = 0;
      h_st.site = &l_emlrtRSI;
      if (tvalues.size(1) > 2147483646) {
        i_st.site = &m_emlrtRSI;
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
      g_st.site = &j_emlrtRSI;
      tmax = tvalues[idx - 1];
      a = idx + 1;
      h_st.site = &n_emlrtRSI;
      if ((idx + 1 <= tvalues.size(1)) && (tvalues.size(1) > 2147483646)) {
        i_st.site = &m_emlrtRSI;
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
  if ((T2raw_reordered_reshaped.size(0) == 0) ||
      (T2raw_reordered_reshaped.size(1) == 0)) {
    n = 0;
  } else {
    last = T2raw_reordered_reshaped.size(0);
    a = T2raw_reordered_reshaped.size(1);
    n = muIntScalarMax_sint32(last, a);
  }
  coeffs.set_size(&n_emlrtRTEI, sp, n, 2);
  last = n << 1;
  for (idx = 0; idx < last; idx++) {
    coeffs[idx] = 0.0;
  }
  if ((T2raw_reordered_reshaped.size(0) == 0) ||
      (T2raw_reordered_reshaped.size(1) == 0)) {
    n = 0;
  } else {
    last = T2raw_reordered_reshaped.size(0);
    a = T2raw_reordered_reshaped.size(1);
    n = muIntScalarMax_sint32(last, a);
  }
  for (int32_T br{0}; br < n; br++) {
    real_T ex;
    st.site = &b_emlrtRSI;
    if (br + 1 > T2raw_reordered_reshaped.size(0)) {
      emlrtDynamicBoundsCheckR2012b(br + 1, 1, T2raw_reordered_reshaped.size(0),
                                    &emlrtBCI, &st);
    }
    varargin_1.set_size(&o_emlrtRTEI, &st, 1, T2raw_reordered_reshaped.size(1));
    last = T2raw_reordered_reshaped.size(1);
    for (idx = 0; idx < last; idx++) {
      varargin_1[idx] =
          T2raw_reordered_reshaped[br + T2raw_reordered_reshaped.size(0) * idx];
    }
    b_st.site = &e_emlrtRSI;
    c_st.site = &f_emlrtRSI;
    d_st.site = &g_emlrtRSI;
    if (T2raw_reordered_reshaped.size(1) < 1) {
      emlrtErrorWithMessageIdR2018a(
          &d_st, &b_emlrtRTEI, "Coder:toolbox:eml_min_or_max_varDimZero",
          "Coder:toolbox:eml_min_or_max_varDimZero", 0);
    }
    e_st.site = &h_emlrtRSI;
    f_st.site = &i_emlrtRSI;
    last = T2raw_reordered_reshaped.size(1);
    if (T2raw_reordered_reshaped.size(1) <= 2) {
      if (T2raw_reordered_reshaped.size(1) == 1) {
        ex = T2raw_reordered_reshaped[br];
      } else if ((T2raw_reordered_reshaped[br] <
                  T2raw_reordered_reshaped[br +
                                           T2raw_reordered_reshaped.size(0)]) ||
                 (muDoubleScalarIsNaN(T2raw_reordered_reshaped[br]) &&
                  (!muDoubleScalarIsNaN(
                      T2raw_reordered_reshaped[br + T2raw_reordered_reshaped
                                                        .size(0)])))) {
        ex = T2raw_reordered_reshaped[br + T2raw_reordered_reshaped.size(0)];
      } else {
        ex = T2raw_reordered_reshaped[br];
      }
    } else {
      g_st.site = &k_emlrtRSI;
      if (!muDoubleScalarIsNaN(T2raw_reordered_reshaped[br])) {
        idx = 1;
      } else {
        idx = 0;
        h_st.site = &l_emlrtRSI;
        if (T2raw_reordered_reshaped.size(1) > 2147483646) {
          i_st.site = &m_emlrtRSI;
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
        ex = T2raw_reordered_reshaped[br];
      } else {
        g_st.site = &j_emlrtRSI;
        ex = T2raw_reordered_reshaped[br + T2raw_reordered_reshaped.size(0) *
                                               (idx - 1)];
        a = idx + 1;
        h_st.site = &n_emlrtRSI;
        if ((idx + 1 <= T2raw_reordered_reshaped.size(1)) &&
            (T2raw_reordered_reshaped.size(1) > 2147483646)) {
          i_st.site = &m_emlrtRSI;
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
      if (br + 1 > T2raw_reordered_reshaped.size(0)) {
        emlrtDynamicBoundsCheckR2012b(br + 1, 1,
                                      T2raw_reordered_reshaped.size(0),
                                      &d_emlrtBCI, (emlrtConstCTX)sp);
      }
      st.site = &c_emlrtRSI;
      if (br + 1 > T2raw_reordered_reshaped.size(0)) {
        emlrtDynamicBoundsCheckR2012b(
            br + 1, 1, T2raw_reordered_reshaped.size(0), &c_emlrtBCI, &st);
      }
      varargin_1.set_size(&p_emlrtRTEI, &st, 1,
                          T2raw_reordered_reshaped.size(1));
      last = T2raw_reordered_reshaped.size(1);
      for (idx = 0; idx < last; idx++) {
        varargin_1[idx] =
            T2raw_reordered_reshaped[br +
                                     T2raw_reordered_reshaped.size(0) * idx];
      }
      b_st.site = &e_emlrtRSI;
      c_st.site = &f_emlrtRSI;
      d_st.site = &g_emlrtRSI;
      e_st.site = &h_emlrtRSI;
      f_st.site = &i_emlrtRSI;
      last = T2raw_reordered_reshaped.size(1);
      if (T2raw_reordered_reshaped.size(1) <= 2) {
        if (T2raw_reordered_reshaped.size(1) == 1) {
          ex = T2raw_reordered_reshaped[br];
        } else if ((T2raw_reordered_reshaped[br] <
                    T2raw_reordered_reshaped[br + T2raw_reordered_reshaped.size(
                                                      0)]) ||
                   (muDoubleScalarIsNaN(T2raw_reordered_reshaped[br]) &&
                    (!muDoubleScalarIsNaN(
                        T2raw_reordered_reshaped[br + T2raw_reordered_reshaped
                                                          .size(0)])))) {
          ex = T2raw_reordered_reshaped[br + T2raw_reordered_reshaped.size(0)];
        } else {
          ex = T2raw_reordered_reshaped[br];
        }
      } else {
        g_st.site = &k_emlrtRSI;
        if (!muDoubleScalarIsNaN(T2raw_reordered_reshaped[br])) {
          idx = 1;
        } else {
          idx = 0;
          h_st.site = &l_emlrtRSI;
          if (T2raw_reordered_reshaped.size(1) > 2147483646) {
            i_st.site = &m_emlrtRSI;
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
          ex = T2raw_reordered_reshaped[br];
        } else {
          g_st.site = &j_emlrtRSI;
          ex = T2raw_reordered_reshaped[br + T2raw_reordered_reshaped.size(0) *
                                                 (idx - 1)];
          a = idx + 1;
          h_st.site = &n_emlrtRSI;
          if ((idx + 1 <= T2raw_reordered_reshaped.size(1)) &&
              (T2raw_reordered_reshaped.size(1) > 2147483646)) {
            i_st.site = &m_emlrtRSI;
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
      if (br + 1 > T2raw_reordered_reshaped.size(0)) {
        emlrtDynamicBoundsCheckR2012b(br + 1, 1,
                                      T2raw_reordered_reshaped.size(0),
                                      &b_emlrtBCI, (emlrtConstCTX)sp);
      }
      varargin_1.set_size(&q_emlrtRTEI, sp, 1,
                          T2raw_reordered_reshaped.size(1));
      last = T2raw_reordered_reshaped.size(1);
      for (idx = 0; idx < last; idx++) {
        varargin_1[idx] =
            T2raw_reordered_reshaped[br +
                                     T2raw_reordered_reshaped.size(0) * idx] /
            ex;
      }
      iv[0] = 1;
      iv[1] = T2raw_reordered_reshaped.size(1);
      emlrtSubAssignSizeCheckR2012b(&iv[0], 2, varargin_1.size(), 2, &emlrtECI,
                                    (emlrtCTX)sp);
      last = varargin_1.size(1);
      for (idx = 0; idx < last; idx++) {
        T2raw_reordered_reshaped[br + T2raw_reordered_reshaped.size(0) * idx] =
            varargin_1[idx];
      }
      if (br + 1 > T2raw_reordered_reshaped.size(0)) {
        emlrtDynamicBoundsCheckR2012b(br + 1, 1,
                                      T2raw_reordered_reshaped.size(0),
                                      &e_emlrtBCI, (emlrtConstCTX)sp);
      }
      varargin_1.set_size(&r_emlrtRTEI, sp, 1,
                          T2raw_reordered_reshaped.size(1));
      last = T2raw_reordered_reshaped.size(1);
      for (idx = 0; idx < last; idx++) {
        varargin_1[idx] =
            T2raw_reordered_reshaped[br +
                                     T2raw_reordered_reshaped.size(0) * idx];
      }
      real_T dv[2];
      dv[0] = 1.0;
      dv[1] = 2.0 * tmax;
      st.site = &d_emlrtRSI;
      coder::lsqcurvefit(st, tvalues, varargin_1, dv, dv1);
      if (br + 1 > coeffs.size(0)) {
        emlrtDynamicBoundsCheckR2012b(br + 1, 1, coeffs.size(0), &f_emlrtBCI,
                                      (emlrtConstCTX)sp);
      }
      coeffs[br] = dv1[0];
      coeffs[br + coeffs.size(0)] = dv1[1];
    }
    if (*emlrtBreakCheckR2012bFlagVar != 0) {
      emlrtBreakCheckR2012b((emlrtConstCTX)sp);
    }
  }
  emlrtHeapReferenceStackLeaveFcnR2012b((emlrtConstCTX)sp);
}

void CalculateT2Map_anonFcn1(const emlrtStack &sp, const real_T coeffs[2],
                             const coder::array<real_T, 2U> &tvalues,
                             coder::array<real_T, 2U> &varargout_1)
{
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
  st.site = &y_emlrtRSI;
  b_st.prev = &st;
  b_st.tls = st.tls;
  c_st.prev = &b_st;
  c_st.tls = b_st.tls;
  d_st.prev = &c_st;
  d_st.tls = c_st.tls;
  varargout_1.set_size(&u_emlrtRTEI, &st, 1, tvalues.size(1));
  b_coeffs = coeffs[1];
  nx = tvalues.size(1);
  scalarLB = (tvalues.size(1) / 2) << 1;
  vectorUB = scalarLB - 2;
  for (int32_T i{0}; i <= vectorUB; i += 2) {
    _mm_storeu_pd(
        &varargout_1[i],
        _mm_div_pd(_mm_mul_pd(_mm_loadu_pd(&tvalues[i]), _mm_set1_pd(-1.0)),
                   _mm_set1_pd(b_coeffs)));
  }
  for (int32_T i{scalarLB}; i < nx; i++) {
    varargout_1[i] = -tvalues[i] / b_coeffs;
  }
  b_st.site = &w_emlrtRSI;
  nx = varargout_1.size(1);
  c_st.site = &x_emlrtRSI;
  if (varargout_1.size(1) > 2147483646) {
    d_st.site = &m_emlrtRSI;
    coder::check_forloop_overflow_error(d_st);
  }
  for (scalarLB = 0; scalarLB < nx; scalarLB++) {
    varargout_1[scalarLB] = muDoubleScalarExp(varargout_1[scalarLB]);
  }
  varargout_1.set_size(&v_emlrtRTEI, &sp, 1, varargout_1.size(1));
  b_coeffs = coeffs[0];
  nx = varargout_1.size(1) - 1;
  scalarLB = (varargout_1.size(1) / 2) << 1;
  vectorUB = scalarLB - 2;
  for (int32_T i{0}; i <= vectorUB; i += 2) {
    __m128d r;
    r = _mm_loadu_pd(&varargout_1[i]);
    _mm_storeu_pd(&varargout_1[i], _mm_mul_pd(_mm_set1_pd(b_coeffs), r));
  }
  for (int32_T i{scalarLB}; i <= nx; i++) {
    varargout_1[i] = b_coeffs * varargout_1[i];
  }
}

// End of code generation (CalculateT2Map.cpp)
