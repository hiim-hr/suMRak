//
// Student License - for use by students to meet course requirements and
// perform academic research at degree granting institutions only.  Not
// for government, commercial, or other organizational use.
//
// _coder_CalculateT2Map_mex.cpp
//
// Code generation for function '_coder_CalculateT2Map_mex'
//

// Include files
#include "_coder_CalculateT2Map_mex.h"
#include "CalculateT2Map_data.h"
#include "CalculateT2Map_initialize.h"
#include "CalculateT2Map_terminate.h"
#include "_coder_CalculateT2Map_api.h"
#include "rt_nonfinite.h"
#include <stdexcept>

void emlrtExceptionBridge();
void emlrtExceptionBridge()
{
  throw std::runtime_error("");
}
// Function Definitions
void CalculateT2Map_mexFunction(int32_T nlhs, mxArray *plhs[1], int32_T nrhs,
                                const mxArray *prhs[2])
{
  emlrtStack st{
      nullptr, // site
      nullptr, // tls
      nullptr  // prev
  };
  const mxArray *outputs;
  st.tls = emlrtRootTLSGlobal;
  // Check for proper number of arguments.
  if (nrhs != 2) {
    emlrtErrMsgIdAndTxt(&st, "EMLRT:runTime:WrongNumberOfInputs", 5, 12, 2, 4,
                        14, "CalculateT2Map");
  }
  if (nlhs > 1) {
    emlrtErrMsgIdAndTxt(&st, "EMLRT:runTime:TooManyOutputArguments", 3, 4, 14,
                        "CalculateT2Map");
  }
  // Call the function.
  CalculateT2Map_api(prhs, &outputs);
  // Copy over outputs to the caller.
  emlrtReturnArrays(1, &plhs[0], &outputs);
}

void mexFunction(int32_T nlhs, mxArray *plhs[], int32_T nrhs,
                 const mxArray *prhs[])
{
  mexAtExit(&CalculateT2Map_atexit);
  // Module initialization.
  CalculateT2Map_initialize();
  try {
    // Dispatch the entry-point.
    CalculateT2Map_mexFunction(nlhs, plhs, nrhs, prhs);
    // Module termination.
    CalculateT2Map_terminate();
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

// End of code generation (_coder_CalculateT2Map_mex.cpp)
