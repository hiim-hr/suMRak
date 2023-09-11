//
// Student License - for use by students to meet course requirements and
// perform academic research at degree granting institutions only.  Not
// for government, commercial, or other organizational use.
//
// CalculateT1Map_initialize.cpp
//
// Code generation for function 'CalculateT1Map_initialize'
//

// Include files
#include "CalculateT1Map_initialize.h"
#include "CalculateT1Map_data.h"
#include "_coder_CalculateT1Map_mex.h"
#include "rt_nonfinite.h"

// Function Declarations
static void CalculateT1Map_once();

// Function Definitions
static void CalculateT1Map_once()
{
  mex_InitInfAndNan();
}

void CalculateT1Map_initialize()
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
    CalculateT1Map_once();
  }
}

// End of code generation (CalculateT1Map_initialize.cpp)
