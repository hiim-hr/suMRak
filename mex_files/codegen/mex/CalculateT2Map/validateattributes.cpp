//
// Student License - for use by students to meet course requirements and
// perform academic research at degree granting institutions only.  Not
// for government, commercial, or other organizational use.
//
// validateattributes.cpp
//
// Code generation for function 'validateattributes'
//

// Include files
#include "validateattributes.h"
#include "CalculateT2Map_data.h"
#include "rt_nonfinite.h"
#include "coder_array.h"

// Function Definitions
namespace coder {
void validateattributes(const emlrtStack &sp,
                        const ::coder::array<real_T, 2U> &a,
                        const int32_T attributesMixed_f2[2])
{
  emlrtStack st;
  boolean_T p;
  st.prev = &sp;
  st.tls = sp.tls;
  st.site = &db_emlrtRSI;
  p = true;
  for (int32_T k{0}; k < 2; k++) {
    if ((!p) || (attributesMixed_f2[k] != a.size(k))) {
      p = false;
    }
  }
  if (!p) {
    emlrtErrorWithMessageIdR2018a(
        &st, &f_emlrtRTEI, "Coder:toolbox:ValidateattributesincorrectSize",
        "MATLAB:incorrectSize", 3, 4, 5, "Input");
  }
}

} // namespace coder

// End of code generation (validateattributes.cpp)
