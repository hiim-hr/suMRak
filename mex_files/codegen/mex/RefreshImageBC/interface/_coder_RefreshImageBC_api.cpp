//
// Student License - for use by students to meet course requirements and
// perform academic research at degree granting institutions only.  Not
// for government, commercial, or other organizational use.
//
// _coder_RefreshImageBC_api.cpp
//
// Code generation for function '_coder_RefreshImageBC_api'
//

// Include files
#include "_coder_RefreshImageBC_api.h"
#include "RefreshImageBC.h"
#include "RefreshImageBC_data.h"
#include "rt_nonfinite.h"
#include "coder_array.h"

// Function Declarations
static void b_emlrt_marshallIn(const emlrtStack &sp, const mxArray *src,
                               const emlrtMsgIdentifier *msgId,
                               coder::array<real_T, 2U> &ret);

static real_T b_emlrt_marshallIn(const emlrtStack &sp, const mxArray *src,
                                 const emlrtMsgIdentifier *msgId);

static void emlrt_marshallIn(const emlrtStack &sp, const mxArray *CurrentSlice,
                             const char_T *identifier,
                             coder::array<real_T, 2U> &y);

static void emlrt_marshallIn(const emlrtStack &sp, const mxArray *u,
                             const emlrtMsgIdentifier *parentId,
                             coder::array<real_T, 2U> &y);

static real_T emlrt_marshallIn(const emlrtStack &sp,
                               const mxArray *ContrastSliderValue,
                               const char_T *identifier);

static real_T emlrt_marshallIn(const emlrtStack &sp, const mxArray *u,
                               const emlrtMsgIdentifier *parentId);

static void emlrt_marshallOut(const coder::array<real_T, 2U> &u,
                              const mxArray *y);

// Function Definitions
static void b_emlrt_marshallIn(const emlrtStack &sp, const mxArray *src,
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

static real_T b_emlrt_marshallIn(const emlrtStack &sp, const mxArray *src,
                                 const emlrtMsgIdentifier *msgId)
{
  static const int32_T dims{0};
  real_T ret;
  emlrtCheckBuiltInR2012b((emlrtConstCTX)&sp, msgId, src, "double", false, 0U,
                          (const void *)&dims);
  ret = *static_cast<real_T *>(emlrtMxGetData(src));
  emlrtDestroyArray(&src);
  return ret;
}

static void emlrt_marshallIn(const emlrtStack &sp, const mxArray *CurrentSlice,
                             const char_T *identifier,
                             coder::array<real_T, 2U> &y)
{
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = const_cast<const char_T *>(identifier);
  thisId.fParent = nullptr;
  thisId.bParentIsCell = false;
  emlrt_marshallIn(sp, emlrtAlias(CurrentSlice), &thisId, y);
  emlrtDestroyArray(&CurrentSlice);
}

static void emlrt_marshallIn(const emlrtStack &sp, const mxArray *u,
                             const emlrtMsgIdentifier *parentId,
                             coder::array<real_T, 2U> &y)
{
  b_emlrt_marshallIn(sp, emlrtAlias(u), parentId, y);
  emlrtDestroyArray(&u);
}

static real_T emlrt_marshallIn(const emlrtStack &sp,
                               const mxArray *ContrastSliderValue,
                               const char_T *identifier)
{
  emlrtMsgIdentifier thisId;
  real_T y;
  thisId.fIdentifier = const_cast<const char_T *>(identifier);
  thisId.fParent = nullptr;
  thisId.bParentIsCell = false;
  y = emlrt_marshallIn(sp, emlrtAlias(ContrastSliderValue), &thisId);
  emlrtDestroyArray(&ContrastSliderValue);
  return y;
}

static real_T emlrt_marshallIn(const emlrtStack &sp, const mxArray *u,
                               const emlrtMsgIdentifier *parentId)
{
  real_T y;
  y = b_emlrt_marshallIn(sp, emlrtAlias(u), parentId);
  emlrtDestroyArray(&u);
  return y;
}

static void emlrt_marshallOut(const coder::array<real_T, 2U> &u,
                              const mxArray *y)
{
  emlrtMxSetData((mxArray *)y, &(((coder::array<real_T, 2U> *)&u)->data())[0]);
  emlrtSetDimensions((mxArray *)y, ((coder::array<real_T, 2U> *)&u)->size(), 2);
}

void RefreshImageBC_api(const mxArray *const prhs[3], const mxArray **plhs)
{
  coder::array<real_T, 2U> CurrentSlice;
  emlrtStack st{
      nullptr, // site
      nullptr, // tls
      nullptr  // prev
  };
  const mxArray *prhs_copy_idx_0;
  real_T BrightnessSliderValue;
  real_T ContrastSliderValue;
  st.tls = emlrtRootTLSGlobal;
  emlrtHeapReferenceStackEnterFcnR2012b(&st);
  prhs_copy_idx_0 = emlrtProtectR2012b(prhs[0], 0, true, -1);
  // Marshall function inputs
  CurrentSlice.no_free();
  emlrt_marshallIn(st, emlrtAlias(prhs_copy_idx_0), "CurrentSlice",
                   CurrentSlice);
  ContrastSliderValue =
      emlrt_marshallIn(st, emlrtAliasP(prhs[1]), "ContrastSliderValue");
  BrightnessSliderValue =
      emlrt_marshallIn(st, emlrtAliasP(prhs[2]), "BrightnessSliderValue");
  // Invoke the target function
  RefreshImageBC(&st, CurrentSlice, ContrastSliderValue, BrightnessSliderValue);
  // Marshall function outputs
  CurrentSlice.no_free();
  emlrt_marshallOut(CurrentSlice, prhs_copy_idx_0);
  *plhs = prhs_copy_idx_0;
  emlrtHeapReferenceStackLeaveFcnR2012b(&st);
}

// End of code generation (_coder_RefreshImageBC_api.cpp)
