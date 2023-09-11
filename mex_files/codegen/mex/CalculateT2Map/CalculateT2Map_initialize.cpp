//
// Student License - for use by students to meet course requirements and
// perform academic research at degree granting institutions only.  Not
// for government, commercial, or other organizational use.
//
// CalculateT2Map_initialize.cpp
//
// Code generation for function 'CalculateT2Map_initialize'
//

// Include files
#include "CalculateT2Map_initialize.h"
#include "CalculateT2Map_data.h"
#include "_coder_CalculateT2Map_mex.h"
#include "rt_nonfinite.h"

// Function Declarations
static void CalculateT2Map_once();

// Function Definitions
static void CalculateT2Map_once()
{
  mex_InitInfAndNan();
}

void CalculateT2Map_initialize()
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
    CalculateT2Map_once();
  }
}

// End of code generation (CalculateT2Map_initialize.cpp)
