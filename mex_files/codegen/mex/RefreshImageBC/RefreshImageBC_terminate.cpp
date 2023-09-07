//
// Student License - for use by students to meet course requirements and
// perform academic research at degree granting institutions only.  Not
// for government, commercial, or other organizational use.
//
// RefreshImageBC_terminate.cpp
//
// Code generation for function 'RefreshImageBC_terminate'
//

// Include files
#include "RefreshImageBC_terminate.h"
#include "RefreshImageBC_data.h"
#include "_coder_RefreshImageBC_mex.h"
#include "rt_nonfinite.h"

// Function Definitions
void RefreshImageBC_atexit()
{
  emlrtStack st{
      nullptr, // site
      nullptr, // tls
      nullptr  // prev
  };
  mexFunctionCreateRootTLS();
  st.tls = emlrtRootTLSGlobal;
  emlrtEnterRtStackR2012b(&st);
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
  emlrtExitTimeCleanup(&emlrtContextGlobal);
}

void RefreshImageBC_terminate()
{
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
}

// End of code generation (RefreshImageBC_terminate.cpp)
