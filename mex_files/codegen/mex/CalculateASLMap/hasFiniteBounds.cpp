//
// Student License - for use by students to meet course requirements and
// perform academic research at degree granting institutions only.  Not
// for government, commercial, or other organizational use.
//
// hasFiniteBounds.cpp
//
// Code generation for function 'hasFiniteBounds'
//

// Include files
#include "hasFiniteBounds.h"
#include "rt_nonfinite.h"
#include "mwmathutil.h"

// Function Definitions
namespace coder {
namespace optim {
namespace coder {
namespace utils {
boolean_T hasFiniteBounds(boolean_T hasLB[2], boolean_T hasUB[2],
                          const real_T ub[2])
{
  boolean_T hasBounds;
  hasLB[0] = true;
  hasUB[0] = ((!muDoubleScalarIsInf(ub[0])) && (!muDoubleScalarIsNaN(ub[0])));
  hasBounds = true;
  for (int32_T idx{1}; idx < 2; idx++) {
    hasLB[idx] = true;
    hasUB[idx] =
        ((!muDoubleScalarIsInf(ub[idx])) && (!muDoubleScalarIsNaN(ub[idx])));
  }
  return hasBounds;
}

} // namespace utils
} // namespace coder
} // namespace optim
} // namespace coder

// End of code generation (hasFiniteBounds.cpp)
