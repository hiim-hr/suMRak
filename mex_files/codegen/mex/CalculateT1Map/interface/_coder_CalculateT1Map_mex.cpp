//
// Student License - for use by students to meet course requirements and
// perform academic research at degree granting institutions only.  Not
// for government, commercial, or other organizational use.
//
// _coder_CalculateT1Map_mex.cpp
//
// Code generation for function '_coder_CalculateT1Map_mex'
//

// Include files
#include "_coder_CalculateT1Map_mex.h"
#include "CalculateT1Map_data.h"
#include "CalculateT1Map_initialize.h"
#include "CalculateT1Map_terminate.h"
#include "_coder_CalculateT1Map_api.h"
#include "rt_nonfinite.h"
#include <stdexcept>

void emlrtExceptionBridge();
void emlrtExceptionBridge()
{
  throw std::runtime_error("");
}
// Function Definitions
void CalculateT1Map_mexFunction(int32_T nlhs, mxArray *plhs[1], int32_T nrhs,
                                const mxArray *prhs[3])
{
  emlrtStack st{
      nullptr, // site
      nullptr, // tls
      nullptr  // prev
  };
  const mxArray *outputs;
  st.tls = emlrtRootTLSGlobal;
  // Check for proper number of arguments.
  if (nrhs != 3) {
    emlrtErrMsgIdAndTxt(&st, "EMLRT:runTime:WrongNumberOfInputs", 5, 12, 3, 4,
                        14, "CalculateT1Map");
  }
  if (nlhs > 1) {
    emlrtErrMsgIdAndTxt(&st, "EMLRT:runTime:TooManyOutputArguments", 3, 4, 14,
                        "CalculateT1Map");
  }
  // Call the function.
  CalculateT1Map_api(prhs, &outputs);
  // Copy over outputs to the caller.
  emlrtReturnArrays(1, &plhs[0], &outputs);
}

void mexFunction(int32_T nlhs, mxArray *plhs[], int32_T nrhs,
                 const mxArray *prhs[])
{
  mexAtExit(&CalculateT1Map_atexit);
  // Module initialization.
  CalculateT1Map_initialize();
  try {
    // Dispatch the entry-point.
    CalculateT1Map_mexFunction(nlhs, plhs, nrhs, prhs);
    // Module termination.
    CalculateT1Map_terminate();
  } catch (...) {
    emlrtCleanupOnException((emlrtCTX *)emlrtRootTLSGlobal);
    throw;
  }
}

emlrtCTX mexFunctionCreateRootTLS()
{
  emlrtCreateRootTLSR2022a(&emlrtRootTLSGlobal, &emlrtContextGlobal, nullptr, 1,
                           (void *)&emlrtExceptionBridge, "windows-1250", true);
  return emlrtRootTLSGlobal;
}

// End of code generation (_coder_CalculateT1Map_mex.cpp)
