//
// Student License - for use by students to meet course requirements and
// perform academic research at degree granting institutions only.  Not
// for government, commercial, or other organizational use.
//
// CalculateT1Map_terminate.cpp
//
// Code generation for function 'CalculateT1Map_terminate'
//

// Include files
#include "CalculateT1Map_terminate.h"
#include "CalculateT1Map_data.h"
#include "_coder_CalculateT1Map_mex.h"
#include "rt_nonfinite.h"

// Function Definitions
void CalculateT1Map_atexit()
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

void CalculateT1Map_terminate()
{
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
}

// End of code generation (CalculateT1Map_terminate.cpp)
