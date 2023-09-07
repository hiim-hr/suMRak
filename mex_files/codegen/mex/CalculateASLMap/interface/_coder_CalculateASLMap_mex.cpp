//
// Student License - for use by students to meet course requirements and
// perform academic research at degree granting institutions only.  Not
// for government, commercial, or other organizational use.
//
// _coder_CalculateASLMap_mex.cpp
//
// Code generation for function '_coder_CalculateASLMap_mex'
//

// Include files
#include "_coder_CalculateASLMap_mex.h"
#include "CalculateASLMap_data.h"
#include "CalculateASLMap_initialize.h"
#include "CalculateASLMap_terminate.h"
#include "_coder_CalculateASLMap_api.h"
#include "rt_nonfinite.h"
#include <stdexcept>

void emlrtExceptionBridge();
void emlrtExceptionBridge()
{
  throw std::runtime_error("");
}
// Function Definitions
void CalculateASLMap_mexFunction(int32_T nlhs, mxArray *plhs[1], int32_T nrhs,
                                 const mxArray *prhs[5])
{
  emlrtStack st{
      nullptr, // site
      nullptr, // tls
      nullptr  // prev
  };
  const mxArray *outputs;
  st.tls = emlrtRootTLSGlobal;
  // Check for proper number of arguments.
  if (nrhs != 5) {
    emlrtErrMsgIdAndTxt(&st, "EMLRT:runTime:WrongNumberOfInputs", 5, 12, 5, 4,
                        15, "CalculateASLMap");
  }
  if (nlhs > 1) {
    emlrtErrMsgIdAndTxt(&st, "EMLRT:runTime:TooManyOutputArguments", 3, 4, 15,
                        "CalculateASLMap");
  }
  // Call the function.
  CalculateASLMap_api(prhs, &outputs);
  // Copy over outputs to the caller.
  emlrtReturnArrays(1, &plhs[0], &outputs);
}

void mexFunction(int32_T nlhs, mxArray *plhs[], int32_T nrhs,
                 const mxArray *prhs[])
{
  mexAtExit(&CalculateASLMap_atexit);
  // Module initialization.
  CalculateASLMap_initialize();
  try {
    // Dispatch the entry-point.
    CalculateASLMap_mexFunction(nlhs, plhs, nrhs, prhs);
    // Module termination.
    CalculateASLMap_terminate();
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

// End of code generation (_coder_CalculateASLMap_mex.cpp)
