//
// Student License - for use by students to meet course requirements and
// perform academic research at degree granting institutions only.  Not
// for government, commercial, or other organizational use.
//
// RefreshImageBC_initialize.cpp
//
// Code generation for function 'RefreshImageBC_initialize'
//

// Include files
#include "RefreshImageBC_initialize.h"
#include "RefreshImageBC_data.h"
#include "_coder_RefreshImageBC_mex.h"
#include "rt_nonfinite.h"

// Function Declarations
static void RefreshImageBC_once();

// Function Definitions
static void RefreshImageBC_once()
{
  mex_InitInfAndNan();
}

void RefreshImageBC_initialize()
{
  static const volatile char_T *emlrtBreakCheckR2012bFlagVar{nullptr};
  emlrtStack st{
      nullptr, // site
      nullptr, // tls
      nullptr  // prev
  };
  mexFunctionCreateRootTLS();
  st.tls = emlrtRootTLSGlobal;
  emlrtBreakCheckR2012bFlagVar = emlrtGetBreakCheckFlagAddressR2022b(&st);
  emlrtClearAllocCountR2012b(&st, false, 0U, nullptr);
  emlrtEnterRtStackR2012b(&st);
  if (emlrtFirstTimeR2012b(emlrtRootTLSGlobal)) {
    RefreshImageBC_once();
  }
}

// End of code generation (RefreshImageBC_initialize.cpp)
