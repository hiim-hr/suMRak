//
// Student License - for use by students to meet course requirements and
// perform academic research at degree granting institutions only.  Not
// for government, commercial, or other organizational use.
//
// checkStoppingCriteria.cpp
//
// Code generation for function 'checkStoppingCriteria'
//

// Include files
#include "checkStoppingCriteria.h"
#include "rt_nonfinite.h"
#include "mwmathutil.h"

// Function Definitions
namespace coder {
namespace optim {
namespace coder {
namespace levenbergMarquardt {
int32_T b_checkStoppingCriteria(const real_T gradf[2], real_T relFactor,
                                real_T funDiff, const real_T x[2],
                                const real_T dx[2], int32_T funcCount,
                                boolean_T stepSuccessful, int32_T &iter,
                                real_T projSteepestDescentInfNorm,
                                boolean_T hasFiniteBounds)
{
  real_T absx;
  real_T normGradF;
  int32_T exitflag;
  boolean_T guard1;
  normGradF = 0.0;
  for (int32_T k{0}; k < 2; k++) {
    absx = muDoubleScalarAbs(gradf[k]);
    if (muDoubleScalarIsNaN(absx) || (absx > normGradF)) {
      normGradF = absx;
    }
  }
  guard1 = false;
  if (hasFiniteBounds) {
    if (projSteepestDescentInfNorm * projSteepestDescentInfNorm <=
        1.0E-10 * normGradF * relFactor) {
      exitflag = 1;
    } else {
      guard1 = true;
    }
  } else {
    guard1 = true;
  }
  if (guard1) {
    if ((!hasFiniteBounds) && (normGradF <= 1.0E-10 * relFactor)) {
      exitflag = 1;
    } else if (funcCount >= 400) {
      exitflag = 0;
    } else if (iter >= 400) {
      exitflag = 0;
    } else {
      real_T absxk;
      real_T b_y;
      real_T t;
      real_T y;
      normGradF = 3.3121686421112381E-170;
      absx = 3.3121686421112381E-170;
      absxk = muDoubleScalarAbs(dx[0]);
      if (absxk > 3.3121686421112381E-170) {
        y = 1.0;
        normGradF = absxk;
      } else {
        t = absxk / 3.3121686421112381E-170;
        y = t * t;
      }
      absxk = muDoubleScalarAbs(x[0]);
      if (absxk > 3.3121686421112381E-170) {
        b_y = 1.0;
        absx = absxk;
      } else {
        t = absxk / 3.3121686421112381E-170;
        b_y = t * t;
      }
      absxk = muDoubleScalarAbs(dx[1]);
      if (absxk > normGradF) {
        t = normGradF / absxk;
        y = y * t * t + 1.0;
        normGradF = absxk;
      } else {
        t = absxk / normGradF;
        y += t * t;
      }
      absxk = muDoubleScalarAbs(x[1]);
      if (absxk > absx) {
        t = absx / absxk;
        b_y = b_y * t * t + 1.0;
        absx = absxk;
      } else {
        t = absxk / absx;
        b_y += t * t;
      }
      y = normGradF * muDoubleScalarSqrt(y);
      b_y = absx * muDoubleScalarSqrt(b_y);
      if (y < 1.0E-6 * (b_y + 1.4901161193847656E-8)) {
        exitflag = 4;
        if (!stepSuccessful) {
          iter++;
        }
      } else if (funDiff <= 1.0E-6) {
        exitflag = 3;
      } else {
        exitflag = -5;
      }
    }
  }
  return exitflag;
}

int32_T checkStoppingCriteria(const real_T gradf[2], real_T relFactor,
                              int32_T funcCount,
                              real_T projSteepestDescentInfNorm,
                              boolean_T hasFiniteBounds)
{
  real_T normGradF;
  int32_T exitflag;
  boolean_T guard1;
  normGradF = 0.0;
  for (int32_T k{0}; k < 2; k++) {
    real_T absx;
    absx = muDoubleScalarAbs(gradf[k]);
    if (muDoubleScalarIsNaN(absx) || (absx > normGradF)) {
      normGradF = absx;
    }
  }
  guard1 = false;
  if (hasFiniteBounds) {
    if (projSteepestDescentInfNorm * projSteepestDescentInfNorm <=
        1.0E-10 * normGradF * relFactor) {
      exitflag = 1;
    } else {
      guard1 = true;
    }
  } else {
    guard1 = true;
  }
  if (guard1) {
    if ((!hasFiniteBounds) && (normGradF <= 1.0E-10 * relFactor)) {
      exitflag = 1;
    } else if (funcCount >= 400) {
      exitflag = 0;
    } else {
      exitflag = -5;
    }
  }
  return exitflag;
}

} // namespace levenbergMarquardt
} // namespace coder
} // namespace optim
} // namespace coder

// End of code generation (checkStoppingCriteria.cpp)
