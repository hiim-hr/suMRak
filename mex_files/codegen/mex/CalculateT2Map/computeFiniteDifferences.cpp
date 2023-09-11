//
// Student License - for use by students to meet course requirements and
// perform academic research at degree granting institutions only.  Not
// for government, commercial, or other organizational use.
//
// computeFiniteDifferences.cpp
//
// Code generation for function 'computeFiniteDifferences'
//

// Include files
#include "computeFiniteDifferences.h"
#include "CalculateT2Map_data.h"
#include "CalculateT2Map_internal_types.h"
#include "CalculateT2Map_internal_types1.h"
#include "anonymous_function.h"
#include "anonymous_function1.h"
#include "driver.h"
#include "eml_int_forloop_overflow_check.h"
#include "rt_nonfinite.h"
#include "coder_array.h"
#include "mwmathutil.h"

// Variable Definitions
static emlrtRSInfo eb_emlrtRSI{
    1,                          // lineNo
    "computeFiniteDifferences", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\shared\\optimlib\\+optim\\+coder\\+"
    "utils\\+FiniteDifferences\\computeFiniteDifferenc"
    "es.p" // pathName
};

static emlrtRSInfo fb_emlrtRSI{
    1,                           // lineNo
    "computeForwardDifferences", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\shared\\optimlib\\+optim\\+coder\\+"
    "utils\\+FiniteDifferences\\+internal\\computeForw"
    "ardDifferences.p" // pathName
};

static emlrtRSInfo gb_emlrtRSI{
    1,                      // lineNo
    "finDiffEvalAndChkErr", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\shared\\optimlib\\+optim\\+coder\\+"
    "utils\\+FiniteDifferences\\+internal\\finDiffEval"
    "AndChkErr.p" // pathName
};

static emlrtBCInfo j_emlrtBCI{
    -1,                     // iFirst
    -1,                     // iLast
    1,                      // lineNo
    1,                      // colNo
    "",                     // aName
    "finDiffEvalAndChkErr", // fName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\shared\\optimlib\\+optim\\+coder\\+"
    "utils\\+FiniteDifferences\\+internal\\finDiffEval"
    "AndChkErr.p", // pName
    0              // checkKind
};

static emlrtECInfo d_emlrtECI{
    -1,                     // nDims
    1,                      // lineNo
    1,                      // colNo
    "finDiffEvalAndChkErr", // fName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\shared\\optimlib\\+optim\\+coder\\+"
    "utils\\+FiniteDifferences\\+internal\\finDiffEval"
    "AndChkErr.p" // pName
};

static emlrtBCInfo k_emlrtBCI{
    -1,                          // iFirst
    -1,                          // iLast
    1,                           // lineNo
    1,                           // colNo
    "",                          // aName
    "computeForwardDifferences", // fName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\shared\\optimlib\\+optim\\+coder\\+"
    "utils\\+FiniteDifferences\\+internal\\computeForw"
    "ardDifferences.p", // pName
    0                   // checkKind
};

static emlrtRTEInfo y_emlrtRTEI{
    1,                           // lineNo
    1,                           // colNo
    "computeForwardDifferences", // fName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\shared\\optimlib\\+optim\\+coder\\+"
    "utils\\+FiniteDifferences\\+internal\\computeForw"
    "ardDifferences.p" // pName
};

// Function Definitions
namespace coder {
namespace optim {
namespace coder {
namespace utils {
namespace FiniteDifferences {
boolean_T computeFiniteDifferences(const emlrtStack &sp, c_struct_T &obj,
                                   const ::coder::array<real_T, 2U> &cEqCurrent,
                                   real_T xk[2],
                                   ::coder::array<real_T, 2U> &JacCeqTrans,
                                   const real_T ub[2])
{
  array<real_T, 1U> varargout_2;
  emlrtStack b_st;
  emlrtStack c_st;
  emlrtStack d_st;
  emlrtStack st;
  boolean_T evalOK;
  st.prev = &sp;
  st.tls = sp.tls;
  b_st.prev = &st;
  b_st.tls = st.tls;
  c_st.prev = &b_st;
  c_st.tls = b_st.tls;
  d_st.prev = &c_st;
  d_st.tls = c_st.tls;
  emlrtHeapReferenceStackEnterFcnR2012b((emlrtConstCTX)&sp);
  if (obj.isEmptyNonlcon) {
    evalOK = true;
  } else {
    int32_T idx;
    boolean_T exitg1;
    st.site = &eb_emlrtRSI;
    evalOK = true;
    obj.numEvals = 0;
    b_st.site = &fb_emlrtRSI;
    idx = 0;
    exitg1 = false;
    while ((!exitg1) && (idx < 2)) {
      real_T d;
      real_T deltaX;
      real_T temp;
      real_T ubDiff;
      int32_T b_idx;
      int32_T i;
      boolean_T guard1;
      boolean_T modifiedStep;
      deltaX = 1.4901161193847656E-8 *
               (1.0 - 2.0 * static_cast<real_T>(xk[idx] < 0.0)) *
               muDoubleScalarMax(muDoubleScalarAbs(xk[idx]), 1.0);
      if (obj.hasUB[idx]) {
        ubDiff = deltaX;
        modifiedStep = false;
        if ((ub[idx] != 0.0) && (xk[idx] >= 0.0) && (xk[idx] <= ub[idx])) {
          d = xk[idx] + deltaX;
          if ((d > ub[idx]) || (d < 0.0)) {
            ubDiff = -deltaX;
            modifiedStep = true;
            d = xk[idx] - deltaX;
            if ((d > ub[idx]) || (d < 0.0)) {
              ubDiff = ub[idx] - xk[idx];
              if (xk[idx] <= ubDiff) {
                ubDiff = -xk[idx];
              }
            }
          }
        }
        deltaX = ubDiff;
      } else if (obj.hasUB[idx]) {
        modifiedStep = false;
        if ((xk[idx] <= ub[idx]) && (xk[idx] + deltaX > ub[idx])) {
          deltaX = -deltaX;
          modifiedStep = true;
        }
      } else {
        modifiedStep = false;
        if ((xk[idx] >= 0.0) && (xk[idx] + deltaX < 0.0)) {
          deltaX = -deltaX;
          modifiedStep = true;
        }
      }
      b_st.site = &fb_emlrtRSI;
      evalOK = true;
      temp = xk[idx];
      xk[idx] += deltaX;
      c_st.site = &gb_emlrtRSI;
      d_st.site = &s_emlrtRSI;
      levenbergMarquardt::driver_anonFcn1(d_st, obj.nonlin.workspace.fun, xk,
                                          varargout_2);
      i = obj.cEq_1.size(0);
      if (i != varargout_2.size(0)) {
        emlrtSubAssignSizeCheck1dR2017a(i, varargout_2.size(0), &d_emlrtECI,
                                        &b_st);
      }
      b_idx = 1;
      while (evalOK && (b_idx <= obj.mEq)) {
        if ((b_idx < 1) || (b_idx > varargout_2.size(0))) {
          emlrtDynamicBoundsCheckR2012b(b_idx, 1, varargout_2.size(0),
                                        &j_emlrtBCI, &b_st);
        }
        ubDiff = varargout_2[b_idx - 1];
        evalOK =
            ((!muDoubleScalarIsInf(ubDiff)) && (!muDoubleScalarIsNaN(ubDiff)));
        b_idx++;
      }
      xk[idx] = temp;
      obj.f_1 = 0.0;
      obj.cEq_1.set_size(&y_emlrtRTEI, &st, varargout_2.size(0));
      b_idx = varargout_2.size(0);
      for (i = 0; i < b_idx; i++) {
        obj.cEq_1[i] = varargout_2[i];
      }
      obj.numEvals++;
      guard1 = false;
      if (!evalOK) {
        if (!modifiedStep) {
          deltaX = -deltaX;
          d = xk[idx] + deltaX;
          if ((d >= 0.0) && obj.hasUB[idx] && (d <= ub[idx])) {
            modifiedStep = true;
          } else {
            modifiedStep = false;
          }
          if ((!obj.hasBounds) || modifiedStep) {
            b_st.site = &fb_emlrtRSI;
            evalOK = true;
            temp = xk[idx];
            xk[idx] = d;
            c_st.site = &gb_emlrtRSI;
            d_st.site = &s_emlrtRSI;
            levenbergMarquardt::driver_anonFcn1(d_st, obj.nonlin.workspace.fun,
                                                xk, obj.cEq_1);
            i = obj.cEq_1.size(0);
            if (varargout_2.size(0) != i) {
              emlrtSubAssignSizeCheck1dR2017a(varargout_2.size(0), i,
                                              &d_emlrtECI, &b_st);
            }
            b_idx = 1;
            while (evalOK && (b_idx <= obj.mEq)) {
              i = obj.cEq_1.size(0);
              if ((b_idx < 1) || (b_idx > i)) {
                emlrtDynamicBoundsCheckR2012b(b_idx, 1, i, &j_emlrtBCI, &b_st);
              }
              ubDiff = obj.cEq_1[b_idx - 1];
              evalOK = ((!muDoubleScalarIsInf(ubDiff)) &&
                        (!muDoubleScalarIsNaN(ubDiff)));
              b_idx++;
            }
            xk[idx] = temp;
            obj.f_1 = 0.0;
            obj.numEvals++;
          }
        }
        if (!evalOK) {
          exitg1 = true;
        } else {
          guard1 = true;
        }
      } else {
        guard1 = true;
      }
      if (guard1) {
        b_st.site = &fb_emlrtRSI;
        b_idx = obj.mEq;
        b_st.site = &fb_emlrtRSI;
        if (obj.mEq > 2147483646) {
          c_st.site = &m_emlrtRSI;
          check_forloop_overflow_error(c_st);
        }
        for (int32_T idx_row{0}; idx_row < b_idx; idx_row++) {
          int32_T i1;
          i = JacCeqTrans.size(1) << 1;
          i1 = obj.cEq_1.size(0);
          if ((idx_row + 1 < 1) || (idx_row + 1 > i1)) {
            emlrtDynamicBoundsCheckR2012b(idx_row + 1, 1, i1, &k_emlrtBCI, &st);
          }
          if ((idx_row + 1 < 1) || (idx_row + 1 > cEqCurrent.size(1))) {
            emlrtDynamicBoundsCheckR2012b(idx_row + 1, 1, cEqCurrent.size(1),
                                          &k_emlrtBCI, &st);
          }
          i1 = (idx + (idx_row << 1)) + 1;
          if ((i1 < 1) || (i1 > i)) {
            emlrtDynamicBoundsCheckR2012b(i1, 1, i, &k_emlrtBCI, &st);
          }
          JacCeqTrans[i1 - 1] =
              (obj.cEq_1[idx_row] - cEqCurrent[idx_row]) / deltaX;
        }
        idx++;
      }
    }
  }
  emlrtHeapReferenceStackLeaveFcnR2012b((emlrtConstCTX)&sp);
  return evalOK;
}

} // namespace FiniteDifferences
} // namespace utils
} // namespace coder
} // namespace optim
} // namespace coder

// End of code generation (computeFiniteDifferences.cpp)
