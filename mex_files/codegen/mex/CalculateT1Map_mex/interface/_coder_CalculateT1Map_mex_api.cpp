//
// Student License - for use by students to meet course requirements and
// perform academic research at degree granting institutions only.  Not
// for government, commercial, or other organizational use.
//
// _coder_CalculateT1Map_mex_api.cpp
//
// Code generation for function '_coder_CalculateT1Map_mex_api'
//

// Include files
#include "_coder_CalculateT1Map_mex_api.h"
#include "CalculateT1Map.h"
#include "CalculateT1Map_mex_data.h"
#include "CalculateT2Map.h"
#include "rt_nonfinite.h"
#include "coder_array.h"

// Function Declarations
static void b_emlrt_marshallIn(const emlrtStack &sp, const mxArray *tvalues,
                               const char_T *identifier,
                               coder::array<real_T, 2U> &y);

static void b_emlrt_marshallIn(const emlrtStack &sp, const mxArray *u,
                               const emlrtMsgIdentifier *parentId,
                               coder::array<real_T, 2U> &y);

static void c_emlrt_marshallIn(const emlrtStack &sp, const mxArray *src,
                               const emlrtMsgIdentifier *msgId,
                               coder::array<real_T, 2U> &ret);

static void d_emlrt_marshallIn(const emlrtStack &sp, const mxArray *src,
                               const emlrtMsgIdentifier *msgId,
                               coder::array<real_T, 2U> &ret);

static void emlrt_marshallIn(const emlrtStack &sp,
                             const mxArray *T1raw_reordered_reshaped,
                             const char_T *identifier,
                             coder::array<real_T, 2U> &y);

static void emlrt_marshallIn(const emlrtStack &sp, const mxArray *u,
                             const emlrtMsgIdentifier *parentId,
                             coder::array<real_T, 2U> &y);

static const mxArray *emlrt_marshallOut(const coder::array<real_T, 2U> &u);

// Function Definitions
static void b_emlrt_marshallIn(const emlrtStack &sp, const mxArray *tvalues,
                               const char_T *identifier,
                               coder::array<real_T, 2U> &y)
{
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = const_cast<const char_T *>(identifier);
  thisId.fParent = nullptr;
  thisId.bParentIsCell = false;
  b_emlrt_marshallIn(sp, emlrtAlias(tvalues), &thisId, y);
  emlrtDestroyArray(&tvalues);
}

static void b_emlrt_marshallIn(const emlrtStack &sp, const mxArray *u,
                               const emlrtMsgIdentifier *parentId,
                               coder::array<real_T, 2U> &y)
{
  d_emlrt_marshallIn(sp, emlrtAlias(u), parentId, y);
  emlrtDestroyArray(&u);
}

static void c_emlrt_marshallIn(const emlrtStack &sp, const mxArray *src,
                               const emlrtMsgIdentifier *msgId,
                               coder::array<real_T, 2U> &ret)
{
  static const int32_T dims[2]{-1, -1};
  int32_T iv[2];
  boolean_T bv[2]{true, true};
  emlrtCheckVsBuiltInR2012b((emlrtConstCTX)&sp, msgId, src, "double", false, 2U,
                            (const void *)&dims[0], &bv[0], &iv[0]);
  ret.prealloc(iv[0] * iv[1]);
  ret.set_size(static_cast<emlrtRTEInfo *>(nullptr), &sp, iv[0], iv[1]);
  ret.set(static_cast<real_T *>(emlrtMxGetData(src)), ret.size(0), ret.size(1));
  emlrtDestroyArray(&src);
}

static void d_emlrt_marshallIn(const emlrtStack &sp, const mxArray *src,
                               const emlrtMsgIdentifier *msgId,
                               coder::array<real_T, 2U> &ret)
{
  static const int32_T dims[2]{1, -1};
  int32_T iv[2];
  boolean_T bv[2]{false, true};
  emlrtCheckVsBuiltInR2012b((emlrtConstCTX)&sp, msgId, src, "double", false, 2U,
                            (const void *)&dims[0], &bv[0], &iv[0]);
  ret.prealloc(iv[0] * iv[1]);
  ret.set_size(static_cast<emlrtRTEInfo *>(nullptr), &sp, iv[0], iv[1]);
  ret.set(static_cast<real_T *>(emlrtMxGetData(src)), ret.size(0), ret.size(1));
  emlrtDestroyArray(&src);
}

static void emlrt_marshallIn(const emlrtStack &sp,
                             const mxArray *T1raw_reordered_reshaped,
                             const char_T *identifier,
                             coder::array<real_T, 2U> &y)
{
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = const_cast<const char_T *>(identifier);
  thisId.fParent = nullptr;
  thisId.bParentIsCell = false;
  emlrt_marshallIn(sp, emlrtAlias(T1raw_reordered_reshaped), &thisId, y);
  emlrtDestroyArray(&T1raw_reordered_reshaped);
}

static void emlrt_marshallIn(const emlrtStack &sp, const mxArray *u,
                             const emlrtMsgIdentifier *parentId,
                             coder::array<real_T, 2U> &y)
{
  c_emlrt_marshallIn(sp, emlrtAlias(u), parentId, y);
  emlrtDestroyArray(&u);
}

static const mxArray *emlrt_marshallOut(const coder::array<real_T, 2U> &u)
{
  static const int32_T iv[2]{0, 0};
  const mxArray *m;
  const mxArray *y;
  y = nullptr;
  m = emlrtCreateNumericArray(2, (const void *)&iv[0], mxDOUBLE_CLASS, mxREAL);
  emlrtMxSetData((mxArray *)m, &(((coder::array<real_T, 2U> *)&u)->data())[0]);
  emlrtSetDimensions((mxArray *)m, ((coder::array<real_T, 2U> *)&u)->size(), 2);
  emlrtAssign(&y, m);
  return y;
}

void CalculateT1Map_api(const mxArray *const prhs[3], const mxArray **plhs)
{
  coder::array<real_T, 2U> T1raw_reordered_reshaped;
  coder::array<real_T, 2U> coeffs;
  coder::array<real_T, 2U> ivalues;
  coder::array<real_T, 2U> tvalues;
  emlrtStack st{
      nullptr, // site
      nullptr, // tls
      nullptr  // prev
  };
  const mxArray *prhs_copy_idx_0;
  st.tls = emlrtRootTLSGlobal;
  emlrtHeapReferenceStackEnterFcnR2012b(&st);
  prhs_copy_idx_0 = emlrtProtectR2012b(prhs[0], 0, false, -1);
  // Marshall function inputs
  T1raw_reordered_reshaped.no_free();
  emlrt_marshallIn(st, emlrtAlias(prhs_copy_idx_0), "T1raw_reordered_reshaped",
                   T1raw_reordered_reshaped);
  tvalues.no_free();
  b_emlrt_marshallIn(st, emlrtAlias(prhs[1]), "tvalues", tvalues);
  ivalues.no_free();
  b_emlrt_marshallIn(st, emlrtAlias(prhs[2]), "ivalues", ivalues);
  // Invoke the target function
  CalculateT1Map(&st, T1raw_reordered_reshaped, tvalues, ivalues, coeffs);
  // Marshall function outputs
  coeffs.no_free();
  *plhs = emlrt_marshallOut(coeffs);
  emlrtHeapReferenceStackLeaveFcnR2012b(&st);
}

void CalculateT2Map_api(const mxArray *const prhs[2], const mxArray **plhs)
{
  coder::array<real_T, 2U> T2raw_reordered_reshaped;
  coder::array<real_T, 2U> coeffs;
  coder::array<real_T, 2U> tvalues;
  emlrtStack st{
      nullptr, // site
      nullptr, // tls
      nullptr  // prev
  };
  const mxArray *prhs_copy_idx_0;
  st.tls = emlrtRootTLSGlobal;
  emlrtHeapReferenceStackEnterFcnR2012b(&st);
  prhs_copy_idx_0 = emlrtProtectR2012b(prhs[0], 0, false, -1);
  // Marshall function inputs
  T2raw_reordered_reshaped.no_free();
  emlrt_marshallIn(st, emlrtAlias(prhs_copy_idx_0), "T2raw_reordered_reshaped",
                   T2raw_reordered_reshaped);
  tvalues.no_free();
  b_emlrt_marshallIn(st, emlrtAlias(prhs[1]), "tvalues", tvalues);
  // Invoke the target function
  CalculateT2Map(&st, T2raw_reordered_reshaped, tvalues, coeffs);
  // Marshall function outputs
  coeffs.no_free();
  *plhs = emlrt_marshallOut(coeffs);
  emlrtHeapReferenceStackLeaveFcnR2012b(&st);
}

// End of code generation (_coder_CalculateT1Map_mex_api.cpp)
