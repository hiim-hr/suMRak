//
// Student License - for use by students to meet course requirements and
// perform academic research at degree granting institutions only.  Not
// for government, commercial, or other organizational use.
//
// CalculateASLMap.cpp
//
// Code generation for function 'CalculateASLMap'
//

// Include files
#include "CalculateASLMap.h"
#include "CalculateASLMap_data.h"
#include "eml_int_forloop_overflow_check.h"
#include "lsqcurvefit.h"
#include "rt_nonfinite.h"
#include "coder_array.h"
#include "mwmathutil.h"
#include <emmintrin.h>

// Variable Definitions
static emlrtRSInfo emlrtRSI{
    5,                 // lineNo
    "CalculateASLMap", // fcnName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-tool\\maps_mex_"
    "files\\CalculateASLMap.m" // pathName
};

static emlrtRSInfo b_emlrtRSI{
    15,                // lineNo
    "CalculateASLMap", // fcnName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-tool\\maps_mex_"
    "files\\CalculateASLMap.m" // pathName
};

static emlrtRSInfo c_emlrtRSI{
    16,                // lineNo
    "CalculateASLMap", // fcnName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-tool\\maps_mex_"
    "files\\CalculateASLMap.m" // pathName
};

static emlrtRSInfo d_emlrtRSI{
    17,                // lineNo
    "CalculateASLMap", // fcnName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-tool\\maps_mex_"
    "files\\CalculateASLMap.m" // pathName
};

static emlrtRSInfo e_emlrtRSI{
    23,                // lineNo
    "CalculateASLMap", // fcnName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-tool\\maps_mex_"
    "files\\CalculateASLMap.m" // pathName
};

static emlrtRSInfo f_emlrtRSI{
    24,                // lineNo
    "CalculateASLMap", // fcnName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-tool\\maps_mex_"
    "files\\CalculateASLMap.m" // pathName
};

static emlrtRSInfo g_emlrtRSI{
    25,                // lineNo
    "CalculateASLMap", // fcnName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-tool\\maps_mex_"
    "files\\CalculateASLMap.m" // pathName
};

static emlrtRSInfo h_emlrtRSI{
    15,    // lineNo
    "max", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\lib\\matlab\\datafun\\max.m" // pathName
};

static emlrtRSInfo
    i_emlrtRSI{
        44,         // lineNo
        "minOrMax", // fcnName
        "C:\\Program "
        "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+internal\\minOrMax."
        "m" // pathName
    };

static emlrtRSInfo
    j_emlrtRSI{
        79,        // lineNo
        "maximum", // fcnName
        "C:\\Program "
        "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+internal\\minOrMax."
        "m" // pathName
    };

static emlrtRSInfo k_emlrtRSI{
    190,             // lineNo
    "unaryMinOrMax", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+"
    "internal\\unaryMinOrMax.m" // pathName
};

static emlrtRSInfo l_emlrtRSI{
    901,                    // lineNo
    "maxRealVectorOmitNaN", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+"
    "internal\\unaryMinOrMax.m" // pathName
};

static emlrtRSInfo m_emlrtRSI{
    72,                      // lineNo
    "vectorMinOrMaxInPlace", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+"
    "internal\\vectorMinOrMaxInPlace.m" // pathName
};

static emlrtRSInfo n_emlrtRSI{
    64,                      // lineNo
    "vectorMinOrMaxInPlace", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+"
    "internal\\vectorMinOrMaxInPlace.m" // pathName
};

static emlrtRSInfo o_emlrtRSI{
    113,         // lineNo
    "findFirst", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+"
    "internal\\vectorMinOrMaxInPlace.m" // pathName
};

static emlrtRSInfo q_emlrtRSI{
    130,                        // lineNo
    "minOrMaxRealVectorKernel", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+"
    "internal\\vectorMinOrMaxInPlace.m" // pathName
};

static emlrtRSInfo
    ab_emlrtRSI{
        10,    // lineNo
        "exp", // fcnName
        "C:\\Program "
        "Files\\MATLAB\\R2023a\\toolbox\\eml\\lib\\matlab\\elfun\\exp.m" // pathName
    };

static emlrtRSInfo bb_emlrtRSI{
    33,                           // lineNo
    "applyScalarFunctionInPlace", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+"
    "internal\\applyScalarFunctionInPlace.m" // pathName
};

static emlrtRSInfo cb_emlrtRSI{
    7,                                                               // lineNo
    "@(coeffs,ivalues)coeffs(1)*abs((1-2*exp(-ivalues/coeffs(2))))", // fcnName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-tool\\maps_mex_"
    "files\\CalculateASLMap.m" // pathName
};

static emlrtRSInfo
    db_emlrtRSI{
        18,    // lineNo
        "abs", // fcnName
        "C:\\Program "
        "Files\\MATLAB\\R2023a\\toolbox\\eml\\lib\\matlab\\elfun\\abs.m" // pathName
    };

static emlrtRSInfo eb_emlrtRSI{
    74,                    // lineNo
    "applyScalarFunction", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+"
    "internal\\applyScalarFunction.m" // pathName
};

static emlrtBCInfo emlrtBCI{
    -1,                // iFirst
    -1,                // iLast
    31,                // lineNo
    14,                // colNo
    "perf",            // aName
    "CalculateASLMap", // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-tool\\maps_mex_"
    "files\\CalculateASLMap.m", // pName
    0                           // checkKind
};

static emlrtBCInfo b_emlrtBCI{
    -1,                           // iFirst
    -1,                           // iLast
    15,                           // lineNo
    43,                           // colNo
    "T1rawSS_reordered_reshaped", // aName
    "CalculateASLMap",            // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-tool\\maps_mex_"
    "files\\CalculateASLMap.m", // pName
    0                           // checkKind
};

static emlrtBCInfo c_emlrtBCI{
    -1,                           // iFirst
    -1,                           // iLast
    16,                           // lineNo
    75,                           // colNo
    "T1rawSS_reordered_reshaped", // aName
    "CalculateASLMap",            // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-tool\\maps_mex_"
    "files\\CalculateASLMap.m", // pName
    0                           // checkKind
};

static emlrtBCInfo d_emlrtBCI{
    -1,                           // iFirst
    -1,                           // iLast
    16,                           // lineNo
    114,                          // colNo
    "T1rawSS_reordered_reshaped", // aName
    "CalculateASLMap",            // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-tool\\maps_mex_"
    "files\\CalculateASLMap.m", // pName
    0                           // checkKind
};

static emlrtBCInfo e_emlrtBCI{
    -1,                           // iFirst
    -1,                           // iLast
    16,                           // lineNo
    40,                           // colNo
    "T1rawSS_reordered_reshaped", // aName
    "CalculateASLMap",            // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-tool\\maps_mex_"
    "files\\CalculateASLMap.m", // pName
    0                           // checkKind
};

static emlrtECInfo emlrtECI{
    -1,                // nDims
    16,                // lineNo
    13,                // colNo
    "CalculateASLMap", // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-tool\\maps_mex_"
    "files\\CalculateASLMap.m" // pName
};

static emlrtBCInfo f_emlrtBCI{
    -1,                           // iFirst
    -1,                           // iLast
    17,                           // lineNo
    89,                           // colNo
    "T1rawSS_reordered_reshaped", // aName
    "CalculateASLMap",            // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-tool\\maps_mex_"
    "files\\CalculateASLMap.m", // pName
    0                           // checkKind
};

static emlrtBCInfo g_emlrtBCI{
    -1,                           // iFirst
    -1,                           // iLast
    23,                           // lineNo
    43,                           // colNo
    "T1rawNS_reordered_reshaped", // aName
    "CalculateASLMap",            // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-tool\\maps_mex_"
    "files\\CalculateASLMap.m", // pName
    0                           // checkKind
};

static emlrtBCInfo h_emlrtBCI{
    -1,                           // iFirst
    -1,                           // iLast
    24,                           // lineNo
    75,                           // colNo
    "T1rawNS_reordered_reshaped", // aName
    "CalculateASLMap",            // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-tool\\maps_mex_"
    "files\\CalculateASLMap.m", // pName
    0                           // checkKind
};

static emlrtBCInfo i_emlrtBCI{
    -1,                           // iFirst
    -1,                           // iLast
    24,                           // lineNo
    114,                          // colNo
    "T1rawNS_reordered_reshaped", // aName
    "CalculateASLMap",            // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-tool\\maps_mex_"
    "files\\CalculateASLMap.m", // pName
    0                           // checkKind
};

static emlrtBCInfo j_emlrtBCI{
    -1,                           // iFirst
    -1,                           // iLast
    24,                           // lineNo
    40,                           // colNo
    "T1rawNS_reordered_reshaped", // aName
    "CalculateASLMap",            // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-tool\\maps_mex_"
    "files\\CalculateASLMap.m", // pName
    0                           // checkKind
};

static emlrtECInfo b_emlrtECI{
    -1,                // nDims
    24,                // lineNo
    13,                // colNo
    "CalculateASLMap", // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-tool\\maps_mex_"
    "files\\CalculateASLMap.m" // pName
};

static emlrtBCInfo k_emlrtBCI{
    -1,                           // iFirst
    -1,                           // iLast
    25,                           // lineNo
    89,                           // colNo
    "T1rawNS_reordered_reshaped", // aName
    "CalculateASLMap",            // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-tool\\maps_mex_"
    "files\\CalculateASLMap.m", // pName
    0                           // checkKind
};

static emlrtBCInfo l_emlrtBCI{
    -1,                // iFirst
    -1,                // iLast
    25,                // lineNo
    22,                // colNo
    "coeffsNS",        // aName
    "CalculateASLMap", // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-tool\\maps_mex_"
    "files\\CalculateASLMap.m", // pName
    0                           // checkKind
};

static emlrtBCInfo m_emlrtBCI{
    -1,                // iFirst
    -1,                // iLast
    31,                // lineNo
    40,                // colNo
    "coeffsNS",        // aName
    "CalculateASLMap", // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-tool\\maps_mex_"
    "files\\CalculateASLMap.m", // pName
    0                           // checkKind
};

static emlrtBCInfo n_emlrtBCI{
    -1,                // iFirst
    -1,                // iLast
    17,                // lineNo
    22,                // colNo
    "coeffsSS",        // aName
    "CalculateASLMap", // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-tool\\maps_mex_"
    "files\\CalculateASLMap.m", // pName
    0                           // checkKind
};

static emlrtBCInfo o_emlrtBCI{
    -1,                // iFirst
    -1,                // iLast
    31,                // lineNo
    72,                // colNo
    "coeffsSS",        // aName
    "CalculateASLMap", // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-tool\\maps_mex_"
    "files\\CalculateASLMap.m", // pName
    0                           // checkKind
};

static emlrtBCInfo p_emlrtBCI{
    -1,                // iFirst
    -1,                // iLast
    31,                // lineNo
    93,                // colNo
    "coeffsNS",        // aName
    "CalculateASLMap", // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-tool\\maps_mex_"
    "files\\CalculateASLMap.m", // pName
    0                           // checkKind
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
    9,                 // lineNo
    5,                 // colNo
    "CalculateASLMap", // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-tool\\maps_mex_"
    "files\\CalculateASLMap.m" // pName
};

static emlrtRTEInfo o_emlrtRTEI{
    10,                // lineNo
    5,                 // colNo
    "CalculateASLMap", // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-tool\\maps_mex_"
    "files\\CalculateASLMap.m" // pName
};

static emlrtRTEInfo p_emlrtRTEI{
    11,                // lineNo
    5,                 // colNo
    "CalculateASLMap", // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-tool\\maps_mex_"
    "files\\CalculateASLMap.m" // pName
};

static emlrtRTEInfo q_emlrtRTEI{
    15,                // lineNo
    16,                // colNo
    "CalculateASLMap", // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-tool\\maps_mex_"
    "files\\CalculateASLMap.m" // pName
};

static emlrtRTEInfo r_emlrtRTEI{
    16,                // lineNo
    87,                // colNo
    "CalculateASLMap", // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-tool\\maps_mex_"
    "files\\CalculateASLMap.m" // pName
};

static emlrtRTEInfo s_emlrtRTEI{
    16,                // lineNo
    48,                // colNo
    "CalculateASLMap", // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-tool\\maps_mex_"
    "files\\CalculateASLMap.m" // pName
};

static emlrtRTEInfo t_emlrtRTEI{
    17,                // lineNo
    62,                // colNo
    "CalculateASLMap", // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-tool\\maps_mex_"
    "files\\CalculateASLMap.m" // pName
};

static emlrtRTEInfo u_emlrtRTEI{
    23,                // lineNo
    16,                // colNo
    "CalculateASLMap", // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-tool\\maps_mex_"
    "files\\CalculateASLMap.m" // pName
};

static emlrtRTEInfo v_emlrtRTEI{
    24,                // lineNo
    87,                // colNo
    "CalculateASLMap", // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-tool\\maps_mex_"
    "files\\CalculateASLMap.m" // pName
};

static emlrtRTEInfo w_emlrtRTEI{
    24,                // lineNo
    48,                // colNo
    "CalculateASLMap", // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-tool\\maps_mex_"
    "files\\CalculateASLMap.m" // pName
};

static emlrtRTEInfo x_emlrtRTEI{
    25,                // lineNo
    62,                // colNo
    "CalculateASLMap", // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-tool\\maps_mex_"
    "files\\CalculateASLMap.m" // pName
};

static emlrtRTEInfo bb_emlrtRTEI{
    7,                 // lineNo
    51,                // colNo
    "CalculateASLMap", // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-tool\\maps_mex_"
    "files\\CalculateASLMap.m" // pName
};

static emlrtRTEInfo cb_emlrtRTEI{
    7,                 // lineNo
    43,                // colNo
    "CalculateASLMap", // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-tool\\maps_mex_"
    "files\\CalculateASLMap.m" // pName
};

static emlrtRTEInfo db_emlrtRTEI{
    30,                    // lineNo
    21,                    // colNo
    "applyScalarFunction", // fName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+"
    "internal\\applyScalarFunction.m" // pName
};

static emlrtRTEInfo eb_emlrtRTEI{
    7,                 // lineNo
    11,                // colNo
    "CalculateASLMap", // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-tool\\maps_mex_"
    "files\\CalculateASLMap.m" // pName
};

// Function Definitions
void CalculateASLMap(const emlrtStack *sp,
                     coder::array<real_T, 2U> &T1rawSS_reordered_reshaped,
                     coder::array<real_T, 2U> &T1rawNS_reordered_reshaped,
                     const coder::array<real_T, 2U> &tvalues,
                     const coder::array<real_T, 2U> &ivalues, real_T T1blood,
                     coder::array<real_T, 1U> &perf)
{
  coder::array<real_T, 2U> coeffsNS;
  coder::array<real_T, 2U> coeffsSS;
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
  real_T dv[2];
  real_T dv1[2];
  real_T d;
  real_T ex;
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
  // UNTITLED3 Summary of this function goes here
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
  if ((T1rawSS_reordered_reshaped.size(0) == 0) ||
      (T1rawSS_reordered_reshaped.size(1) == 0)) {
    n = 0;
  } else {
    last = T1rawSS_reordered_reshaped.size(0);
    a = T1rawSS_reordered_reshaped.size(1);
    n = muIntScalarMax_sint32(last, a);
  }
  coeffsSS.set_size(&n_emlrtRTEI, sp, n, 2);
  last = n << 1;
  for (idx = 0; idx < last; idx++) {
    coeffsSS[idx] = 0.0;
  }
  if ((T1rawNS_reordered_reshaped.size(0) == 0) ||
      (T1rawNS_reordered_reshaped.size(1) == 0)) {
    n = 0;
  } else {
    last = T1rawNS_reordered_reshaped.size(0);
    a = T1rawNS_reordered_reshaped.size(1);
    n = muIntScalarMax_sint32(last, a);
  }
  coeffsNS.set_size(&o_emlrtRTEI, sp, n, 2);
  last = n << 1;
  for (idx = 0; idx < last; idx++) {
    coeffsNS[idx] = 0.0;
  }
  if ((T1rawNS_reordered_reshaped.size(0) == 0) ||
      (T1rawNS_reordered_reshaped.size(1) == 0)) {
    n = 0;
  } else {
    last = T1rawNS_reordered_reshaped.size(0);
    a = T1rawNS_reordered_reshaped.size(1);
    n = muIntScalarMax_sint32(last, a);
  }
  perf.set_size(&p_emlrtRTEI, sp, n);
  for (idx = 0; idx < n; idx++) {
    perf[idx] = 0.0;
  }
  if ((T1rawSS_reordered_reshaped.size(0) == 0) ||
      (T1rawSS_reordered_reshaped.size(1) == 0)) {
    n = 0;
  } else {
    last = T1rawSS_reordered_reshaped.size(0);
    a = T1rawSS_reordered_reshaped.size(1);
    n = muIntScalarMax_sint32(last, a);
  }
  for (int32_T br{0}; br < n; br++) {
    st.site = &b_emlrtRSI;
    if (br + 1 > T1rawSS_reordered_reshaped.size(0)) {
      emlrtDynamicBoundsCheckR2012b(
          br + 1, 1, T1rawSS_reordered_reshaped.size(0), &b_emlrtBCI, &st);
    }
    varargin_1.set_size(&q_emlrtRTEI, &st, 1,
                        T1rawSS_reordered_reshaped.size(1));
    last = T1rawSS_reordered_reshaped.size(1);
    for (idx = 0; idx < last; idx++) {
      varargin_1[idx] =
          T1rawSS_reordered_reshaped[br +
                                     T1rawSS_reordered_reshaped.size(0) * idx];
    }
    b_st.site = &h_emlrtRSI;
    c_st.site = &i_emlrtRSI;
    d_st.site = &j_emlrtRSI;
    if (T1rawSS_reordered_reshaped.size(1) < 1) {
      emlrtErrorWithMessageIdR2018a(
          &d_st, &b_emlrtRTEI, "Coder:toolbox:eml_min_or_max_varDimZero",
          "Coder:toolbox:eml_min_or_max_varDimZero", 0);
    }
    e_st.site = &k_emlrtRSI;
    f_st.site = &l_emlrtRSI;
    last = T1rawSS_reordered_reshaped.size(1);
    if (T1rawSS_reordered_reshaped.size(1) <= 2) {
      if (T1rawSS_reordered_reshaped.size(1) == 1) {
        ex = T1rawSS_reordered_reshaped[br];
      } else if ((T1rawSS_reordered_reshaped[br] <
                  T1rawSS_reordered_reshaped[br + T1rawSS_reordered_reshaped
                                                      .size(0)]) ||
                 (muDoubleScalarIsNaN(T1rawSS_reordered_reshaped[br]) &&
                  (!muDoubleScalarIsNaN(
                      T1rawSS_reordered_reshaped[br + T1rawSS_reordered_reshaped
                                                          .size(0)])))) {
        ex =
            T1rawSS_reordered_reshaped[br + T1rawSS_reordered_reshaped.size(0)];
      } else {
        ex = T1rawSS_reordered_reshaped[br];
      }
    } else {
      g_st.site = &n_emlrtRSI;
      if (!muDoubleScalarIsNaN(T1rawSS_reordered_reshaped[br])) {
        idx = 1;
      } else {
        idx = 0;
        h_st.site = &o_emlrtRSI;
        if (T1rawSS_reordered_reshaped.size(1) > 2147483646) {
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
        ex = T1rawSS_reordered_reshaped[br];
      } else {
        g_st.site = &m_emlrtRSI;
        ex =
            T1rawSS_reordered_reshaped[br + T1rawSS_reordered_reshaped.size(0) *
                                                (idx - 1)];
        a = idx + 1;
        h_st.site = &q_emlrtRSI;
        if ((idx + 1 <= T1rawSS_reordered_reshaped.size(1)) &&
            (T1rawSS_reordered_reshaped.size(1) > 2147483646)) {
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
      if (br + 1 > T1rawSS_reordered_reshaped.size(0)) {
        emlrtDynamicBoundsCheckR2012b(br + 1, 1,
                                      T1rawSS_reordered_reshaped.size(0),
                                      &e_emlrtBCI, (emlrtConstCTX)sp);
      }
      st.site = &c_emlrtRSI;
      if (br + 1 > T1rawSS_reordered_reshaped.size(0)) {
        emlrtDynamicBoundsCheckR2012b(
            br + 1, 1, T1rawSS_reordered_reshaped.size(0), &d_emlrtBCI, &st);
      }
      varargin_1.set_size(&r_emlrtRTEI, &st, 1,
                          T1rawSS_reordered_reshaped.size(1));
      last = T1rawSS_reordered_reshaped.size(1);
      for (idx = 0; idx < last; idx++) {
        varargin_1[idx] =
            T1rawSS_reordered_reshaped[br + T1rawSS_reordered_reshaped.size(0) *
                                                idx];
      }
      b_st.site = &h_emlrtRSI;
      c_st.site = &i_emlrtRSI;
      d_st.site = &j_emlrtRSI;
      e_st.site = &k_emlrtRSI;
      f_st.site = &l_emlrtRSI;
      last = T1rawSS_reordered_reshaped.size(1);
      if (T1rawSS_reordered_reshaped.size(1) <= 2) {
        if (T1rawSS_reordered_reshaped.size(1) == 1) {
          ex = T1rawSS_reordered_reshaped[br];
        } else if ((T1rawSS_reordered_reshaped[br] <
                    T1rawSS_reordered_reshaped[br + T1rawSS_reordered_reshaped
                                                        .size(0)]) ||
                   (muDoubleScalarIsNaN(T1rawSS_reordered_reshaped[br]) &&
                    (!muDoubleScalarIsNaN(
                        T1rawSS_reordered_reshaped
                            [br + T1rawSS_reordered_reshaped.size(0)])))) {
          ex = T1rawSS_reordered_reshaped[br +
                                          T1rawSS_reordered_reshaped.size(0)];
        } else {
          ex = T1rawSS_reordered_reshaped[br];
        }
      } else {
        g_st.site = &n_emlrtRSI;
        if (!muDoubleScalarIsNaN(T1rawSS_reordered_reshaped[br])) {
          idx = 1;
        } else {
          idx = 0;
          h_st.site = &o_emlrtRSI;
          if (T1rawSS_reordered_reshaped.size(1) > 2147483646) {
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
          ex = T1rawSS_reordered_reshaped[br];
        } else {
          g_st.site = &m_emlrtRSI;
          ex = T1rawSS_reordered_reshaped[br +
                                          T1rawSS_reordered_reshaped.size(0) *
                                              (idx - 1)];
          a = idx + 1;
          h_st.site = &q_emlrtRSI;
          if ((idx + 1 <= T1rawSS_reordered_reshaped.size(1)) &&
              (T1rawSS_reordered_reshaped.size(1) > 2147483646)) {
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
      if (br + 1 > T1rawSS_reordered_reshaped.size(0)) {
        emlrtDynamicBoundsCheckR2012b(br + 1, 1,
                                      T1rawSS_reordered_reshaped.size(0),
                                      &c_emlrtBCI, (emlrtConstCTX)sp);
      }
      varargin_1.set_size(&s_emlrtRTEI, sp, 1,
                          T1rawSS_reordered_reshaped.size(1));
      last = T1rawSS_reordered_reshaped.size(1);
      for (idx = 0; idx < last; idx++) {
        varargin_1[idx] =
            T1rawSS_reordered_reshaped[br + T1rawSS_reordered_reshaped.size(0) *
                                                idx] /
            ex;
      }
      iv[0] = 1;
      iv[1] = T1rawSS_reordered_reshaped.size(1);
      emlrtSubAssignSizeCheckR2012b(&iv[0], 2, varargin_1.size(), 2, &emlrtECI,
                                    (emlrtCTX)sp);
      last = varargin_1.size(1);
      for (idx = 0; idx < last; idx++) {
        T1rawSS_reordered_reshaped[br + T1rawSS_reordered_reshaped.size(0) *
                                            idx] = varargin_1[idx];
      }
      if (br + 1 > T1rawSS_reordered_reshaped.size(0)) {
        emlrtDynamicBoundsCheckR2012b(br + 1, 1,
                                      T1rawSS_reordered_reshaped.size(0),
                                      &f_emlrtBCI, (emlrtConstCTX)sp);
      }
      varargin_1.set_size(&t_emlrtRTEI, sp, 1,
                          T1rawSS_reordered_reshaped.size(1));
      last = T1rawSS_reordered_reshaped.size(1);
      for (idx = 0; idx < last; idx++) {
        varargin_1[idx] =
            T1rawSS_reordered_reshaped[br + T1rawSS_reordered_reshaped.size(0) *
                                                idx];
      }
      dv[0] = 1.0;
      dv[1] = 2.0 * tmax;
      st.site = &d_emlrtRSI;
      coder::lsqcurvefit(st, ivalues, varargin_1, dv, dv1);
      if (br + 1 > coeffsSS.size(0)) {
        emlrtDynamicBoundsCheckR2012b(br + 1, 1, coeffsSS.size(0), &n_emlrtBCI,
                                      (emlrtConstCTX)sp);
      }
      coeffsSS[br] = dv1[0];
      coeffsSS[br + coeffsSS.size(0)] = dv1[1];
    }
    if (*emlrtBreakCheckR2012bFlagVar != 0) {
      emlrtBreakCheckR2012b((emlrtConstCTX)sp);
    }
  }
  if ((T1rawNS_reordered_reshaped.size(0) == 0) ||
      (T1rawNS_reordered_reshaped.size(1) == 0)) {
    n = 0;
  } else {
    last = T1rawNS_reordered_reshaped.size(0);
    a = T1rawNS_reordered_reshaped.size(1);
    n = muIntScalarMax_sint32(last, a);
  }
  for (int32_T br{0}; br < n; br++) {
    st.site = &e_emlrtRSI;
    if (br + 1 > T1rawNS_reordered_reshaped.size(0)) {
      emlrtDynamicBoundsCheckR2012b(
          br + 1, 1, T1rawNS_reordered_reshaped.size(0), &g_emlrtBCI, &st);
    }
    varargin_1.set_size(&u_emlrtRTEI, &st, 1,
                        T1rawNS_reordered_reshaped.size(1));
    last = T1rawNS_reordered_reshaped.size(1);
    for (idx = 0; idx < last; idx++) {
      varargin_1[idx] =
          T1rawNS_reordered_reshaped[br +
                                     T1rawNS_reordered_reshaped.size(0) * idx];
    }
    b_st.site = &h_emlrtRSI;
    c_st.site = &i_emlrtRSI;
    d_st.site = &j_emlrtRSI;
    if (T1rawNS_reordered_reshaped.size(1) < 1) {
      emlrtErrorWithMessageIdR2018a(
          &d_st, &b_emlrtRTEI, "Coder:toolbox:eml_min_or_max_varDimZero",
          "Coder:toolbox:eml_min_or_max_varDimZero", 0);
    }
    e_st.site = &k_emlrtRSI;
    f_st.site = &l_emlrtRSI;
    last = T1rawNS_reordered_reshaped.size(1);
    if (T1rawNS_reordered_reshaped.size(1) <= 2) {
      if (T1rawNS_reordered_reshaped.size(1) == 1) {
        ex = T1rawNS_reordered_reshaped[br];
      } else if ((T1rawNS_reordered_reshaped[br] <
                  T1rawNS_reordered_reshaped[br + T1rawNS_reordered_reshaped
                                                      .size(0)]) ||
                 (muDoubleScalarIsNaN(T1rawNS_reordered_reshaped[br]) &&
                  (!muDoubleScalarIsNaN(
                      T1rawNS_reordered_reshaped[br + T1rawNS_reordered_reshaped
                                                          .size(0)])))) {
        ex =
            T1rawNS_reordered_reshaped[br + T1rawNS_reordered_reshaped.size(0)];
      } else {
        ex = T1rawNS_reordered_reshaped[br];
      }
    } else {
      g_st.site = &n_emlrtRSI;
      if (!muDoubleScalarIsNaN(T1rawNS_reordered_reshaped[br])) {
        idx = 1;
      } else {
        idx = 0;
        h_st.site = &o_emlrtRSI;
        if (T1rawNS_reordered_reshaped.size(1) > 2147483646) {
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
        ex = T1rawNS_reordered_reshaped[br];
      } else {
        g_st.site = &m_emlrtRSI;
        ex =
            T1rawNS_reordered_reshaped[br + T1rawNS_reordered_reshaped.size(0) *
                                                (idx - 1)];
        a = idx + 1;
        h_st.site = &q_emlrtRSI;
        if ((idx + 1 <= T1rawNS_reordered_reshaped.size(1)) &&
            (T1rawNS_reordered_reshaped.size(1) > 2147483646)) {
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
      if (br + 1 > T1rawNS_reordered_reshaped.size(0)) {
        emlrtDynamicBoundsCheckR2012b(br + 1, 1,
                                      T1rawNS_reordered_reshaped.size(0),
                                      &j_emlrtBCI, (emlrtConstCTX)sp);
      }
      st.site = &f_emlrtRSI;
      if (br + 1 > T1rawNS_reordered_reshaped.size(0)) {
        emlrtDynamicBoundsCheckR2012b(
            br + 1, 1, T1rawNS_reordered_reshaped.size(0), &i_emlrtBCI, &st);
      }
      varargin_1.set_size(&v_emlrtRTEI, &st, 1,
                          T1rawNS_reordered_reshaped.size(1));
      last = T1rawNS_reordered_reshaped.size(1);
      for (idx = 0; idx < last; idx++) {
        varargin_1[idx] =
            T1rawNS_reordered_reshaped[br + T1rawNS_reordered_reshaped.size(0) *
                                                idx];
      }
      b_st.site = &h_emlrtRSI;
      c_st.site = &i_emlrtRSI;
      d_st.site = &j_emlrtRSI;
      e_st.site = &k_emlrtRSI;
      f_st.site = &l_emlrtRSI;
      last = T1rawNS_reordered_reshaped.size(1);
      if (T1rawNS_reordered_reshaped.size(1) <= 2) {
        if (T1rawNS_reordered_reshaped.size(1) == 1) {
          ex = T1rawNS_reordered_reshaped[br];
        } else if ((T1rawNS_reordered_reshaped[br] <
                    T1rawNS_reordered_reshaped[br + T1rawNS_reordered_reshaped
                                                        .size(0)]) ||
                   (muDoubleScalarIsNaN(T1rawNS_reordered_reshaped[br]) &&
                    (!muDoubleScalarIsNaN(
                        T1rawNS_reordered_reshaped
                            [br + T1rawNS_reordered_reshaped.size(0)])))) {
          ex = T1rawNS_reordered_reshaped[br +
                                          T1rawNS_reordered_reshaped.size(0)];
        } else {
          ex = T1rawNS_reordered_reshaped[br];
        }
      } else {
        g_st.site = &n_emlrtRSI;
        if (!muDoubleScalarIsNaN(T1rawNS_reordered_reshaped[br])) {
          idx = 1;
        } else {
          idx = 0;
          h_st.site = &o_emlrtRSI;
          if (T1rawNS_reordered_reshaped.size(1) > 2147483646) {
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
          ex = T1rawNS_reordered_reshaped[br];
        } else {
          g_st.site = &m_emlrtRSI;
          ex = T1rawNS_reordered_reshaped[br +
                                          T1rawNS_reordered_reshaped.size(0) *
                                              (idx - 1)];
          a = idx + 1;
          h_st.site = &q_emlrtRSI;
          if ((idx + 1 <= T1rawNS_reordered_reshaped.size(1)) &&
              (T1rawNS_reordered_reshaped.size(1) > 2147483646)) {
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
      if (br + 1 > T1rawNS_reordered_reshaped.size(0)) {
        emlrtDynamicBoundsCheckR2012b(br + 1, 1,
                                      T1rawNS_reordered_reshaped.size(0),
                                      &h_emlrtBCI, (emlrtConstCTX)sp);
      }
      varargin_1.set_size(&w_emlrtRTEI, sp, 1,
                          T1rawNS_reordered_reshaped.size(1));
      last = T1rawNS_reordered_reshaped.size(1);
      for (idx = 0; idx < last; idx++) {
        varargin_1[idx] =
            T1rawNS_reordered_reshaped[br + T1rawNS_reordered_reshaped.size(0) *
                                                idx] /
            ex;
      }
      iv[0] = 1;
      iv[1] = T1rawNS_reordered_reshaped.size(1);
      emlrtSubAssignSizeCheckR2012b(&iv[0], 2, varargin_1.size(), 2,
                                    &b_emlrtECI, (emlrtCTX)sp);
      last = varargin_1.size(1);
      for (idx = 0; idx < last; idx++) {
        T1rawNS_reordered_reshaped[br + T1rawNS_reordered_reshaped.size(0) *
                                            idx] = varargin_1[idx];
      }
      if (br + 1 > T1rawNS_reordered_reshaped.size(0)) {
        emlrtDynamicBoundsCheckR2012b(br + 1, 1,
                                      T1rawNS_reordered_reshaped.size(0),
                                      &k_emlrtBCI, (emlrtConstCTX)sp);
      }
      varargin_1.set_size(&x_emlrtRTEI, sp, 1,
                          T1rawNS_reordered_reshaped.size(1));
      last = T1rawNS_reordered_reshaped.size(1);
      for (idx = 0; idx < last; idx++) {
        varargin_1[idx] =
            T1rawNS_reordered_reshaped[br + T1rawNS_reordered_reshaped.size(0) *
                                                idx];
      }
      dv[0] = 1.0;
      dv[1] = 2.0 * tmax;
      st.site = &g_emlrtRSI;
      coder::lsqcurvefit(st, ivalues, varargin_1, dv, dv1);
      if (br + 1 > coeffsNS.size(0)) {
        emlrtDynamicBoundsCheckR2012b(br + 1, 1, coeffsNS.size(0), &l_emlrtBCI,
                                      (emlrtConstCTX)sp);
      }
      coeffsNS[br] = dv1[0];
      coeffsNS[br + coeffsNS.size(0)] = dv1[1];
    }
    if (*emlrtBreakCheckR2012bFlagVar != 0) {
      emlrtBreakCheckR2012b((emlrtConstCTX)sp);
    }
  }
  if ((T1rawSS_reordered_reshaped.size(0) == 0) ||
      (T1rawSS_reordered_reshaped.size(1) == 0)) {
    n = 0;
  } else {
    last = T1rawSS_reordered_reshaped.size(0);
    a = T1rawSS_reordered_reshaped.size(1);
    n = muIntScalarMax_sint32(last, a);
  }
  for (int32_T br{0}; br < n; br++) {
    if (br + 1 > coeffsNS.size(0)) {
      emlrtDynamicBoundsCheckR2012b(br + 1, 1, coeffsNS.size(0), &m_emlrtBCI,
                                    (emlrtConstCTX)sp);
    }
    if (br + 1 > coeffsSS.size(0)) {
      emlrtDynamicBoundsCheckR2012b(br + 1, 1, coeffsSS.size(0), &o_emlrtBCI,
                                    (emlrtConstCTX)sp);
    }
    if (br + 1 > coeffsNS.size(0)) {
      emlrtDynamicBoundsCheckR2012b(br + 1, 1, coeffsNS.size(0), &p_emlrtBCI,
                                    (emlrtConstCTX)sp);
    }
    if (br + 1 > perf.size(0)) {
      emlrtDynamicBoundsCheckR2012b(br + 1, 1, perf.size(0), &emlrtBCI,
                                    (emlrtConstCTX)sp);
    }
    perf[br] =
        muDoubleScalarAbs(4980.0 * coeffsNS[br + coeffsNS.size(0)] / T1blood *
                          (1.0 / coeffsSS[br + coeffsSS.size(0)] -
                           1.0 / coeffsNS[br + coeffsNS.size(0)]));
    if (*emlrtBreakCheckR2012bFlagVar != 0) {
      emlrtBreakCheckR2012b((emlrtConstCTX)sp);
    }
  }
  emlrtHeapReferenceStackLeaveFcnR2012b((emlrtConstCTX)sp);
}

void CalculateASLMap_anonFcn1(const emlrtStack &sp, const real_T coeffs[2],
                              const coder::array<real_T, 2U> &ivalues,
                              coder::array<real_T, 2U> &varargout_1)
{
  __m128d r;
  coder::array<real_T, 2U> x;
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
  st.site = &cb_emlrtRSI;
  x.set_size(&bb_emlrtRTEI, &st, 1, ivalues.size(1));
  b_coeffs = coeffs[1];
  nx = ivalues.size(1);
  scalarLB = (ivalues.size(1) / 2) << 1;
  vectorUB = scalarLB - 2;
  for (int32_T i{0}; i <= vectorUB; i += 2) {
    _mm_storeu_pd(&x[i], _mm_div_pd(_mm_mul_pd(_mm_loadu_pd(&ivalues[i]),
                                               _mm_set1_pd(-1.0)),
                                    _mm_set1_pd(b_coeffs)));
  }
  for (int32_T i{scalarLB}; i < nx; i++) {
    x[i] = -ivalues[i] / b_coeffs;
  }
  b_st.site = &ab_emlrtRSI;
  nx = x.size(1);
  c_st.site = &bb_emlrtRSI;
  if (x.size(1) > 2147483646) {
    d_st.site = &p_emlrtRSI;
    coder::check_forloop_overflow_error(d_st);
  }
  for (scalarLB = 0; scalarLB < nx; scalarLB++) {
    x[scalarLB] = muDoubleScalarExp(x[scalarLB]);
  }
  st.site = &cb_emlrtRSI;
  x.set_size(&cb_emlrtRTEI, &st, 1, x.size(1));
  nx = x.size(1) - 1;
  scalarLB = (x.size(1) / 2) << 1;
  vectorUB = scalarLB - 2;
  for (int32_T i{0}; i <= vectorUB; i += 2) {
    r = _mm_loadu_pd(&x[i]);
    _mm_storeu_pd(
        &x[i], _mm_sub_pd(_mm_set1_pd(1.0), _mm_mul_pd(_mm_set1_pd(2.0), r)));
  }
  for (int32_T i{scalarLB}; i <= nx; i++) {
    x[i] = 1.0 - 2.0 * x[i];
  }
  b_st.site = &db_emlrtRSI;
  nx = x.size(1);
  varargout_1.set_size(&db_emlrtRTEI, &b_st, 1, x.size(1));
  c_st.site = &eb_emlrtRSI;
  if (x.size(1) > 2147483646) {
    d_st.site = &p_emlrtRSI;
    coder::check_forloop_overflow_error(d_st);
  }
  for (scalarLB = 0; scalarLB < nx; scalarLB++) {
    varargout_1[scalarLB] = muDoubleScalarAbs(x[scalarLB]);
  }
  varargout_1.set_size(&eb_emlrtRTEI, &sp, 1, varargout_1.size(1));
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

// End of code generation (CalculateASLMap.cpp)
