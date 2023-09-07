//
// Student License - for use by students to meet course requirements and
// perform academic research at degree granting institutions only.  Not
// for government, commercial, or other organizational use.
//
// CalculateASLMap_terminate.cpp
//
// Code generation for function 'CalculateASLMap_terminate'
//

// Include files
#include "CalculateASLMap_terminate.h"
#include "CalculateASLMap_data.h"
#include "_coder_CalculateASLMap_mex.h"
#include "rt_nonfinite.h"

// Function Definitions
void CalculateASLMap_atexit()
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

void CalculateASLMap_terminate()
{
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
}

// End of code generation (CalculateASLMap_terminate.cpp)
