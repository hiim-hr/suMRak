//
// Student License - for use by students to meet course requirements and
// perform academic research at degree granting institutions only.  Not
// for government, commercial, or other organizational use.
//
// driver.cpp
//
// Code generation for function 'driver'
//

// Include files
#include "driver.h"
#include "CalculateT1Map.h"
#include "CalculateT1Map_data.h"
#include "CalculateT1Map_internal_types.h"
#include "CalculateT1Map_internal_types1.h"
#include "CalculateT1Map_internal_types11.h"
#include "anonymous_function.h"
#include "anonymous_function1.h"
#include "checkFinite.h"
#include "checkStoppingCriteria.h"
#include "eml_int_forloop_overflow_check.h"
#include "factoryConstruct.h"
#include "hasFiniteBounds.h"
#include "jacobianFiniteDifference.h"
#include "linearLeastSquares.h"
#include "lsqcurvefit.h"
#include "norm.h"
#include "projectBox.h"
#include "rt_nonfinite.h"
#include "warning.h"
#include "xcopy.h"
#include "xdot.h"
#include "xgemv.h"
#include "blas.h"
#include "coder_array.h"
#include "lapacke.h"
#include "mwmathutil.h"
#include <cstddef>
#include <emmintrin.h>

// Variable Definitions
static emlrtRSInfo y_emlrtRSI{
    1,        // lineNo
    "driver", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\shared\\optimlib\\+optim\\+coder\\+"
    "levenbergMarquardt\\driver.p" // pathName
};

static emlrtRSInfo kb_emlrtRSI{
    51,                  // lineNo
    "reshapeSizeChecks", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+"
    "internal\\reshapeSizeChecks.m" // pathName
};

static emlrtRSInfo kc_emlrtRSI{
    1,                                           // lineNo
    "@(x)deal(zeros(0,1),reshape(fun(x),[],1))", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\shared\\optimlib\\+optim\\+coder\\+"
    "levenbergMarquardt\\driver.p" // pathName
};

static emlrtRTEInfo e_emlrtRTEI{
    1,        // lineNo
    1,        // colNo
    "driver", // fName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\shared\\optimlib\\+optim\\+coder\\+"
    "levenbergMarquardt\\driver.p" // pName
};

static emlrtBCInfo n_emlrtBCI{
    -1,       // iFirst
    -1,       // iLast
    1,        // lineNo
    1,        // colNo
    "",       // aName
    "driver", // fName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\shared\\optimlib\\+optim\\+coder\\+"
    "levenbergMarquardt\\driver.p", // pName
    0                               // checkKind
};

static emlrtRTEInfo g_emlrtRTEI{
    74,                  // lineNo
    13,                  // colNo
    "reshapeSizeChecks", // fName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+"
    "internal\\reshapeSizeChecks.m" // pName
};

static emlrtRTEInfo i_emlrtRTEI{
    13,     // lineNo
    9,      // colNo
    "sqrt", // fName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\lib\\matlab\\elfun\\sqrt.m" // pName
};

static const char_T cv[19]{'l', 'e', 'v', 'e', 'n', 'b', 'e', 'r', 'g', '-',
                           'm', 'a', 'r', 'q', 'u', 'a', 'r', 'd', 't'};

// Function Declarations
namespace coder {
namespace optim {
namespace coder {
namespace levenbergMarquardt {
static real_T computeFirstOrderOpt(const real_T gradf[2],
                                   boolean_T hasFiniteBounds,
                                   const real_T &projSteepestDescentInfNorm);

}
} // namespace coder
} // namespace optim
} // namespace coder

// Function Definitions
namespace coder {
namespace optim {
namespace coder {
namespace levenbergMarquardt {
static real_T computeFirstOrderOpt(const real_T gradf[2],
                                   boolean_T hasFiniteBounds,
                                   const real_T &projSteepestDescentInfNorm)
{
  real_T firstOrderOpt;
  if (hasFiniteBounds) {
    real_T b;
    b = 0.0;
    for (int32_T k{0}; k < 2; k++) {
      real_T absx;
      absx = muDoubleScalarAbs(gradf[k]);
      if (muDoubleScalarIsNaN(absx) || (absx > b)) {
        b = absx;
      }
    }
    if ((muDoubleScalarAbs(projSteepestDescentInfNorm - b) <
         2.2204460492503131E-16 *
             muDoubleScalarMax(projSteepestDescentInfNorm, b)) ||
        (b == 0.0)) {
      firstOrderOpt = projSteepestDescentInfNorm;
    } else {
      firstOrderOpt =
          projSteepestDescentInfNorm * projSteepestDescentInfNorm / b;
    }
  } else {
    firstOrderOpt = 0.0;
    for (int32_T k{0}; k < 2; k++) {
      real_T absx;
      absx = muDoubleScalarAbs(gradf[k]);
      if (muDoubleScalarIsNaN(absx) || (absx > firstOrderOpt)) {
        firstOrderOpt = absx;
      }
    }
  }
  return firstOrderOpt;
}

real_T b_driver(const emlrtStack &sp, const anonymous_function &fun,
                const real_T ub[2], real_T x[2],
                ::coder::array<real_T, 2U> &fCurrent,
                char_T output_algorithm[19], real_T lambda_lower[2],
                real_T lambda_upper[2], ::coder::array<real_T, 2U> &jacobian,
                real_T &exitflag, real_T &output_iterations,
                real_T &output_funcCount, real_T &output_stepsize,
                real_T &output_firstorderopt)
{
  __m128d r;
  __m128d r1;
  ptrdiff_t incx_t;
  ptrdiff_t incy_t;
  ptrdiff_t n_t;
  b_anonymous_function b_this;
  array<real_T, 2U> augJacobian;
  array<real_T, 2U> fNew;
  array<real_T, 2U> f_temp;
  array<real_T, 1U> rhs;
  c_struct_T FiniteDifferences;
  emlrtStack b_st;
  emlrtStack st;
  real_T dx[2];
  real_T gradf[2];
  real_T xp[2];
  real_T absx;
  real_T b_gamma;
  real_T d;
  real_T funDiff;
  real_T minWidth;
  real_T projSteepestDescentInfNorm;
  real_T relFactor;
  real_T resnorm;
  int32_T b_exitflag;
  int32_T b_i;
  int32_T funcCount;
  int32_T iter;
  int32_T iy0_tmp;
  int32_T m;
  int32_T m_temp;
  boolean_T hasLB[2];
  boolean_T hasUB[2];
  boolean_T indActive[2];
  boolean_T evalOK;
  boolean_T exitg1;
  boolean_T hasFiniteBounds;
  boolean_T stepSuccessful;
  st.prev = &sp;
  st.tls = sp.tls;
  b_st.prev = &st;
  b_st.tls = st.tls;
  emlrtHeapReferenceStackEnterFcnR2012b((emlrtConstCTX)&sp);
  for (int32_T i{0}; i < 19; i++) {
    output_algorithm[i] = cv[i];
  }
  funDiff = rtInf;
  iter = 0;
  indActive[0] = false;
  dx[0] = rtInf;
  indActive[1] = false;
  dx[1] = rtInf;
  if (ub[1] < 1.0) {
    minWidth = ub[1];
  } else {
    minWidth = 1.0;
  }
  hasFiniteBounds = utils::hasFiniteBounds(hasLB, hasUB, ub);
  if ((!hasFiniteBounds) || (minWidth < 0.0)) {
    x[0] = 1.0;
    x[1] = 1.0;
  } else {
    relFactor = 0.0;
    d = 1.0;
    x[0] = 1.0;
    if (hasUB[0]) {
      d = muDoubleScalarMin(ub[0], 1.0);
      x[0] = d;
    }
    absx = muDoubleScalarAbs(d - 1.0);
    if (absx > 0.0) {
      relFactor = absx;
    }
    d = 1.0;
    x[1] = 1.0;
    if (hasUB[1]) {
      d = muDoubleScalarMin(ub[1], 1.0);
      x[1] = d;
    }
    absx = muDoubleScalarAbs(d - 1.0);
    if (absx > relFactor) {
      relFactor = absx;
    }
    if (relFactor > 0.0) {
      st.site = &y_emlrtRSI;
      internal::warning(st);
    }
  }
  st.site = &y_emlrtRSI;
  b_st.site = &v_emlrtRSI;
  b_lsqcurvefit_anonFcn1(b_st, fun.workspace.xdata, fun.workspace.ydata, x,
                         f_temp);
  m_temp = f_temp.size(1);
  jacobian.set_size(&e_emlrtRTEI, &sp, f_temp.size(1), 2);
  m = f_temp.size(1);
  fCurrent.set_size(&e_emlrtRTEI, &sp, 1, f_temp.size(1));
  fNew.set_size(&e_emlrtRTEI, &sp, 1, f_temp.size(1));
  st.site = &y_emlrtRSI;
  if (f_temp.size(1) > 2147483646) {
    b_st.site = &p_emlrtRSI;
    check_forloop_overflow_error(b_st);
  }
  for (b_i = 0; b_i < m; b_i++) {
    if (b_i + 1 > f_temp.size(1)) {
      emlrtDynamicBoundsCheckR2012b(b_i + 1, 1, f_temp.size(1), &n_emlrtBCI,
                                    (emlrtConstCTX)&sp);
    }
    if (b_i + 1 > fCurrent.size(1)) {
      emlrtDynamicBoundsCheckR2012b(b_i + 1, 1, fCurrent.size(1), &n_emlrtBCI,
                                    (emlrtConstCTX)&sp);
    }
    fCurrent[b_i] = f_temp[b_i];
  }
  augJacobian.set_size(&e_emlrtRTEI, &sp, f_temp.size(1) + 2, 2);
  rhs.set_size(&e_emlrtRTEI, &sp, f_temp.size(1) + 2);
  st.site = &y_emlrtRSI;
  LAPACKE_dlacpy_work(102, 'A', (ptrdiff_t)f_temp.size(1), (ptrdiff_t)2,
                      &(jacobian.data())[0], (ptrdiff_t)f_temp.size(1),
                      &(augJacobian.data())[0],
                      (ptrdiff_t)(f_temp.size(1) + 2));
  resnorm = internal::blas::xdot(f_temp.size(1), fCurrent, fCurrent);
  st.site = &y_emlrtRSI;
  evalOK = validate::checkFinite(st, fCurrent, f_temp.size(1));
  if (!evalOK) {
    emlrtErrorWithMessageIdR2018a(
        &sp, &e_emlrtRTEI, "optimlib_codegen:common:NonFiniteInitialObjective",
        "optimlib_codegen:common:NonFiniteInitialObjective", 0);
  }
  b_this.workspace.fun = fun;
  st.site = &y_emlrtRSI;
  utils::FiniteDifferences::b_factoryConstruct(st, b_this, f_temp.size(1), ub,
                                               FiniteDifferences);
  st.site = &y_emlrtRSI;
  funcCount = c_jacobianFiniteDifference(st, augJacobian, fCurrent, x, ub,
                                         FiniteDifferences, evalOK);
  b_gamma = 0.01;
  st.site = &y_emlrtRSI;
  augJacobian[f_temp.size(1)] = 0.0;
  augJacobian[f_temp.size(1) + 1] = 0.0;
  if ((f_temp.size(1) + 1 < 1) || (f_temp.size(1) + 1 > augJacobian.size(0))) {
    emlrtDynamicBoundsCheckR2012b(f_temp.size(1) + 1, 1, augJacobian.size(0),
                                  &n_emlrtBCI, (emlrtConstCTX)&sp);
  }
  augJacobian[f_temp.size(1)] = 0.1;
  iy0_tmp = (f_temp.size(1) + 2) << 1;
  augJacobian[iy0_tmp - 2] = 0.0;
  augJacobian[iy0_tmp - 1] = 0.0;
  if ((f_temp.size(1) + 2 < 1) || (f_temp.size(1) + 2 > augJacobian.size(0))) {
    emlrtDynamicBoundsCheckR2012b(f_temp.size(1) + 2, 1, augJacobian.size(0),
                                  &n_emlrtBCI, (emlrtConstCTX)&sp);
  }
  augJacobian[(f_temp.size(1) + augJacobian.size(0)) + 1] = 0.1;
  st.site = &y_emlrtRSI;
  LAPACKE_dlacpy_work(102, 'A', (ptrdiff_t)f_temp.size(1), (ptrdiff_t)2,
                      &(augJacobian.data())[0], (ptrdiff_t)(f_temp.size(1) + 2),
                      &(jacobian.data())[0], (ptrdiff_t)f_temp.size(1));
  st.site = &y_emlrtRSI;
  evalOK = validate::b_checkFinite(st, augJacobian, f_temp.size(1) + 2);
  if (!evalOK) {
    emlrtErrorWithMessageIdR2018a(
        &sp, &e_emlrtRTEI, "optimlib_codegen:common:NonFiniteInitialJacobian",
        "optimlib_codegen:common:NonFiniteInitialJacobian", 0);
  }
  st.site = &y_emlrtRSI;
  internal::blas::xgemv(f_temp.size(1), jacobian, f_temp.size(1), fCurrent,
                        gradf);
  r = _mm_loadu_pd(&gradf[0]);
  r1 = _mm_set1_pd(-1.0);
  _mm_storeu_pd(&xp[0], _mm_mul_pd(r, r1));
  projSteepestDescentInfNorm = projectBox(x, xp, ub, hasUB);
  st.site = &y_emlrtRSI;
  absx =
      computeFirstOrderOpt(gradf, hasFiniteBounds, projSteepestDescentInfNorm);
  relFactor = muDoubleScalarMax(absx, 1.0);
  stepSuccessful = true;
  if (minWidth < 0.0) {
    b_exitflag = -2;
  } else {
    st.site = &y_emlrtRSI;
    b_exitflag =
        checkStoppingCriteria(gradf, relFactor, funcCount,
                              projSteepestDescentInfNorm, hasFiniteBounds);
  }
  exitg1 = false;
  while ((!exitg1) && (b_exitflag == -5)) {
    int32_T vectorUB;
    boolean_T guard1;
    st.site = &y_emlrtRSI;
    f_temp.set_size(&e_emlrtRTEI, &st, 1, fCurrent.size(1));
    b_exitflag = fCurrent.size(1);
    b_i = (fCurrent.size(1) / 2) << 1;
    vectorUB = b_i - 2;
    for (int32_T i{0}; i <= vectorUB; i += 2) {
      r = _mm_loadu_pd(&fCurrent[i]);
      _mm_storeu_pd(&f_temp[i], _mm_mul_pd(r, r1));
    }
    for (int32_T i{b_i}; i < b_exitflag; i++) {
      f_temp[i] = -fCurrent[i];
    }
    if (m_temp >= 1) {
      n_t = (ptrdiff_t)m_temp;
      incx_t = (ptrdiff_t)1;
      incy_t = (ptrdiff_t)1;
      dcopy(&n_t, &f_temp[0], &incx_t, &(rhs.data())[0], &incy_t);
    }
    rhs[m] = 0.0;
    rhs[m + 1] = 0.0;
    if (hasFiniteBounds) {
      r = _mm_loadu_pd(&gradf[0]);
      _mm_storeu_pd(&xp[0], _mm_div_pd(_mm_div_pd(_mm_mul_pd(r, r1),
                                                  _mm_set1_pd(b_gamma + 1.0)),
                                       _mm_set1_pd(1.0)));
      projSteepestDescentInfNorm = projectBox(x, xp, ub, hasUB);
      absx = muDoubleScalarMin(projSteepestDescentInfNorm, minWidth / 2.0);
      for (b_i = 0; b_i < 2; b_i++) {
        d = x[b_i];
        if ((d <= absx) && (gradf[b_i] > 0.0)) {
          evalOK = true;
          indActive[b_i] = true;
        } else {
          evalOK = false;
          indActive[b_i] = false;
        }
        if (hasUB[b_i]) {
          if (evalOK || ((ub[b_i] - d <= absx) && (gradf[b_i] < 0.0))) {
            evalOK = true;
            indActive[b_i] = true;
          } else {
            indActive[b_i] = false;
          }
        }
        if (evalOK) {
          st.site = &y_emlrtRSI;
          internal::blas::xcopy(st, m_temp, augJacobian,
                                (m_temp + 2) * b_i + 1);
        }
      }
    }
    st.site = &y_emlrtRSI;
    linearLeastSquares(st, augJacobian, rhs, dx, m_temp + 2);
    if (hasFiniteBounds) {
      if (indActive[0]) {
        st.site = &y_emlrtRSI;
        dx[0] = -gradf[0] / (b_gamma + 1.0);
      }
      if (indActive[1]) {
        st.site = &y_emlrtRSI;
        dx[1] = -gradf[1] / (b_gamma + 1.0);
      }
      d = muDoubleScalarMax(0.0, x[0] + dx[0]);
      xp[0] = d;
      if (hasUB[0]) {
        d = muDoubleScalarMin(ub[0], d);
        xp[0] = d;
      }
      d = muDoubleScalarMax(0.0, x[1] + dx[1]);
      xp[1] = d;
      if (hasUB[1]) {
        d = muDoubleScalarMin(ub[1], d);
        xp[1] = d;
      }
    } else {
      __m128d r2;
      r = _mm_loadu_pd(&x[0]);
      r2 = _mm_loadu_pd(&dx[0]);
      _mm_storeu_pd(&xp[0], _mm_add_pd(r, r2));
    }
    st.site = &y_emlrtRSI;
    b_st.site = &v_emlrtRSI;
    b_lsqcurvefit_anonFcn1(b_st, fun.workspace.xdata, fun.workspace.ydata, xp,
                           f_temp);
    st.site = &y_emlrtRSI;
    if (m_temp > 2147483646) {
      b_st.site = &p_emlrtRSI;
      check_forloop_overflow_error(b_st);
    }
    for (b_i = 0; b_i < m; b_i++) {
      if (b_i + 1 > f_temp.size(1)) {
        emlrtDynamicBoundsCheckR2012b(b_i + 1, 1, f_temp.size(1), &n_emlrtBCI,
                                      (emlrtConstCTX)&sp);
      }
      if (b_i + 1 > fNew.size(1)) {
        emlrtDynamicBoundsCheckR2012b(b_i + 1, 1, fNew.size(1), &n_emlrtBCI,
                                      (emlrtConstCTX)&sp);
      }
      fNew[b_i] = f_temp[b_i];
    }
    absx = internal::blas::xdot(m_temp, fNew, fNew);
    st.site = &y_emlrtRSI;
    evalOK = validate::checkFinite(st, fNew, m_temp);
    funcCount++;
    guard1 = false;
    if ((absx < resnorm) && evalOK) {
      iter++;
      funDiff = muDoubleScalarAbs(absx - resnorm) / resnorm;
      resnorm = absx;
      fCurrent.set_size(&e_emlrtRTEI, &sp, 1, fNew.size(1));
      b_exitflag = fNew.size(1);
      for (int32_T i{0}; i < b_exitflag; i++) {
        fCurrent[i] = fNew[i];
      }
      st.site = &y_emlrtRSI;
      evalOK = d_jacobianFiniteDifference(st, augJacobian, fCurrent, funcCount,
                                          xp, ub, FiniteDifferences);
      st.site = &y_emlrtRSI;
      LAPACKE_dlacpy_work(102, 'A', (ptrdiff_t)m_temp, (ptrdiff_t)2,
                          &(augJacobian.data())[0], (ptrdiff_t)(m_temp + 2),
                          &(jacobian.data())[0], (ptrdiff_t)m_temp);
      if (evalOK) {
        x[0] = xp[0];
        x[1] = xp[1];
        if (stepSuccessful) {
          b_gamma *= 0.1;
        }
        stepSuccessful = true;
        guard1 = true;
      } else {
        b_exitflag = 2;
        st.site = &y_emlrtRSI;
        internal::blas::xcopy(st, m_temp << 1, jacobian);
        exitg1 = true;
      }
    } else {
      b_gamma *= 10.0;
      stepSuccessful = false;
      st.site = &y_emlrtRSI;
      LAPACKE_dlacpy_work(102, 'A', (ptrdiff_t)m_temp, (ptrdiff_t)2,
                          &(jacobian.data())[0], (ptrdiff_t)m_temp,
                          &(augJacobian.data())[0], (ptrdiff_t)(m_temp + 2));
      guard1 = true;
    }
    if (guard1) {
      st.site = &y_emlrtRSI;
      if (b_gamma < 0.0) {
        emlrtErrorWithMessageIdR2018a(
            &st, &i_emlrtRTEI, "Coder:toolbox:ElFunDomainError",
            "Coder:toolbox:ElFunDomainError", 3, 4, 4, "sqrt");
      }
      absx = muDoubleScalarSqrt(b_gamma);
      augJacobian[m_temp] = 0.0;
      augJacobian[m_temp + 1] = 0.0;
      if (m_temp + 1 > augJacobian.size(0)) {
        emlrtDynamicBoundsCheckR2012b(m_temp + 1, 1, augJacobian.size(0),
                                      &n_emlrtBCI, (emlrtConstCTX)&sp);
      }
      augJacobian[m_temp] = absx;
      augJacobian[iy0_tmp - 2] = 0.0;
      augJacobian[iy0_tmp - 1] = 0.0;
      if ((m_temp + 2 < 1) || (m_temp + 2 > augJacobian.size(0))) {
        emlrtDynamicBoundsCheckR2012b(m_temp + 2, 1, augJacobian.size(0),
                                      &n_emlrtBCI, (emlrtConstCTX)&sp);
      }
      augJacobian[(m_temp + augJacobian.size(0)) + 1] = absx;
      st.site = &y_emlrtRSI;
      internal::blas::xgemv(m_temp, jacobian, m_temp, fCurrent, gradf);
      r = _mm_loadu_pd(&gradf[0]);
      _mm_storeu_pd(&xp[0], _mm_mul_pd(r, r1));
      projSteepestDescentInfNorm = projectBox(x, xp, ub, hasUB);
      st.site = &y_emlrtRSI;
      b_exitflag = b_checkStoppingCriteria(
          gradf, relFactor, funDiff, x, dx, funcCount, stepSuccessful, iter,
          projSteepestDescentInfNorm, hasFiniteBounds);
      if (b_exitflag != -5) {
        exitg1 = true;
      }
    }
  }
  st.site = &y_emlrtRSI;
  output_firstorderopt =
      computeFirstOrderOpt(gradf, hasFiniteBounds, projSteepestDescentInfNorm);
  lambda_lower[0] = 0.0;
  lambda_upper[0] = 0.0;
  lambda_lower[1] = 0.0;
  lambda_upper[1] = 0.0;
  if (hasFiniteBounds) {
    r = _mm_loadu_pd(&gradf[0]);
    _mm_storeu_pd(&xp[0],
                  _mm_div_pd(_mm_mul_pd(r, r1), _mm_set1_pd(b_gamma + 1.0)));
    absx = projectBox(x, xp, ub, hasUB);
    absx = muDoubleScalarMin(absx, minWidth / 2.0);
    for (b_i = 0; b_i < 2; b_i++) {
      d = x[b_i];
      if ((d <= absx) && (gradf[b_i] > 0.0)) {
        lambda_lower[b_i] = 2.0 * gradf[b_i];
      }
      if (hasUB[b_i] && (ub[b_i] - d <= absx) && (gradf[b_i] < 0.0)) {
        lambda_upper[b_i] = -2.0 * gradf[b_i];
      }
    }
  }
  exitflag = b_exitflag;
  output_iterations = iter;
  output_funcCount = funcCount;
  output_stepsize = b_norm(dx);
  emlrtHeapReferenceStackLeaveFcnR2012b((emlrtConstCTX)&sp);
  return resnorm;
}

void b_driver_anonFcn1(const emlrtStack &sp, const anonymous_function &fun,
                       const real_T x[2],
                       ::coder::array<real_T, 1U> &varargout_2)
{
  array<real_T, 2U> F_temp;
  array<real_T, 2U> varargout_f1;
  emlrtStack b_st;
  emlrtStack c_st;
  emlrtStack d_st;
  emlrtStack st;
  int32_T nx;
  int32_T scalarLB;
  st.prev = &sp;
  st.tls = sp.tls;
  b_st.prev = &st;
  b_st.tls = st.tls;
  c_st.prev = &b_st;
  c_st.tls = b_st.tls;
  d_st.prev = &c_st;
  d_st.tls = c_st.tls;
  emlrtHeapReferenceStackEnterFcnR2012b((emlrtConstCTX)&sp);
  st.site = &kc_emlrtRSI;
  b_st.site = &v_emlrtRSI;
  c_st.site = &fc_emlrtRSI;
  d_st.site = &gc_emlrtRSI;
  CalculateT1Map_anonFcn2(d_st, x, fun.workspace.xdata, F_temp);
  if ((F_temp.size(1) != fun.workspace.ydata.size(1)) &&
      ((F_temp.size(1) != 1) && (fun.workspace.ydata.size(1) != 1))) {
    emlrtDimSizeImpxCheckR2021b(F_temp.size(1), fun.workspace.ydata.size(1),
                                &d_emlrtECI, &c_st);
  }
  if (F_temp.size(1) == fun.workspace.ydata.size(1)) {
    int32_T vectorUB;
    varargout_f1.set_size(&c_emlrtRTEI, &c_st, 1, F_temp.size(1));
    nx = F_temp.size(1);
    scalarLB = (F_temp.size(1) / 2) << 1;
    vectorUB = scalarLB - 2;
    for (int32_T i{0}; i <= vectorUB; i += 2) {
      __m128d r;
      r = _mm_loadu_pd(&F_temp[i]);
      _mm_storeu_pd(&varargout_f1[i],
                    _mm_sub_pd(r, _mm_loadu_pd(&fun.workspace.ydata[i])));
    }
    for (int32_T i{scalarLB}; i < nx; i++) {
      varargout_f1[i] = F_temp[i] - fun.workspace.ydata[i];
    }
  } else {
    d_st.site = &gc_emlrtRSI;
    binary_expand_op(d_st, varargout_f1, F_temp, fun);
  }
  st.site = &kc_emlrtRSI;
  nx = varargout_f1.size(1);
  b_st.site = &kb_emlrtRSI;
  scalarLB = 1;
  if (varargout_f1.size(1) > 1) {
    scalarLB = varargout_f1.size(1);
  }
  if (varargout_f1.size(1) > muIntScalarMax_sint32(nx, scalarLB)) {
    emlrtErrorWithMessageIdR2018a(&st, &g_emlrtRTEI,
                                  "Coder:toolbox:reshape_emptyReshapeLimit",
                                  "Coder:toolbox:reshape_emptyReshapeLimit", 0);
  }
  if (F_temp.size(1) == 1) {
    nx = fun.workspace.ydata.size(1);
  } else {
    nx = F_temp.size(1);
  }
  varargout_2.set_size(&e_emlrtRTEI, &sp, nx);
  for (int32_T i{0}; i < nx; i++) {
    varargout_2[i] = varargout_f1[i];
  }
  emlrtHeapReferenceStackLeaveFcnR2012b((emlrtConstCTX)&sp);
}

real_T driver(const emlrtStack &sp, const anonymous_function &fun,
              const real_T ub[2], real_T x[2],
              ::coder::array<real_T, 2U> &fCurrent, char_T output_algorithm[19],
              real_T lambda_lower[2], real_T lambda_upper[2],
              ::coder::array<real_T, 2U> &jacobian, real_T &exitflag,
              real_T &output_iterations, real_T &output_funcCount,
              real_T &output_stepsize, real_T &output_firstorderopt)
{
  __m128d r;
  __m128d r1;
  ptrdiff_t incx_t;
  ptrdiff_t incy_t;
  ptrdiff_t n_t;
  b_anonymous_function b_this;
  array<real_T, 2U> augJacobian;
  array<real_T, 2U> fNew;
  array<real_T, 2U> f_temp;
  array<real_T, 1U> rhs;
  c_struct_T FiniteDifferences;
  emlrtStack b_st;
  emlrtStack st;
  real_T dx[2];
  real_T gradf[2];
  real_T xp[2];
  real_T absx;
  real_T b_gamma;
  real_T d;
  real_T funDiff;
  real_T minWidth;
  real_T projSteepestDescentInfNorm;
  real_T relFactor;
  real_T resnorm;
  int32_T b_exitflag;
  int32_T b_i;
  int32_T funcCount;
  int32_T iter;
  int32_T iy0_tmp;
  int32_T m;
  int32_T m_temp;
  boolean_T hasLB[2];
  boolean_T hasUB[2];
  boolean_T indActive[2];
  boolean_T evalOK;
  boolean_T exitg1;
  boolean_T hasFiniteBounds;
  boolean_T stepSuccessful;
  st.prev = &sp;
  st.tls = sp.tls;
  b_st.prev = &st;
  b_st.tls = st.tls;
  emlrtHeapReferenceStackEnterFcnR2012b((emlrtConstCTX)&sp);
  for (int32_T i{0}; i < 19; i++) {
    output_algorithm[i] = cv[i];
  }
  funDiff = rtInf;
  iter = 0;
  indActive[0] = false;
  dx[0] = rtInf;
  indActive[1] = false;
  dx[1] = rtInf;
  if (ub[1] < 1.0) {
    minWidth = ub[1];
  } else {
    minWidth = 1.0;
  }
  hasFiniteBounds = utils::hasFiniteBounds(hasLB, hasUB, ub);
  if ((!hasFiniteBounds) || (minWidth < 0.0)) {
    x[0] = 1.0;
    x[1] = 1.0;
  } else {
    relFactor = 0.0;
    d = 1.0;
    x[0] = 1.0;
    if (hasUB[0]) {
      d = muDoubleScalarMin(ub[0], 1.0);
      x[0] = d;
    }
    absx = muDoubleScalarAbs(d - 1.0);
    if (absx > 0.0) {
      relFactor = absx;
    }
    d = 1.0;
    x[1] = 1.0;
    if (hasUB[1]) {
      d = muDoubleScalarMin(ub[1], 1.0);
      x[1] = d;
    }
    absx = muDoubleScalarAbs(d - 1.0);
    if (absx > relFactor) {
      relFactor = absx;
    }
    if (relFactor > 0.0) {
      st.site = &y_emlrtRSI;
      internal::warning(st);
    }
  }
  st.site = &y_emlrtRSI;
  b_st.site = &v_emlrtRSI;
  lsqcurvefit_anonFcn1(b_st, fun.workspace.xdata, fun.workspace.ydata, x,
                       f_temp);
  m_temp = f_temp.size(1);
  jacobian.set_size(&e_emlrtRTEI, &sp, f_temp.size(1), 2);
  m = f_temp.size(1);
  fCurrent.set_size(&e_emlrtRTEI, &sp, 1, f_temp.size(1));
  fNew.set_size(&e_emlrtRTEI, &sp, 1, f_temp.size(1));
  st.site = &y_emlrtRSI;
  if (f_temp.size(1) > 2147483646) {
    b_st.site = &p_emlrtRSI;
    check_forloop_overflow_error(b_st);
  }
  for (b_i = 0; b_i < m; b_i++) {
    if (b_i + 1 > f_temp.size(1)) {
      emlrtDynamicBoundsCheckR2012b(b_i + 1, 1, f_temp.size(1), &n_emlrtBCI,
                                    (emlrtConstCTX)&sp);
    }
    if (b_i + 1 > fCurrent.size(1)) {
      emlrtDynamicBoundsCheckR2012b(b_i + 1, 1, fCurrent.size(1), &n_emlrtBCI,
                                    (emlrtConstCTX)&sp);
    }
    fCurrent[b_i] = f_temp[b_i];
  }
  augJacobian.set_size(&e_emlrtRTEI, &sp, f_temp.size(1) + 2, 2);
  rhs.set_size(&e_emlrtRTEI, &sp, f_temp.size(1) + 2);
  st.site = &y_emlrtRSI;
  LAPACKE_dlacpy_work(102, 'A', (ptrdiff_t)f_temp.size(1), (ptrdiff_t)2,
                      &(jacobian.data())[0], (ptrdiff_t)f_temp.size(1),
                      &(augJacobian.data())[0],
                      (ptrdiff_t)(f_temp.size(1) + 2));
  resnorm = internal::blas::xdot(f_temp.size(1), fCurrent, fCurrent);
  st.site = &y_emlrtRSI;
  evalOK = validate::checkFinite(st, fCurrent, f_temp.size(1));
  if (!evalOK) {
    emlrtErrorWithMessageIdR2018a(
        &sp, &e_emlrtRTEI, "optimlib_codegen:common:NonFiniteInitialObjective",
        "optimlib_codegen:common:NonFiniteInitialObjective", 0);
  }
  b_this.workspace.fun = fun;
  st.site = &y_emlrtRSI;
  utils::FiniteDifferences::factoryConstruct(st, b_this, f_temp.size(1), ub,
                                             FiniteDifferences);
  st.site = &y_emlrtRSI;
  funcCount = jacobianFiniteDifference(st, augJacobian, fCurrent, x, ub,
                                       FiniteDifferences, evalOK);
  b_gamma = 0.01;
  st.site = &y_emlrtRSI;
  augJacobian[f_temp.size(1)] = 0.0;
  augJacobian[f_temp.size(1) + 1] = 0.0;
  if ((f_temp.size(1) + 1 < 1) || (f_temp.size(1) + 1 > augJacobian.size(0))) {
    emlrtDynamicBoundsCheckR2012b(f_temp.size(1) + 1, 1, augJacobian.size(0),
                                  &n_emlrtBCI, (emlrtConstCTX)&sp);
  }
  augJacobian[f_temp.size(1)] = 0.1;
  iy0_tmp = (f_temp.size(1) + 2) << 1;
  augJacobian[iy0_tmp - 2] = 0.0;
  augJacobian[iy0_tmp - 1] = 0.0;
  if ((f_temp.size(1) + 2 < 1) || (f_temp.size(1) + 2 > augJacobian.size(0))) {
    emlrtDynamicBoundsCheckR2012b(f_temp.size(1) + 2, 1, augJacobian.size(0),
                                  &n_emlrtBCI, (emlrtConstCTX)&sp);
  }
  augJacobian[(f_temp.size(1) + augJacobian.size(0)) + 1] = 0.1;
  st.site = &y_emlrtRSI;
  LAPACKE_dlacpy_work(102, 'A', (ptrdiff_t)f_temp.size(1), (ptrdiff_t)2,
                      &(augJacobian.data())[0], (ptrdiff_t)(f_temp.size(1) + 2),
                      &(jacobian.data())[0], (ptrdiff_t)f_temp.size(1));
  st.site = &y_emlrtRSI;
  evalOK = validate::b_checkFinite(st, augJacobian, f_temp.size(1) + 2);
  if (!evalOK) {
    emlrtErrorWithMessageIdR2018a(
        &sp, &e_emlrtRTEI, "optimlib_codegen:common:NonFiniteInitialJacobian",
        "optimlib_codegen:common:NonFiniteInitialJacobian", 0);
  }
  st.site = &y_emlrtRSI;
  internal::blas::xgemv(f_temp.size(1), jacobian, f_temp.size(1), fCurrent,
                        gradf);
  r = _mm_loadu_pd(&gradf[0]);
  r1 = _mm_set1_pd(-1.0);
  _mm_storeu_pd(&xp[0], _mm_mul_pd(r, r1));
  projSteepestDescentInfNorm = projectBox(x, xp, ub, hasUB);
  st.site = &y_emlrtRSI;
  absx =
      computeFirstOrderOpt(gradf, hasFiniteBounds, projSteepestDescentInfNorm);
  relFactor = muDoubleScalarMax(absx, 1.0);
  stepSuccessful = true;
  if (minWidth < 0.0) {
    b_exitflag = -2;
  } else {
    st.site = &y_emlrtRSI;
    b_exitflag =
        checkStoppingCriteria(gradf, relFactor, funcCount,
                              projSteepestDescentInfNorm, hasFiniteBounds);
  }
  exitg1 = false;
  while ((!exitg1) && (b_exitflag == -5)) {
    int32_T vectorUB;
    boolean_T guard1;
    st.site = &y_emlrtRSI;
    f_temp.set_size(&e_emlrtRTEI, &st, 1, fCurrent.size(1));
    b_exitflag = fCurrent.size(1);
    b_i = (fCurrent.size(1) / 2) << 1;
    vectorUB = b_i - 2;
    for (int32_T i{0}; i <= vectorUB; i += 2) {
      r = _mm_loadu_pd(&fCurrent[i]);
      _mm_storeu_pd(&f_temp[i], _mm_mul_pd(r, r1));
    }
    for (int32_T i{b_i}; i < b_exitflag; i++) {
      f_temp[i] = -fCurrent[i];
    }
    if (m_temp >= 1) {
      n_t = (ptrdiff_t)m_temp;
      incx_t = (ptrdiff_t)1;
      incy_t = (ptrdiff_t)1;
      dcopy(&n_t, &f_temp[0], &incx_t, &(rhs.data())[0], &incy_t);
    }
    rhs[m] = 0.0;
    rhs[m + 1] = 0.0;
    if (hasFiniteBounds) {
      r = _mm_loadu_pd(&gradf[0]);
      _mm_storeu_pd(&xp[0], _mm_div_pd(_mm_div_pd(_mm_mul_pd(r, r1),
                                                  _mm_set1_pd(b_gamma + 1.0)),
                                       _mm_set1_pd(1.0)));
      projSteepestDescentInfNorm = projectBox(x, xp, ub, hasUB);
      absx = muDoubleScalarMin(projSteepestDescentInfNorm, minWidth / 2.0);
      for (b_i = 0; b_i < 2; b_i++) {
        d = x[b_i];
        if ((d <= absx) && (gradf[b_i] > 0.0)) {
          evalOK = true;
          indActive[b_i] = true;
        } else {
          evalOK = false;
          indActive[b_i] = false;
        }
        if (hasUB[b_i]) {
          if (evalOK || ((ub[b_i] - d <= absx) && (gradf[b_i] < 0.0))) {
            evalOK = true;
            indActive[b_i] = true;
          } else {
            indActive[b_i] = false;
          }
        }
        if (evalOK) {
          st.site = &y_emlrtRSI;
          internal::blas::xcopy(st, m_temp, augJacobian,
                                (m_temp + 2) * b_i + 1);
        }
      }
    }
    st.site = &y_emlrtRSI;
    linearLeastSquares(st, augJacobian, rhs, dx, m_temp + 2);
    if (hasFiniteBounds) {
      if (indActive[0]) {
        st.site = &y_emlrtRSI;
        dx[0] = -gradf[0] / (b_gamma + 1.0);
      }
      if (indActive[1]) {
        st.site = &y_emlrtRSI;
        dx[1] = -gradf[1] / (b_gamma + 1.0);
      }
      d = muDoubleScalarMax(0.0, x[0] + dx[0]);
      xp[0] = d;
      if (hasUB[0]) {
        d = muDoubleScalarMin(ub[0], d);
        xp[0] = d;
      }
      d = muDoubleScalarMax(0.0, x[1] + dx[1]);
      xp[1] = d;
      if (hasUB[1]) {
        d = muDoubleScalarMin(ub[1], d);
        xp[1] = d;
      }
    } else {
      __m128d r2;
      r = _mm_loadu_pd(&x[0]);
      r2 = _mm_loadu_pd(&dx[0]);
      _mm_storeu_pd(&xp[0], _mm_add_pd(r, r2));
    }
    st.site = &y_emlrtRSI;
    b_st.site = &v_emlrtRSI;
    lsqcurvefit_anonFcn1(b_st, fun.workspace.xdata, fun.workspace.ydata, xp,
                         f_temp);
    st.site = &y_emlrtRSI;
    if (m_temp > 2147483646) {
      b_st.site = &p_emlrtRSI;
      check_forloop_overflow_error(b_st);
    }
    for (b_i = 0; b_i < m; b_i++) {
      if (b_i + 1 > f_temp.size(1)) {
        emlrtDynamicBoundsCheckR2012b(b_i + 1, 1, f_temp.size(1), &n_emlrtBCI,
                                      (emlrtConstCTX)&sp);
      }
      if (b_i + 1 > fNew.size(1)) {
        emlrtDynamicBoundsCheckR2012b(b_i + 1, 1, fNew.size(1), &n_emlrtBCI,
                                      (emlrtConstCTX)&sp);
      }
      fNew[b_i] = f_temp[b_i];
    }
    absx = internal::blas::xdot(m_temp, fNew, fNew);
    st.site = &y_emlrtRSI;
    evalOK = validate::checkFinite(st, fNew, m_temp);
    funcCount++;
    guard1 = false;
    if ((absx < resnorm) && evalOK) {
      iter++;
      funDiff = muDoubleScalarAbs(absx - resnorm) / resnorm;
      resnorm = absx;
      fCurrent.set_size(&e_emlrtRTEI, &sp, 1, fNew.size(1));
      b_exitflag = fNew.size(1);
      for (int32_T i{0}; i < b_exitflag; i++) {
        fCurrent[i] = fNew[i];
      }
      st.site = &y_emlrtRSI;
      evalOK = b_jacobianFiniteDifference(st, augJacobian, fCurrent, funcCount,
                                          xp, ub, FiniteDifferences);
      st.site = &y_emlrtRSI;
      LAPACKE_dlacpy_work(102, 'A', (ptrdiff_t)m_temp, (ptrdiff_t)2,
                          &(augJacobian.data())[0], (ptrdiff_t)(m_temp + 2),
                          &(jacobian.data())[0], (ptrdiff_t)m_temp);
      if (evalOK) {
        x[0] = xp[0];
        x[1] = xp[1];
        if (stepSuccessful) {
          b_gamma *= 0.1;
        }
        stepSuccessful = true;
        guard1 = true;
      } else {
        b_exitflag = 2;
        st.site = &y_emlrtRSI;
        internal::blas::xcopy(st, m_temp << 1, jacobian);
        exitg1 = true;
      }
    } else {
      b_gamma *= 10.0;
      stepSuccessful = false;
      st.site = &y_emlrtRSI;
      LAPACKE_dlacpy_work(102, 'A', (ptrdiff_t)m_temp, (ptrdiff_t)2,
                          &(jacobian.data())[0], (ptrdiff_t)m_temp,
                          &(augJacobian.data())[0], (ptrdiff_t)(m_temp + 2));
      guard1 = true;
    }
    if (guard1) {
      st.site = &y_emlrtRSI;
      if (b_gamma < 0.0) {
        emlrtErrorWithMessageIdR2018a(
            &st, &i_emlrtRTEI, "Coder:toolbox:ElFunDomainError",
            "Coder:toolbox:ElFunDomainError", 3, 4, 4, "sqrt");
      }
      absx = muDoubleScalarSqrt(b_gamma);
      augJacobian[m_temp] = 0.0;
      augJacobian[m_temp + 1] = 0.0;
      if (m_temp + 1 > augJacobian.size(0)) {
        emlrtDynamicBoundsCheckR2012b(m_temp + 1, 1, augJacobian.size(0),
                                      &n_emlrtBCI, (emlrtConstCTX)&sp);
      }
      augJacobian[m_temp] = absx;
      augJacobian[iy0_tmp - 2] = 0.0;
      augJacobian[iy0_tmp - 1] = 0.0;
      if ((m_temp + 2 < 1) || (m_temp + 2 > augJacobian.size(0))) {
        emlrtDynamicBoundsCheckR2012b(m_temp + 2, 1, augJacobian.size(0),
                                      &n_emlrtBCI, (emlrtConstCTX)&sp);
      }
      augJacobian[(m_temp + augJacobian.size(0)) + 1] = absx;
      st.site = &y_emlrtRSI;
      internal::blas::xgemv(m_temp, jacobian, m_temp, fCurrent, gradf);
      r = _mm_loadu_pd(&gradf[0]);
      _mm_storeu_pd(&xp[0], _mm_mul_pd(r, r1));
      projSteepestDescentInfNorm = projectBox(x, xp, ub, hasUB);
      st.site = &y_emlrtRSI;
      b_exitflag = b_checkStoppingCriteria(
          gradf, relFactor, funDiff, x, dx, funcCount, stepSuccessful, iter,
          projSteepestDescentInfNorm, hasFiniteBounds);
      if (b_exitflag != -5) {
        exitg1 = true;
      }
    }
  }
  st.site = &y_emlrtRSI;
  output_firstorderopt =
      computeFirstOrderOpt(gradf, hasFiniteBounds, projSteepestDescentInfNorm);
  lambda_lower[0] = 0.0;
  lambda_upper[0] = 0.0;
  lambda_lower[1] = 0.0;
  lambda_upper[1] = 0.0;
  if (hasFiniteBounds) {
    r = _mm_loadu_pd(&gradf[0]);
    _mm_storeu_pd(&xp[0],
                  _mm_div_pd(_mm_mul_pd(r, r1), _mm_set1_pd(b_gamma + 1.0)));
    absx = projectBox(x, xp, ub, hasUB);
    absx = muDoubleScalarMin(absx, minWidth / 2.0);
    for (b_i = 0; b_i < 2; b_i++) {
      d = x[b_i];
      if ((d <= absx) && (gradf[b_i] > 0.0)) {
        lambda_lower[b_i] = 2.0 * gradf[b_i];
      }
      if (hasUB[b_i] && (ub[b_i] - d <= absx) && (gradf[b_i] < 0.0)) {
        lambda_upper[b_i] = -2.0 * gradf[b_i];
      }
    }
  }
  exitflag = b_exitflag;
  output_iterations = iter;
  output_funcCount = funcCount;
  output_stepsize = b_norm(dx);
  emlrtHeapReferenceStackLeaveFcnR2012b((emlrtConstCTX)&sp);
  return resnorm;
}

void driver_anonFcn1(const emlrtStack &sp, const anonymous_function &fun,
                     const real_T x[2], ::coder::array<real_T, 1U> &varargout_2)
{
  __m128d r;
  array<real_T, 2U> F_temp;
  array<real_T, 2U> varargout_f1;
  emlrtStack b_st;
  emlrtStack c_st;
  emlrtStack d_st;
  emlrtStack e_st;
  emlrtStack f_st;
  emlrtStack g_st;
  emlrtStack h_st;
  emlrtStack st;
  real_T b_x;
  int32_T loop_ub;
  int32_T nx;
  int32_T vectorUB;
  st.prev = &sp;
  st.tls = sp.tls;
  b_st.prev = &st;
  b_st.tls = st.tls;
  c_st.prev = &b_st;
  c_st.tls = b_st.tls;
  d_st.prev = &c_st;
  d_st.tls = c_st.tls;
  e_st.prev = &d_st;
  e_st.tls = d_st.tls;
  f_st.prev = &e_st;
  f_st.tls = e_st.tls;
  g_st.prev = &f_st;
  g_st.tls = f_st.tls;
  h_st.prev = &g_st;
  h_st.tls = g_st.tls;
  emlrtHeapReferenceStackEnterFcnR2012b((emlrtConstCTX)&sp);
  st.site = &y_emlrtRSI;
  b_st.site = &v_emlrtRSI;
  c_st.site = &r_emlrtRSI;
  d_st.site = &r_emlrtRSI;
  F_temp.set_size(&ab_emlrtRTEI, &d_st, 1, fun.workspace.xdata.size(1));
  b_x = x[1];
  loop_ub = fun.workspace.xdata.size(1);
  nx = (fun.workspace.xdata.size(1) / 2) << 1;
  vectorUB = nx - 2;
  for (int32_T i{0}; i <= vectorUB; i += 2) {
    _mm_storeu_pd(&F_temp[i],
                  _mm_div_pd(_mm_mul_pd(_mm_loadu_pd(&fun.workspace.xdata[i]),
                                        _mm_set1_pd(-1.0)),
                             _mm_set1_pd(b_x)));
  }
  for (int32_T i{nx}; i < loop_ub; i++) {
    F_temp[i] = -fun.workspace.xdata[i] / b_x;
  }
  e_st.site = &cb_emlrtRSI;
  f_st.site = &ab_emlrtRSI;
  nx = F_temp.size(1);
  g_st.site = &bb_emlrtRSI;
  if (F_temp.size(1) > 2147483646) {
    h_st.site = &p_emlrtRSI;
    check_forloop_overflow_error(h_st);
  }
  for (loop_ub = 0; loop_ub < nx; loop_ub++) {
    F_temp[loop_ub] = muDoubleScalarExp(F_temp[loop_ub]);
  }
  F_temp.set_size(&bb_emlrtRTEI, &d_st, 1, F_temp.size(1));
  loop_ub = F_temp.size(1) - 1;
  nx = (F_temp.size(1) / 2) << 1;
  vectorUB = nx - 2;
  for (int32_T i{0}; i <= vectorUB; i += 2) {
    r = _mm_loadu_pd(&F_temp[i]);
    _mm_storeu_pd(&F_temp[i], _mm_sub_pd(_mm_set1_pd(1.0), r));
  }
  for (int32_T i{nx}; i <= loop_ub; i++) {
    F_temp[i] = 1.0 - F_temp[i];
  }
  F_temp.set_size(&c_emlrtRTEI, &d_st, 1, F_temp.size(1));
  b_x = x[0];
  loop_ub = F_temp.size(1) - 1;
  nx = (F_temp.size(1) / 2) << 1;
  vectorUB = nx - 2;
  for (int32_T i{0}; i <= vectorUB; i += 2) {
    r = _mm_loadu_pd(&F_temp[i]);
    _mm_storeu_pd(&F_temp[i], _mm_mul_pd(_mm_set1_pd(b_x), r));
  }
  for (int32_T i{nx}; i <= loop_ub; i++) {
    F_temp[i] = b_x * F_temp[i];
  }
  if ((F_temp.size(1) != fun.workspace.ydata.size(1)) &&
      ((F_temp.size(1) != 1) && (fun.workspace.ydata.size(1) != 1))) {
    emlrtDimSizeImpxCheckR2021b(F_temp.size(1), fun.workspace.ydata.size(1),
                                &c_emlrtECI, &c_st);
  }
  if (F_temp.size(1) == fun.workspace.ydata.size(1)) {
    varargout_f1.set_size(&c_emlrtRTEI, &c_st, 1, F_temp.size(1));
    loop_ub = F_temp.size(1);
    nx = (F_temp.size(1) / 2) << 1;
    vectorUB = nx - 2;
    for (int32_T i{0}; i <= vectorUB; i += 2) {
      r = _mm_loadu_pd(&F_temp[i]);
      _mm_storeu_pd(&varargout_f1[i],
                    _mm_sub_pd(r, _mm_loadu_pd(&fun.workspace.ydata[i])));
    }
    for (int32_T i{nx}; i < loop_ub; i++) {
      varargout_f1[i] = F_temp[i] - fun.workspace.ydata[i];
    }
  } else {
    d_st.site = &r_emlrtRSI;
    binary_expand_op(d_st, varargout_f1, F_temp, fun);
  }
  st.site = &y_emlrtRSI;
  nx = varargout_f1.size(1);
  b_st.site = &kb_emlrtRSI;
  loop_ub = 1;
  if (varargout_f1.size(1) > 1) {
    loop_ub = varargout_f1.size(1);
  }
  if (varargout_f1.size(1) > muIntScalarMax_sint32(nx, loop_ub)) {
    emlrtErrorWithMessageIdR2018a(&st, &g_emlrtRTEI,
                                  "Coder:toolbox:reshape_emptyReshapeLimit",
                                  "Coder:toolbox:reshape_emptyReshapeLimit", 0);
  }
  if (F_temp.size(1) == 1) {
    loop_ub = fun.workspace.ydata.size(1);
  } else {
    loop_ub = F_temp.size(1);
  }
  varargout_2.set_size(&e_emlrtRTEI, &sp, loop_ub);
  for (int32_T i{0}; i < loop_ub; i++) {
    varargout_2[i] = varargout_f1[i];
  }
  emlrtHeapReferenceStackLeaveFcnR2012b((emlrtConstCTX)&sp);
}

} // namespace levenbergMarquardt
} // namespace coder
} // namespace optim
} // namespace coder

// End of code generation (driver.cpp)
