//
// Student License - for use by students to meet course requirements and
// perform academic research at degree granting institutions only.  Not
// for government, commercial, or other organizational use.
//
// CalculateASLMap_initialize.cpp
//
// Code generation for function 'CalculateASLMap_initialize'
//

// Include files
#include "CalculateASLMap_initialize.h"
#include "CalculateASLMap_data.h"
#include "_coder_CalculateASLMap_mex.h"
#include "rt_nonfinite.h"

// Function Declarations
static void CalculateASLMap_once();

// Function Definitions
static void CalculateASLMap_once()
{
  mex_InitInfAndNan();
}

void CalculateASLMap_initialize()
{
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
  emlrtLicenseCheckR2022a(&st, "EMLRT:runTime:MexFunctionNeedsLicense",
                          "optimization_toolbox", 2);
  if (emlrtFirstTimeR2012b(emlrtRootTLSGlobal)) {
    CalculateASLMap_once();
  }
}

// End of code generation (CalculateASLMap_initialize.cpp)
