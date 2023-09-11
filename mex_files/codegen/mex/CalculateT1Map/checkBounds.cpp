//
// Student License - for use by students to meet course requirements and
// perform academic research at degree granting institutions only.  Not
// for government, commercial, or other organizational use.
//
// checkBounds.cpp
//
// Code generation for function 'checkBounds'
//

// Include files
#include "checkBounds.h"
#include "rt_nonfinite.h"
#include "mwmathutil.h"

// Variable Definitions
static emlrtRTEInfo d_emlrtRTEI{
    1,             // lineNo
    1,             // colNo
    "checkBounds", // fName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\shared\\optimlib\\+optim\\+coder\\+"
    "validate\\checkBounds.p" // pName
};

// Function Definitions
namespace coder {
namespace optim {
namespace coder {
namespace validate {
void checkBounds(const emlrtStack &sp, const real_T ub[2])
{
  int32_T k;
  boolean_T varargin_1[2];
  boolean_T exitg1;
  boolean_T guard1;
  boolean_T y;
  varargin_1[0] = (ub[0] <= rtMinusInf);
  varargin_1[1] = (ub[1] <= rtMinusInf);
  y = false;
  k = 0;
  exitg1 = false;
  while ((!exitg1) && (k < 2)) {
    if (varargin_1[k]) {
      y = true;
      exitg1 = true;
    } else {
      k++;
    }
  }
  guard1 = false;
  if (y) {
    guard1 = true;
  } else {
    varargin_1[0] = muDoubleScalarIsNaN(ub[0]);
    varargin_1[1] = muDoubleScalarIsNaN(ub[1]);
    y = false;
    k = 0;
    exitg1 = false;
    while ((!exitg1) && (k < 2)) {
      if (varargin_1[k]) {
        y = true;
        exitg1 = true;
      } else {
        k++;
      }
    }
    if (y) {
      guard1 = true;
    }
  }
  if (guard1) {
    emlrtErrorWithMessageIdR2018a(
        &sp, &d_emlrtRTEI, "optimlib_codegen:common:InfNaNComplexDetectedUB",
        "optimlib_codegen:common:InfNaNComplexDetectedUB", 0);
  }
}

} // namespace validate
} // namespace coder
} // namespace optim
} // namespace coder

// End of code generation (checkBounds.cpp)
