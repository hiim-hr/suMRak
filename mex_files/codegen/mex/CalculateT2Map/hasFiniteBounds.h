//
// Student License - for use by students to meet course requirements and
// perform academic research at degree granting institutions only.  Not
// for government, commercial, or other organizational use.
//
// hasFiniteBounds.h
//
// Code generation for function 'hasFiniteBounds'
//

#pragma once

// Include files
#include "rtwtypes.h"
#include "emlrt.h"
#include "mex.h"
#include <cmath>
#include <cstdio>
#include <cstdlib>
#include <cstring>

// Function Declarations
namespace coder {
namespace optim {
namespace coder {
namespace utils {
boolean_T hasFiniteBounds(boolean_T hasLB[2], boolean_T hasUB[2],
                          const real_T ub[2]);

}
} // namespace coder
} // namespace optim
} // namespace coder

// End of code generation (hasFiniteBounds.h)
