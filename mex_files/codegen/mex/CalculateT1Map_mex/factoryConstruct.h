//
// Student License - for use by students to meet course requirements and
// perform academic research at degree granting institutions only.  Not
// for government, commercial, or other organizational use.
//
// factoryConstruct.h
//
// Code generation for function 'factoryConstruct'
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

// Type Declarations
namespace coder {
class b_anonymous_function;

}
struct c_struct_T;

// Function Declarations
namespace coder {
namespace optim {
namespace coder {
namespace utils {
namespace FiniteDifferences {
void b_factoryConstruct(const emlrtStack &sp,
                        const b_anonymous_function &nonlin, int32_T mCeq,
                        const real_T ub[2], c_struct_T &obj);

void c_factoryConstruct(const emlrtStack &sp,
                        const b_anonymous_function &nonlin, int32_T mCeq,
                        const real_T ub[2], c_struct_T &obj);

void factoryConstruct(const emlrtStack &sp, const b_anonymous_function &nonlin,
                      int32_T mCeq, const real_T ub[2], c_struct_T &obj);

} // namespace FiniteDifferences
} // namespace utils
} // namespace coder
} // namespace optim
} // namespace coder

// End of code generation (factoryConstruct.h)
