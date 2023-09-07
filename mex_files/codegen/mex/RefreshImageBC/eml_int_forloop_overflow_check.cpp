//
// Student License - for use by students to meet course requirements and
// perform academic research at degree granting institutions only.  Not
// for government, commercial, or other organizational use.
//
// eml_int_forloop_overflow_check.cpp
//
// Code generation for function 'eml_int_forloop_overflow_check'
//

// Include files
#include "eml_int_forloop_overflow_check.h"
#include "rt_nonfinite.h"

// Variable Definitions
static emlrtRTEInfo emlrtRTEI{
    87,                             // lineNo
    33,                             // colNo
    "check_forloop_overflow_error", // fName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\lib\\matlab\\eml\\eml_int_forloop_"
    "overflow_check.m" // pName
};

// Function Definitions
namespace coder {
void check_forloop_overflow_error(const emlrtStack &sp)
{
  emlrtErrorWithMessageIdR2018a(
      &sp, &emlrtRTEI, "Coder:toolbox:int_forloop_overflow",
      "Coder:toolbox:int_forloop_overflow", 3, 4, 5, "int32");
}

} // namespace coder

// End of code generation (eml_int_forloop_overflow_check.cpp)
