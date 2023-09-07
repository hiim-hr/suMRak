//
// Student License - for use by students to meet course requirements and
// perform academic research at degree granting institutions only.  Not
// for government, commercial, or other organizational use.
//
// RefreshImageBC.cpp
//
// Code generation for function 'RefreshImageBC'
//

// Include files
#include "RefreshImageBC.h"
#include "eml_int_forloop_overflow_check.h"
#include "rt_nonfinite.h"
#include "coder_array.h"
#include "mwmathutil.h"
#include <emmintrin.h>

// Variable Definitions
static emlrtRSInfo emlrtRSI{
    6,                // lineNo
    "RefreshImageBC", // fcnName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-tool\\maps_mex_"
    "files\\RefreshImageBC.m" // pathName
};

static emlrtRSInfo b_emlrtRSI{
    15,    // lineNo
    "min", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\lib\\matlab\\datafun\\min.m" // pathName
};

static emlrtRSInfo
    c_emlrtRSI{
        46,         // lineNo
        "minOrMax", // fcnName
        "C:\\Program "
        "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+internal\\minOrMax."
        "m" // pathName
    };

static emlrtRSInfo
    d_emlrtRSI{
        92,        // lineNo
        "minimum", // fcnName
        "C:\\Program "
        "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+internal\\minOrMax."
        "m" // pathName
    };

static emlrtRSInfo e_emlrtRSI{
    208,             // lineNo
    "unaryMinOrMax", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+"
    "internal\\unaryMinOrMax.m" // pathName
};

static emlrtRSInfo f_emlrtRSI{
    897,                    // lineNo
    "minRealVectorOmitNaN", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+"
    "internal\\unaryMinOrMax.m" // pathName
};

static emlrtRSInfo g_emlrtRSI{
    72,                      // lineNo
    "vectorMinOrMaxInPlace", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+"
    "internal\\vectorMinOrMaxInPlace.m" // pathName
};

static emlrtRSInfo h_emlrtRSI{
    64,                      // lineNo
    "vectorMinOrMaxInPlace", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+"
    "internal\\vectorMinOrMaxInPlace.m" // pathName
};

static emlrtRSInfo i_emlrtRSI{
    113,         // lineNo
    "findFirst", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+"
    "internal\\vectorMinOrMaxInPlace.m" // pathName
};

static emlrtRSInfo j_emlrtRSI{
    20,                               // lineNo
    "eml_int_forloop_overflow_check", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\lib\\matlab\\eml\\eml_int_forloop_"
    "overflow_check.m" // pathName
};

static emlrtRSInfo k_emlrtRSI{
    130,                        // lineNo
    "minOrMaxRealVectorKernel", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+"
    "internal\\vectorMinOrMaxInPlace.m" // pathName
};

static emlrtRSInfo l_emlrtRSI{
    15,    // lineNo
    "max", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\lib\\matlab\\datafun\\max.m" // pathName
};

static emlrtRSInfo
    m_emlrtRSI{
        44,         // lineNo
        "minOrMax", // fcnName
        "C:\\Program "
        "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+internal\\minOrMax."
        "m" // pathName
    };

static emlrtRSInfo
    n_emlrtRSI{
        79,        // lineNo
        "maximum", // fcnName
        "C:\\Program "
        "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+internal\\minOrMax."
        "m" // pathName
    };

static emlrtRSInfo o_emlrtRSI{
    190,             // lineNo
    "unaryMinOrMax", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+"
    "internal\\unaryMinOrMax.m" // pathName
};

static emlrtRSInfo p_emlrtRSI{
    901,                    // lineNo
    "maxRealVectorOmitNaN", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+"
    "internal\\unaryMinOrMax.m" // pathName
};

static emlrtRTEInfo c_emlrtRTEI{
    134,             // lineNo
    27,              // colNo
    "unaryMinOrMax", // fName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+"
    "internal\\unaryMinOrMax.m" // pName
};

// Function Definitions
void RefreshImageBC(const emlrtStack *sp,
                    coder::array<real_T, 2U> &CurrentSlice,
                    real_T ContrastSliderValue, real_T BrightnessSliderValue)
{
  __m128d r;
  emlrtStack b_st;
  emlrtStack c_st;
  emlrtStack d_st;
  emlrtStack e_st;
  emlrtStack f_st;
  emlrtStack g_st;
  emlrtStack h_st;
  emlrtStack i_st;
  emlrtStack st;
  real_T b_ex;
  real_T c_ex;
  real_T ex;
  real_T maxval;
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
  // REFRESHIMAGEBC Scales the image intensity to [0 1] and applies contrast
  // and brightness
  //    Takes current slice matrix and brightness and contrast scalars as
  //    arguments
  st.site = &emlrtRSI;
  b_st.site = &b_emlrtRSI;
  c_st.site = &c_emlrtRSI;
  d_st.site = &d_emlrtRSI;
  last = CurrentSlice.size(0) * CurrentSlice.size(1);
  if (last < 1) {
    emlrtErrorWithMessageIdR2018a(&d_st, &c_emlrtRTEI,
                                  "Coder:toolbox:eml_min_or_max_varDimZero",
                                  "Coder:toolbox:eml_min_or_max_varDimZero", 0);
  }
  e_st.site = &e_emlrtRSI;
  f_st.site = &f_emlrtRSI;
  if (last <= 2) {
    if (last == 1) {
      ex = CurrentSlice[0];
    } else {
      ex = CurrentSlice[1];
      if ((!(CurrentSlice[0] > ex)) &&
          ((!muDoubleScalarIsNaN(CurrentSlice[0])) ||
           muDoubleScalarIsNaN(ex))) {
        ex = CurrentSlice[0];
      }
    }
  } else {
    g_st.site = &h_emlrtRSI;
    if (!muDoubleScalarIsNaN(CurrentSlice[0])) {
      idx = 1;
    } else {
      idx = 0;
      h_st.site = &i_emlrtRSI;
      if (last > 2147483646) {
        i_st.site = &j_emlrtRSI;
        coder::check_forloop_overflow_error(i_st);
      }
      k = 2;
      exitg1 = false;
      while ((!exitg1) && (k <= last)) {
        if (!muDoubleScalarIsNaN(CurrentSlice[k - 1])) {
          idx = k;
          exitg1 = true;
        } else {
          k++;
        }
      }
    }
    if (idx == 0) {
      ex = CurrentSlice[0];
    } else {
      g_st.site = &g_emlrtRSI;
      ex = CurrentSlice[idx - 1];
      a = idx + 1;
      h_st.site = &k_emlrtRSI;
      if ((idx + 1 <= last) && (last > 2147483646)) {
        i_st.site = &j_emlrtRSI;
        coder::check_forloop_overflow_error(i_st);
      }
      for (k = a; k <= last; k++) {
        maxval = CurrentSlice[k - 1];
        if (ex > maxval) {
          ex = maxval;
        }
      }
    }
  }
  st.site = &emlrtRSI;
  b_st.site = &l_emlrtRSI;
  c_st.site = &m_emlrtRSI;
  d_st.site = &n_emlrtRSI;
  e_st.site = &o_emlrtRSI;
  f_st.site = &p_emlrtRSI;
  if (last <= 2) {
    if (last == 1) {
      b_ex = CurrentSlice[0];
    } else {
      b_ex = CurrentSlice[1];
      if ((!(CurrentSlice[0] < b_ex)) &&
          ((!muDoubleScalarIsNaN(CurrentSlice[0])) ||
           muDoubleScalarIsNaN(b_ex))) {
        b_ex = CurrentSlice[0];
      }
    }
  } else {
    g_st.site = &h_emlrtRSI;
    if (!muDoubleScalarIsNaN(CurrentSlice[0])) {
      idx = 1;
    } else {
      idx = 0;
      h_st.site = &i_emlrtRSI;
      if (last > 2147483646) {
        i_st.site = &j_emlrtRSI;
        coder::check_forloop_overflow_error(i_st);
      }
      k = 2;
      exitg1 = false;
      while ((!exitg1) && (k <= last)) {
        if (!muDoubleScalarIsNaN(CurrentSlice[k - 1])) {
          idx = k;
          exitg1 = true;
        } else {
          k++;
        }
      }
    }
    if (idx == 0) {
      b_ex = CurrentSlice[0];
    } else {
      g_st.site = &g_emlrtRSI;
      b_ex = CurrentSlice[idx - 1];
      a = idx + 1;
      h_st.site = &k_emlrtRSI;
      if ((idx + 1 <= last) && (last > 2147483646)) {
        i_st.site = &j_emlrtRSI;
        coder::check_forloop_overflow_error(i_st);
      }
      for (k = a; k <= last; k++) {
        maxval = CurrentSlice[k - 1];
        if (b_ex < maxval) {
          b_ex = maxval;
        }
      }
    }
  }
  st.site = &emlrtRSI;
  b_st.site = &b_emlrtRSI;
  c_st.site = &c_emlrtRSI;
  d_st.site = &d_emlrtRSI;
  e_st.site = &e_emlrtRSI;
  f_st.site = &f_emlrtRSI;
  if (last <= 2) {
    if (last == 1) {
      c_ex = CurrentSlice[0];
    } else {
      c_ex = CurrentSlice[1];
      if ((!(CurrentSlice[0] > c_ex)) &&
          ((!muDoubleScalarIsNaN(CurrentSlice[0])) ||
           muDoubleScalarIsNaN(c_ex))) {
        c_ex = CurrentSlice[0];
      }
    }
  } else {
    g_st.site = &h_emlrtRSI;
    if (!muDoubleScalarIsNaN(CurrentSlice[0])) {
      idx = 1;
    } else {
      idx = 0;
      h_st.site = &i_emlrtRSI;
      if (last > 2147483646) {
        i_st.site = &j_emlrtRSI;
        coder::check_forloop_overflow_error(i_st);
      }
      k = 2;
      exitg1 = false;
      while ((!exitg1) && (k <= last)) {
        if (!muDoubleScalarIsNaN(CurrentSlice[k - 1])) {
          idx = k;
          exitg1 = true;
        } else {
          k++;
        }
      }
    }
    if (idx == 0) {
      c_ex = CurrentSlice[0];
    } else {
      g_st.site = &g_emlrtRSI;
      c_ex = CurrentSlice[idx - 1];
      a = idx + 1;
      h_st.site = &k_emlrtRSI;
      if ((idx + 1 <= last) && (last > 2147483646)) {
        i_st.site = &j_emlrtRSI;
        coder::check_forloop_overflow_error(i_st);
      }
      for (k = a; k <= last; k++) {
        maxval = CurrentSlice[k - 1];
        if (c_ex > maxval) {
          c_ex = maxval;
        }
      }
    }
  }
  maxval = b_ex - c_ex;
  last = CurrentSlice.size(1);
  for (int32_T i{0}; i < last; i++) {
    idx = CurrentSlice.size(0);
    a = (idx / 2) << 1;
    k = a - 2;
    for (int32_T i1{0}; i1 <= k; i1 += 2) {
      r = _mm_loadu_pd(&CurrentSlice[i1 + CurrentSlice.size(0) * i]);
      _mm_storeu_pd(
          &CurrentSlice[i1 + CurrentSlice.size(0) * i],
          _mm_div_pd(_mm_sub_pd(r, _mm_set1_pd(ex)), _mm_set1_pd(maxval)));
    }
    for (int32_T i1{a}; i1 < idx; i1++) {
      CurrentSlice[i1 + CurrentSlice.size(0) * i] =
          (CurrentSlice[i1 + CurrentSlice.size(0) * i] - ex) / maxval;
    }
  }
  //  Scale image to [0 1]
  maxval = muDoubleScalarExp(ContrastSliderValue);
  last = CurrentSlice.size(1);
  for (int32_T i{0}; i < last; i++) {
    idx = CurrentSlice.size(0);
    a = (idx / 2) << 1;
    k = a - 2;
    for (int32_T i1{0}; i1 <= k; i1 += 2) {
      r = _mm_loadu_pd(&CurrentSlice[i1 + CurrentSlice.size(0) * i]);
      _mm_storeu_pd(&CurrentSlice[i1 + CurrentSlice.size(0) * i],
                    _mm_add_pd(_mm_mul_pd(r, _mm_set1_pd(maxval)),
                               _mm_set1_pd(BrightnessSliderValue)));
    }
    for (int32_T i1{a}; i1 < idx; i1++) {
      CurrentSlice[i1 + CurrentSlice.size(0) * i] =
          CurrentSlice[i1 + CurrentSlice.size(0) * i] * maxval +
          BrightnessSliderValue;
    }
  }
  //  Apply contrast and brightness
}

// End of code generation (RefreshImageBC.cpp)
