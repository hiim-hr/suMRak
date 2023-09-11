//
// Student License - for use by students to meet course requirements and
// perform academic research at degree granting institutions only.  Not
// for government, commercial, or other organizational use.
//
// xgemv.cpp
//
// Code generation for function 'xgemv'
//

// Include files
#include "xgemv.h"
#include "rt_nonfinite.h"
#include "blas.h"
#include "coder_array.h"
#include <cstddef>

// Function Definitions
namespace coder {
namespace internal {
namespace blas {
void xgemv(int32_T m, const ::coder::array<real_T, 2U> &A, int32_T lda,
           const ::coder::array<real_T, 2U> &x, real_T y[2])
{
  ptrdiff_t incx_t;
  ptrdiff_t incy_t;
  ptrdiff_t lda_t;
  ptrdiff_t m_t;
  ptrdiff_t n_t;
  real_T alpha1;
  real_T beta1;
  char_T TRANSA;
  if (m >= 1) {
    alpha1 = 1.0;
    beta1 = 0.0;
    TRANSA = 'T';
    m_t = (ptrdiff_t)m;
    n_t = (ptrdiff_t)2;
    lda_t = (ptrdiff_t)lda;
    incx_t = (ptrdiff_t)1;
    incy_t = (ptrdiff_t)1;
    dgemv(&TRANSA, &m_t, &n_t, &alpha1,
          &(((::coder::array<real_T, 2U> *)&A)->data())[0], &lda_t,
          (real_T *)&x[0], &incx_t, &beta1, &y[0], &incy_t);
  }
}

} // namespace blas
} // namespace internal
} // namespace coder

// End of code generation (xgemv.cpp)
