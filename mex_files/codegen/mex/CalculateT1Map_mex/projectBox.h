//
// Student License - for use by students to meet course requirements and
// perform academic research at degree granting institutions only.  Not
// for government, commercial, or other organizational use.
//
// projectBox.h
//
// Code generation for function 'projectBox'
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
namespace levenbergMarquardt {
real_T projectBox(const real_T x[2], real_T dx[2], const real_T ub[2],
                  const boolean_T hasUB[2]);

}
} // namespace coder
} // namespace optim
} // namespace coder

// End of code generation (projectBox.h)
