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
#include "CalculateT1Map_mex_data.h"
#include "CalculateT1Map_mex_internal_types11.h"
#include "all.h"
#include "anonymous_function1.h"
#include "checkBounds.h"
#include "driver.h"
#include "eml_int_forloop_overflow_check.h"
#include "rt_nonfinite.h"
#include "coder_array.h"
#include "mwmathutil.h"

// Variable Definitions
static emlrtRSInfo lc_emlrtRSI{
    7,                // lineNo
    "CalculateT2Map", // fcnName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT2Map.m" // pathName
};

static emlrtRSInfo mc_emlrtRSI{
    14,               // lineNo
    "CalculateT2Map", // fcnName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT2Map.m" // pathName
};

static emlrtRSInfo nc_emlrtRSI{
    15,               // lineNo
    "CalculateT2Map", // fcnName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT2Map.m" // pathName
};

static emlrtRSInfo oc_emlrtRSI{
    16,               // lineNo
    "CalculateT2Map", // fcnName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT2Map.m" // pathName
};

static emlrtBCInfo o_emlrtBCI{
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

static emlrtBCInfo p_emlrtBCI{
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

static emlrtBCInfo q_emlrtBCI{
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

static emlrtBCInfo r_emlrtBCI{
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

static emlrtECInfo e_emlrtECI{
    -1,               // nDims
    15,               // lineNo
    13,               // colNo
    "CalculateT2Map", // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT2Map.m" // pName
};

static emlrtBCInfo s_emlrtBCI{
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

static emlrtBCInfo t_emlrtBCI{
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

static emlrtRTEInfo hb_emlrtRTEI{
    11,               // lineNo
    5,                // colNo
    "CalculateT2Map", // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT2Map.m" // pName
};

static emlrtRTEInfo ib_emlrtRTEI{
    14,               // lineNo
    16,               // colNo
    "CalculateT2Map", // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT2Map.m" // pName
};

static emlrtRTEInfo jb_emlrtRTEI{
    15,               // lineNo
    83,               // colNo
    "CalculateT2Map", // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT2Map.m" // pName
};

static emlrtRTEInfo kb_emlrtRTEI{
    15,               // lineNo
    46,               // colNo
    "CalculateT2Map", // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT2Map.m" // pName
};

static emlrtRTEInfo lb_emlrtRTEI{
    30,                // lineNo
    21,                // colNo
    "function_handle", // fName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+internal\\function_"
    "handle.m" // pName
};

// Function Definitions
void CalculateT2Map(const emlrtStack *sp,
                    coder::array<real_T, 2U> &T2raw_reordered_reshaped,
                    const coder::array<real_T, 2U> &tvalues,
                    coder::array<real_T, 2U> &coeffs)
{
  coder::anonymous_function b_this;
  coder::array<real_T, 2U> jacobian;
  coder::array<real_T, 2U> varargin_1;
  coder::array<boolean_T, 2U> r;
  emlrtStack b_st;
  emlrtStack c_st;
  emlrtStack d_st;
  emlrtStack e_st;
  emlrtStack f_st;
  emlrtStack g_st;
  emlrtStack h_st;
  emlrtStack i_st;
  emlrtStack st;
  real_T b_expl_temp[2];
  real_T c_expl_temp[2];
  real_T d_expl_temp;
  real_T e_expl_temp;
  real_T f_expl_temp;
  real_T resnorm;
  real_T tmax;
  int32_T iv[2];
  int32_T a;
  int32_T idx;
  int32_T k;
  int32_T last;
  int32_T n;
  char_T expl_temp[19];
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
  st.site = &lc_emlrtRSI;
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
        resnorm = tvalues[k - 1];
        if (tmax < resnorm) {
          tmax = resnorm;
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
  coeffs.set_size(&hb_emlrtRTEI, sp, n, 2);
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
    st.site = &mc_emlrtRSI;
    if (br + 1 > T2raw_reordered_reshaped.size(0)) {
      emlrtDynamicBoundsCheckR2012b(br + 1, 1, T2raw_reordered_reshaped.size(0),
                                    &o_emlrtBCI, &st);
    }
    varargin_1.set_size(&ib_emlrtRTEI, &st, 1,
                        T2raw_reordered_reshaped.size(1));
    last = T2raw_reordered_reshaped.size(1);
    for (idx = 0; idx < last; idx++) {
      varargin_1[idx] =
          T2raw_reordered_reshaped[br + T2raw_reordered_reshaped.size(0) * idx];
    }
    b_st.site = &h_emlrtRSI;
    c_st.site = &i_emlrtRSI;
    d_st.site = &j_emlrtRSI;
    if (T2raw_reordered_reshaped.size(1) < 1) {
      emlrtErrorWithMessageIdR2018a(
          &d_st, &b_emlrtRTEI, "Coder:toolbox:eml_min_or_max_varDimZero",
          "Coder:toolbox:eml_min_or_max_varDimZero", 0);
    }
    e_st.site = &k_emlrtRSI;
    f_st.site = &l_emlrtRSI;
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
      g_st.site = &n_emlrtRSI;
      if (!muDoubleScalarIsNaN(T2raw_reordered_reshaped[br])) {
        idx = 1;
      } else {
        idx = 0;
        h_st.site = &o_emlrtRSI;
        if (T2raw_reordered_reshaped.size(1) > 2147483646) {
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
        ex = T2raw_reordered_reshaped[br];
      } else {
        g_st.site = &m_emlrtRSI;
        ex = T2raw_reordered_reshaped[br + T2raw_reordered_reshaped.size(0) *
                                               (idx - 1)];
        a = idx + 1;
        h_st.site = &q_emlrtRSI;
        if ((idx + 1 <= T2raw_reordered_reshaped.size(1)) &&
            (T2raw_reordered_reshaped.size(1) > 2147483646)) {
          i_st.site = &p_emlrtRSI;
          coder::check_forloop_overflow_error(i_st);
        }
        for (k = a; k <= last; k++) {
          resnorm = varargin_1[k - 1];
          if (ex < resnorm) {
            ex = resnorm;
          }
        }
      }
    }
    if (ex != 0.0) {
      real_T ub[2];
      real_T x[2];
      if (br + 1 > T2raw_reordered_reshaped.size(0)) {
        emlrtDynamicBoundsCheckR2012b(br + 1, 1,
                                      T2raw_reordered_reshaped.size(0),
                                      &r_emlrtBCI, (emlrtConstCTX)sp);
      }
      st.site = &nc_emlrtRSI;
      if (br + 1 > T2raw_reordered_reshaped.size(0)) {
        emlrtDynamicBoundsCheckR2012b(
            br + 1, 1, T2raw_reordered_reshaped.size(0), &q_emlrtBCI, &st);
      }
      varargin_1.set_size(&jb_emlrtRTEI, &st, 1,
                          T2raw_reordered_reshaped.size(1));
      last = T2raw_reordered_reshaped.size(1);
      for (idx = 0; idx < last; idx++) {
        varargin_1[idx] =
            T2raw_reordered_reshaped[br +
                                     T2raw_reordered_reshaped.size(0) * idx];
      }
      b_st.site = &h_emlrtRSI;
      c_st.site = &i_emlrtRSI;
      d_st.site = &j_emlrtRSI;
      e_st.site = &k_emlrtRSI;
      f_st.site = &l_emlrtRSI;
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
        g_st.site = &n_emlrtRSI;
        if (!muDoubleScalarIsNaN(T2raw_reordered_reshaped[br])) {
          idx = 1;
        } else {
          idx = 0;
          h_st.site = &o_emlrtRSI;
          if (T2raw_reordered_reshaped.size(1) > 2147483646) {
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
          ex = T2raw_reordered_reshaped[br];
        } else {
          g_st.site = &m_emlrtRSI;
          ex = T2raw_reordered_reshaped[br + T2raw_reordered_reshaped.size(0) *
                                                 (idx - 1)];
          a = idx + 1;
          h_st.site = &q_emlrtRSI;
          if ((idx + 1 <= T2raw_reordered_reshaped.size(1)) &&
              (T2raw_reordered_reshaped.size(1) > 2147483646)) {
            i_st.site = &p_emlrtRSI;
            coder::check_forloop_overflow_error(i_st);
          }
          for (k = a; k <= last; k++) {
            resnorm = varargin_1[k - 1];
            if (ex < resnorm) {
              ex = resnorm;
            }
          }
        }
      }
      if (br + 1 > T2raw_reordered_reshaped.size(0)) {
        emlrtDynamicBoundsCheckR2012b(br + 1, 1,
                                      T2raw_reordered_reshaped.size(0),
                                      &p_emlrtBCI, (emlrtConstCTX)sp);
      }
      varargin_1.set_size(&kb_emlrtRTEI, sp, 1,
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
      emlrtSubAssignSizeCheckR2012b(&iv[0], 2, varargin_1.size(), 2,
                                    &e_emlrtECI, (emlrtCTX)sp);
      last = varargin_1.size(1);
      for (idx = 0; idx < last; idx++) {
        T2raw_reordered_reshaped[br + T2raw_reordered_reshaped.size(0) * idx] =
            varargin_1[idx];
      }
      st.site = &oc_emlrtRSI;
      if (br + 1 > T2raw_reordered_reshaped.size(0)) {
        emlrtDynamicBoundsCheckR2012b(
            br + 1, 1, T2raw_reordered_reshaped.size(0), &s_emlrtBCI, &st);
      }
      ub[0] = 1.0;
      ub[1] = 2.0 * tmax;
      last = tvalues.size(1);
      r.set_size(&x_emlrtRTEI, &st, 1, tvalues.size(1));
      for (idx = 0; idx < last; idx++) {
        resnorm = tvalues[idx];
        r[idx] = ((!muDoubleScalarIsInf(resnorm)) &&
                  (!muDoubleScalarIsNaN(resnorm)));
      }
      b_st.site = &r_emlrtRSI;
      if (!coder::all(b_st, r)) {
        emlrtErrorWithMessageIdR2018a(
            &st, &c_emlrtRTEI, "optimlib_codegen:common:InfNaNComplexDetected",
            "optimlib_codegen:common:InfNaNComplexDetected", 3, 4, 5, "xdata");
      }
      r.set_size(&x_emlrtRTEI, &st, 1, T2raw_reordered_reshaped.size(1));
      last = T2raw_reordered_reshaped.size(1);
      for (idx = 0; idx < last; idx++) {
        resnorm =
            T2raw_reordered_reshaped[br +
                                     T2raw_reordered_reshaped.size(0) * idx];
        r[idx] = ((!muDoubleScalarIsInf(resnorm)) &&
                  (!muDoubleScalarIsNaN(resnorm)));
      }
      b_st.site = &r_emlrtRSI;
      if (!coder::all(b_st, r)) {
        emlrtErrorWithMessageIdR2018a(
            &st, &c_emlrtRTEI, "optimlib_codegen:common:InfNaNComplexDetected",
            "optimlib_codegen:common:InfNaNComplexDetected", 3, 4, 5, "ydata");
      }
      last = tvalues.size(1);
      if (tvalues.size(1) != T2raw_reordered_reshaped.size(1)) {
        emlrtErrorWithMessageIdR2018a(
            &st, &c_emlrtRTEI, "optimlib_codegen:lsqcurvefit:DataSizeMismatch",
            "optimlib_codegen:lsqcurvefit:DataSizeMismatch", 0);
      }
      b_st.site = &r_emlrtRSI;
      coder::optim::coder::validate::checkBounds(b_st, ub);
      b_this.workspace.xdata.set_size(&y_emlrtRTEI, &st, 1, tvalues.size(1));
      for (idx = 0; idx < last; idx++) {
        b_this.workspace.xdata[idx] = tvalues[idx];
      }
      b_this.workspace.ydata.set_size(&lb_emlrtRTEI, &st, 1,
                                      T2raw_reordered_reshaped.size(1));
      last = T2raw_reordered_reshaped.size(1);
      for (idx = 0; idx < last; idx++) {
        b_this.workspace.ydata[idx] =
            T2raw_reordered_reshaped[br +
                                     T2raw_reordered_reshaped.size(0) * idx];
      }
      b_st.site = &r_emlrtRSI;
      coder::optim::coder::levenbergMarquardt::c_driver(
          b_st, b_this, ub, x, varargin_1, expl_temp, b_expl_temp, c_expl_temp,
          jacobian, ex, resnorm, d_expl_temp, e_expl_temp, f_expl_temp);
      if (br + 1 > coeffs.size(0)) {
        emlrtDynamicBoundsCheckR2012b(br + 1, 1, coeffs.size(0), &t_emlrtBCI,
                                      (emlrtConstCTX)sp);
      }
      coeffs[br] = x[0];
      coeffs[br + coeffs.size(0)] = x[1];
    }
    if (*emlrtBreakCheckR2012bFlagVar != 0) {
      emlrtBreakCheckR2012b((emlrtConstCTX)sp);
    }
  }
  emlrtHeapReferenceStackLeaveFcnR2012b((emlrtConstCTX)sp);
}

// End of code generation (CalculateT2Map.cpp)
