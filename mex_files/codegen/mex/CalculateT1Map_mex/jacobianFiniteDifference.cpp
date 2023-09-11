//
// Student License - for use by students to meet course requirements and
// perform academic research at degree granting institutions only.  Not
// for government, commercial, or other organizational use.
//
// jacobianFiniteDifference.cpp
//
// Code generation for function 'jacobianFiniteDifference'
//

// Include files
#include "jacobianFiniteDifference.h"
#include "CalculateT1Map_mex_internal_types.h"
#include "computeFiniteDifferences.h"
#include "rt_nonfinite.h"
#include "validateattributes.h"
#include "coder_array.h"

// Variable Definitions
static emlrtRSInfo fb_emlrtRSI{
    1,                          // lineNo
    "jacobianFiniteDifference", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\shared\\optimlib\\+optim\\+coder\\+"
    "levenbergMarquardt\\jacobianFiniteDifference.p" // pathName
};

static emlrtBCInfo v_emlrtBCI{
    -1,                         // iFirst
    -1,                         // iLast
    1,                          // lineNo
    1,                          // colNo
    "",                         // aName
    "jacobianFiniteDifference", // fName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\shared\\optimlib\\+optim\\+coder\\+"
    "levenbergMarquardt\\jacobianFiniteDifference.p", // pName
    0                                                 // checkKind
};

static emlrtECInfo f_emlrtECI{
    -1,                         // nDims
    1,                          // lineNo
    1,                          // colNo
    "jacobianFiniteDifference", // fName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\shared\\optimlib\\+optim\\+coder\\+"
    "levenbergMarquardt\\jacobianFiniteDifference.p" // pName
};

static emlrtRTEInfo nb_emlrtRTEI{
    1,                          // lineNo
    1,                          // colNo
    "jacobianFiniteDifference", // fName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\shared\\optimlib\\+optim\\+coder\\+"
    "levenbergMarquardt\\jacobianFiniteDifference.p" // pName
};

// Function Definitions
namespace coder {
namespace optim {
namespace coder {
namespace levenbergMarquardt {
boolean_T b_jacobianFiniteDifference(const emlrtStack &sp,
                                     ::coder::array<real_T, 2U> &augJacobian,
                                     const ::coder::array<real_T, 2U> &fCurrent,
                                     int32_T &funcCount, const real_T x[2],
                                     const real_T ub[2],
                                     const c_struct_T &FiniteDifferences)
{
  array<real_T, 2U> JacCeqTrans;
  c_struct_T b_FiniteDifferences;
  emlrtStack st;
  real_T a__3[2];
  int32_T b_JacCeqTrans[2];
  int32_T t6_f2[2];
  int32_T i;
  int32_T i1;
  int32_T loop_ub;
  boolean_T evalOK;
  st.prev = &sp;
  st.tls = sp.tls;
  emlrtHeapReferenceStackEnterFcnR2012b((emlrtConstCTX)&sp);
  t6_f2[0] = fCurrent.size(1) + 2;
  t6_f2[1] = 2;
  st.site = &fb_emlrtRSI;
  validateattributes(st, augJacobian, t6_f2);
  JacCeqTrans.set_size(&nb_emlrtRTEI, &sp, 2, fCurrent.size(1));
  a__3[0] = x[0];
  a__3[1] = x[1];
  b_FiniteDifferences = FiniteDifferences;
  st.site = &fb_emlrtRSI;
  evalOK = utils::FiniteDifferences::computeFiniteDifferences(
      st, b_FiniteDifferences, fCurrent, a__3, JacCeqTrans, ub);
  funcCount += b_FiniteDifferences.numEvals;
  if (fCurrent.size(1) < 1) {
    i1 = 0;
  } else {
    i = augJacobian.size(0);
    i1 = fCurrent.size(1);
    if ((i1 < 1) || (i1 > i)) {
      emlrtDynamicBoundsCheckR2012b(i1, 1, i, &v_emlrtBCI, (emlrtConstCTX)&sp);
    }
  }
  t6_f2[0] = i1;
  t6_f2[1] = 2;
  b_JacCeqTrans[0] = JacCeqTrans.size(1);
  b_JacCeqTrans[1] = 2;
  emlrtSubAssignSizeCheckR2012b(&t6_f2[0], 2, &b_JacCeqTrans[0], 2, &f_emlrtECI,
                                (emlrtCTX)&sp);
  loop_ub = JacCeqTrans.size(1);
  for (i = 0; i < 2; i++) {
    for (i1 = 0; i1 < loop_ub; i1++) {
      augJacobian[i1 + augJacobian.size(0) * i] = JacCeqTrans[i + 2 * i1];
    }
  }
  emlrtHeapReferenceStackLeaveFcnR2012b((emlrtConstCTX)&sp);
  return evalOK;
}

int32_T c_jacobianFiniteDifference(const emlrtStack &sp,
                                   ::coder::array<real_T, 2U> &augJacobian,
                                   const ::coder::array<real_T, 2U> &fCurrent,
                                   const real_T x[2], const real_T ub[2],
                                   c_struct_T &FiniteDifferences,
                                   boolean_T &evalOK)
{
  array<real_T, 2U> JacCeqTrans;
  emlrtStack st;
  real_T a__3[2];
  int32_T b_JacCeqTrans[2];
  int32_T t5_f2[2];
  int32_T funcCount;
  int32_T i;
  int32_T i1;
  int32_T loop_ub;
  st.prev = &sp;
  st.tls = sp.tls;
  emlrtHeapReferenceStackEnterFcnR2012b((emlrtConstCTX)&sp);
  t5_f2[0] = fCurrent.size(1) + 2;
  t5_f2[1] = 2;
  st.site = &fb_emlrtRSI;
  validateattributes(st, augJacobian, t5_f2);
  JacCeqTrans.set_size(&nb_emlrtRTEI, &sp, 2, fCurrent.size(1));
  a__3[0] = x[0];
  a__3[1] = x[1];
  st.site = &fb_emlrtRSI;
  evalOK = utils::FiniteDifferences::b_computeFiniteDifferences(
      st, FiniteDifferences, fCurrent, a__3, JacCeqTrans, ub);
  funcCount = FiniteDifferences.numEvals + 1;
  if (fCurrent.size(1) < 1) {
    i1 = 0;
  } else {
    i = augJacobian.size(0);
    i1 = fCurrent.size(1);
    if ((i1 < 1) || (i1 > i)) {
      emlrtDynamicBoundsCheckR2012b(i1, 1, i, &v_emlrtBCI, (emlrtConstCTX)&sp);
    }
  }
  t5_f2[0] = i1;
  t5_f2[1] = 2;
  b_JacCeqTrans[0] = JacCeqTrans.size(1);
  b_JacCeqTrans[1] = 2;
  emlrtSubAssignSizeCheckR2012b(&t5_f2[0], 2, &b_JacCeqTrans[0], 2, &f_emlrtECI,
                                (emlrtCTX)&sp);
  loop_ub = JacCeqTrans.size(1);
  for (i = 0; i < 2; i++) {
    for (i1 = 0; i1 < loop_ub; i1++) {
      augJacobian[i1 + augJacobian.size(0) * i] = JacCeqTrans[i + 2 * i1];
    }
  }
  emlrtHeapReferenceStackLeaveFcnR2012b((emlrtConstCTX)&sp);
  return funcCount;
}

boolean_T d_jacobianFiniteDifference(const emlrtStack &sp,
                                     ::coder::array<real_T, 2U> &augJacobian,
                                     const ::coder::array<real_T, 2U> &fCurrent,
                                     int32_T &funcCount, const real_T x[2],
                                     const real_T ub[2],
                                     const c_struct_T &FiniteDifferences)
{
  array<real_T, 2U> JacCeqTrans;
  c_struct_T b_FiniteDifferences;
  emlrtStack st;
  real_T a__3[2];
  int32_T b_JacCeqTrans[2];
  int32_T t4_f2[2];
  int32_T i;
  int32_T i1;
  int32_T loop_ub;
  boolean_T evalOK;
  st.prev = &sp;
  st.tls = sp.tls;
  emlrtHeapReferenceStackEnterFcnR2012b((emlrtConstCTX)&sp);
  t4_f2[0] = fCurrent.size(1) + 2;
  t4_f2[1] = 2;
  st.site = &fb_emlrtRSI;
  validateattributes(st, augJacobian, t4_f2);
  JacCeqTrans.set_size(&nb_emlrtRTEI, &sp, 2, fCurrent.size(1));
  a__3[0] = x[0];
  a__3[1] = x[1];
  b_FiniteDifferences = FiniteDifferences;
  st.site = &fb_emlrtRSI;
  evalOK = utils::FiniteDifferences::b_computeFiniteDifferences(
      st, b_FiniteDifferences, fCurrent, a__3, JacCeqTrans, ub);
  funcCount += b_FiniteDifferences.numEvals;
  if (fCurrent.size(1) < 1) {
    i1 = 0;
  } else {
    i = augJacobian.size(0);
    i1 = fCurrent.size(1);
    if ((i1 < 1) || (i1 > i)) {
      emlrtDynamicBoundsCheckR2012b(i1, 1, i, &v_emlrtBCI, (emlrtConstCTX)&sp);
    }
  }
  t4_f2[0] = i1;
  t4_f2[1] = 2;
  b_JacCeqTrans[0] = JacCeqTrans.size(1);
  b_JacCeqTrans[1] = 2;
  emlrtSubAssignSizeCheckR2012b(&t4_f2[0], 2, &b_JacCeqTrans[0], 2, &f_emlrtECI,
                                (emlrtCTX)&sp);
  loop_ub = JacCeqTrans.size(1);
  for (i = 0; i < 2; i++) {
    for (i1 = 0; i1 < loop_ub; i1++) {
      augJacobian[i1 + augJacobian.size(0) * i] = JacCeqTrans[i + 2 * i1];
    }
  }
  emlrtHeapReferenceStackLeaveFcnR2012b((emlrtConstCTX)&sp);
  return evalOK;
}

int32_T e_jacobianFiniteDifference(const emlrtStack &sp,
                                   ::coder::array<real_T, 2U> &augJacobian,
                                   const ::coder::array<real_T, 2U> &fCurrent,
                                   const real_T x[2], const real_T ub[2],
                                   c_struct_T &FiniteDifferences,
                                   boolean_T &evalOK)
{
  array<real_T, 2U> JacCeqTrans;
  emlrtStack st;
  real_T a__3[2];
  int32_T b_JacCeqTrans[2];
  int32_T t3_f2[2];
  int32_T funcCount;
  int32_T i;
  int32_T i1;
  int32_T loop_ub;
  st.prev = &sp;
  st.tls = sp.tls;
  emlrtHeapReferenceStackEnterFcnR2012b((emlrtConstCTX)&sp);
  t3_f2[0] = fCurrent.size(1) + 2;
  t3_f2[1] = 2;
  st.site = &fb_emlrtRSI;
  validateattributes(st, augJacobian, t3_f2);
  JacCeqTrans.set_size(&nb_emlrtRTEI, &sp, 2, fCurrent.size(1));
  a__3[0] = x[0];
  a__3[1] = x[1];
  st.site = &fb_emlrtRSI;
  evalOK = utils::FiniteDifferences::c_computeFiniteDifferences(
      st, FiniteDifferences, fCurrent, a__3, JacCeqTrans, ub);
  funcCount = FiniteDifferences.numEvals + 1;
  if (fCurrent.size(1) < 1) {
    i1 = 0;
  } else {
    i = augJacobian.size(0);
    i1 = fCurrent.size(1);
    if ((i1 < 1) || (i1 > i)) {
      emlrtDynamicBoundsCheckR2012b(i1, 1, i, &v_emlrtBCI, (emlrtConstCTX)&sp);
    }
  }
  t3_f2[0] = i1;
  t3_f2[1] = 2;
  b_JacCeqTrans[0] = JacCeqTrans.size(1);
  b_JacCeqTrans[1] = 2;
  emlrtSubAssignSizeCheckR2012b(&t3_f2[0], 2, &b_JacCeqTrans[0], 2, &f_emlrtECI,
                                (emlrtCTX)&sp);
  loop_ub = JacCeqTrans.size(1);
  for (i = 0; i < 2; i++) {
    for (i1 = 0; i1 < loop_ub; i1++) {
      augJacobian[i1 + augJacobian.size(0) * i] = JacCeqTrans[i + 2 * i1];
    }
  }
  emlrtHeapReferenceStackLeaveFcnR2012b((emlrtConstCTX)&sp);
  return funcCount;
}

boolean_T f_jacobianFiniteDifference(const emlrtStack &sp,
                                     ::coder::array<real_T, 2U> &augJacobian,
                                     const ::coder::array<real_T, 2U> &fCurrent,
                                     int32_T &funcCount, const real_T x[2],
                                     const real_T ub[2],
                                     const c_struct_T &FiniteDifferences)
{
  array<real_T, 2U> JacCeqTrans;
  c_struct_T b_FiniteDifferences;
  emlrtStack st;
  real_T a__3[2];
  int32_T b_JacCeqTrans[2];
  int32_T t0_f2[2];
  int32_T i;
  int32_T i1;
  int32_T loop_ub;
  boolean_T evalOK;
  st.prev = &sp;
  st.tls = sp.tls;
  emlrtHeapReferenceStackEnterFcnR2012b((emlrtConstCTX)&sp);
  t0_f2[0] = fCurrent.size(1) + 2;
  t0_f2[1] = 2;
  st.site = &fb_emlrtRSI;
  validateattributes(st, augJacobian, t0_f2);
  JacCeqTrans.set_size(&nb_emlrtRTEI, &sp, 2, fCurrent.size(1));
  a__3[0] = x[0];
  a__3[1] = x[1];
  b_FiniteDifferences = FiniteDifferences;
  st.site = &fb_emlrtRSI;
  evalOK = utils::FiniteDifferences::c_computeFiniteDifferences(
      st, b_FiniteDifferences, fCurrent, a__3, JacCeqTrans, ub);
  funcCount += b_FiniteDifferences.numEvals;
  if (fCurrent.size(1) < 1) {
    i1 = 0;
  } else {
    i = augJacobian.size(0);
    i1 = fCurrent.size(1);
    if ((i1 < 1) || (i1 > i)) {
      emlrtDynamicBoundsCheckR2012b(i1, 1, i, &v_emlrtBCI, (emlrtConstCTX)&sp);
    }
  }
  t0_f2[0] = i1;
  t0_f2[1] = 2;
  b_JacCeqTrans[0] = JacCeqTrans.size(1);
  b_JacCeqTrans[1] = 2;
  emlrtSubAssignSizeCheckR2012b(&t0_f2[0], 2, &b_JacCeqTrans[0], 2, &f_emlrtECI,
                                (emlrtCTX)&sp);
  loop_ub = JacCeqTrans.size(1);
  for (i = 0; i < 2; i++) {
    for (i1 = 0; i1 < loop_ub; i1++) {
      augJacobian[i1 + augJacobian.size(0) * i] = JacCeqTrans[i + 2 * i1];
    }
  }
  emlrtHeapReferenceStackLeaveFcnR2012b((emlrtConstCTX)&sp);
  return evalOK;
}

int32_T jacobianFiniteDifference(const emlrtStack &sp,
                                 ::coder::array<real_T, 2U> &augJacobian,
                                 const ::coder::array<real_T, 2U> &fCurrent,
                                 const real_T x[2], const real_T ub[2],
                                 c_struct_T &FiniteDifferences,
                                 boolean_T &evalOK)
{
  array<real_T, 2U> JacCeqTrans;
  emlrtStack st;
  real_T a__3[2];
  int32_T b_JacCeqTrans[2];
  int32_T t7_f2[2];
  int32_T funcCount;
  int32_T i;
  int32_T i1;
  int32_T loop_ub;
  st.prev = &sp;
  st.tls = sp.tls;
  emlrtHeapReferenceStackEnterFcnR2012b((emlrtConstCTX)&sp);
  t7_f2[0] = fCurrent.size(1) + 2;
  t7_f2[1] = 2;
  st.site = &fb_emlrtRSI;
  validateattributes(st, augJacobian, t7_f2);
  JacCeqTrans.set_size(&nb_emlrtRTEI, &sp, 2, fCurrent.size(1));
  a__3[0] = x[0];
  a__3[1] = x[1];
  st.site = &fb_emlrtRSI;
  evalOK = utils::FiniteDifferences::computeFiniteDifferences(
      st, FiniteDifferences, fCurrent, a__3, JacCeqTrans, ub);
  funcCount = FiniteDifferences.numEvals + 1;
  if (fCurrent.size(1) < 1) {
    i1 = 0;
  } else {
    i = augJacobian.size(0);
    i1 = fCurrent.size(1);
    if ((i1 < 1) || (i1 > i)) {
      emlrtDynamicBoundsCheckR2012b(i1, 1, i, &v_emlrtBCI, (emlrtConstCTX)&sp);
    }
  }
  t7_f2[0] = i1;
  t7_f2[1] = 2;
  b_JacCeqTrans[0] = JacCeqTrans.size(1);
  b_JacCeqTrans[1] = 2;
  emlrtSubAssignSizeCheckR2012b(&t7_f2[0], 2, &b_JacCeqTrans[0], 2, &f_emlrtECI,
                                (emlrtCTX)&sp);
  loop_ub = JacCeqTrans.size(1);
  for (i = 0; i < 2; i++) {
    for (i1 = 0; i1 < loop_ub; i1++) {
      augJacobian[i1 + augJacobian.size(0) * i] = JacCeqTrans[i + 2 * i1];
    }
  }
  emlrtHeapReferenceStackLeaveFcnR2012b((emlrtConstCTX)&sp);
  return funcCount;
}

} // namespace levenbergMarquardt
} // namespace coder
} // namespace optim
} // namespace coder

// End of code generation (jacobianFiniteDifference.cpp)
