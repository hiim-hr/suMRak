//
// Student License - for use by students to meet course requirements and
// perform academic research at degree granting institutions only.  Not
// for government, commercial, or other organizational use.
//
// xcopy.cpp
//
// Code generation for function 'xcopy'
//

// Include files
#include "xcopy.h"
#include "CalculateT2Map_data.h"
#include "eml_int_forloop_overflow_check.h"
#include "rt_nonfinite.h"
#include "blas.h"
#include "coder_array.h"
#include <cstddef>

// Function Definitions
namespace coder {
namespace internal {
namespace blas {
void xcopy(const emlrtStack &sp, int32_T n, ::coder::array<real_T, 2U> &y)
{
  emlrtStack b_st;
  emlrtStack c_st;
  emlrtStack st;
  st.prev = &sp;
  st.tls = sp.tls;
  st.site = &qb_emlrtRSI;
  b_st.prev = &st;
  b_st.tls = st.tls;
  c_st.prev = &b_st;
  c_st.tls = b_st.tls;
  b_st.site = &ob_emlrtRSI;
  if (n > 2147483646) {
    c_st.site = &m_emlrtRSI;
    check_forloop_overflow_error(c_st);
  }
  for (int32_T k{0}; k < n; k++) {
    y[k] = rtNaN;
  }
}

void xcopy(int32_T n, const ::coder::array<real_T, 2U> &x,
           ::coder::array<real_T, 1U> &y)
{
  ptrdiff_t incx_t;
  ptrdiff_t incy_t;
  ptrdiff_t n_t;
  if (n >= 1) {
    n_t = (ptrdiff_t)n;
    incx_t = (ptrdiff_t)1;
    incy_t = (ptrdiff_t)1;
    dcopy(&n_t, (real_T *)&x[0], &incx_t, &(y.data())[0], &incy_t);
  }
}

} // namespace blas
} // namespace internal
} // namespace coder

// End of code generation (xcopy.cpp)
