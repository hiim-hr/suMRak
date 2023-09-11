//
// Student License - for use by students to meet course requirements and
// perform academic research at degree granting institutions only.  Not
// for government, commercial, or other organizational use.
//
// projectBox.cpp
//
// Code generation for function 'projectBox'
//

// Include files
#include "projectBox.h"
#include "rt_nonfinite.h"
#include "mwmathutil.h"

// Function Definitions
namespace coder {
namespace optim {
namespace coder {
namespace levenbergMarquardt {
real_T b_projectBox(const real_T x[2], real_T dx[2], const real_T ub[2],
                    const boolean_T hasUB[2])
{
  real_T d;
  real_T dxInfNorm;
  d = muDoubleScalarMax(0.0 - x[0], dx[0]);
  dx[0] = d;
  if (hasUB[0]) {
    d = muDoubleScalarMin(ub[0] - x[0], d);
    dx[0] = d;
  }
  dxInfNorm = muDoubleScalarMax(0.0, muDoubleScalarAbs(d));
  d = muDoubleScalarMax(0.0 - x[1], dx[1]);
  dx[1] = d;
  if (hasUB[1]) {
    d = muDoubleScalarMin(ub[1] - x[1], d);
    dx[1] = d;
  }
  return muDoubleScalarMax(dxInfNorm, muDoubleScalarAbs(d));
}

void projectBox(const real_T ub[2], const boolean_T hasUB[2], real_T dx[2])
{
  dx[0] = 1.0;
  if (hasUB[0]) {
    dx[0] = muDoubleScalarMin(ub[0], 1.0);
  }
  dx[1] = 0.03;
  if (hasUB[1]) {
    dx[1] = muDoubleScalarMin(ub[1], 0.03);
  }
}

} // namespace levenbergMarquardt
} // namespace coder
} // namespace optim
} // namespace coder

// End of code generation (projectBox.cpp)
