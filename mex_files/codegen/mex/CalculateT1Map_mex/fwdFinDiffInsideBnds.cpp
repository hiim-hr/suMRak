//
// Student License - for use by students to meet course requirements and
// perform academic research at degree granting institutions only.  Not
// for government, commercial, or other organizational use.
//
// fwdFinDiffInsideBnds.cpp
//
// Code generation for function 'fwdFinDiffInsideBnds'
//

// Include files
#include "fwdFinDiffInsideBnds.h"
#include "rt_nonfinite.h"

// Function Definitions
namespace coder {
namespace optim {
namespace coder {
namespace utils {
namespace FiniteDifferences {
namespace internal {
boolean_T fwdFinDiffInsideBnds(real_T xC_i, real_T ub_i, real_T &delta_i)
{
  boolean_T modifiedStep;
  modifiedStep = false;
  if ((ub_i != 0.0) && (xC_i >= 0.0) && (xC_i <= ub_i)) {
    real_T ubDiff;
    ubDiff = xC_i + delta_i;
    if ((ubDiff > ub_i) || (ubDiff < 0.0)) {
      delta_i = -delta_i;
      modifiedStep = true;
      ubDiff = xC_i + delta_i;
      if ((ubDiff > ub_i) || (ubDiff < 0.0)) {
        ubDiff = ub_i - xC_i;
        if (xC_i <= ubDiff) {
          delta_i = -xC_i;
        } else {
          delta_i = ubDiff;
        }
      }
    }
  }
  return modifiedStep;
}

} // namespace internal
} // namespace FiniteDifferences
} // namespace utils
} // namespace coder
} // namespace optim
} // namespace coder

// End of code generation (fwdFinDiffInsideBnds.cpp)
