//
// Student License - for use by students to meet course requirements and
// perform academic research at degree granting institutions only.  Not
// for government, commercial, or other organizational use.
//
// factoryConstruct.cpp
//
// Code generation for function 'factoryConstruct'
//

// Include files
#include "factoryConstruct.h"
#include "CalculateT1Map_mex_internal_types.h"
#include "anonymous_function.h"
#include "hasFiniteBounds.h"
#include "rt_nonfinite.h"
#include "coder_array.h"

// Variable Definitions
static emlrtRTEInfo cb_emlrtRTEI{
    1,                  // lineNo
    1,                  // colNo
    "factoryConstruct", // fName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\shared\\optimlib\\+optim\\+coder\\+"
    "utils\\+FiniteDifferences\\factoryConstruct.p" // pName
};

// Function Definitions
namespace coder {
namespace optim {
namespace coder {
namespace utils {
namespace FiniteDifferences {
void b_factoryConstruct(const emlrtStack &sp,
                        const b_anonymous_function &nonlin, int32_T mCeq,
                        const real_T ub[2], c_struct_T &obj)
{
  obj.nonlin = nonlin;
  obj.f_1 = 0.0;
  obj.cEq_1.set_size(&cb_emlrtRTEI, &sp, mCeq);
  obj.f_2 = 0.0;
  obj.cEq_2.set_size(&cb_emlrtRTEI, &sp, mCeq);
  obj.nVar = 2;
  obj.mIneq = 0;
  obj.mEq = mCeq;
  obj.numEvals = 0;
  obj.SpecifyObjectiveGradient = false;
  obj.SpecifyConstraintGradient = false;
  obj.isEmptyNonlcon = (mCeq == 0);
  obj.FiniteDifferenceType = 0;
  obj.hasBounds = hasFiniteBounds(obj.hasLB, obj.hasUB, ub);
}

void c_factoryConstruct(const emlrtStack &sp,
                        const b_anonymous_function &nonlin, int32_T mCeq,
                        const real_T ub[2], c_struct_T &obj)
{
  obj.nonlin = nonlin;
  obj.f_1 = 0.0;
  obj.cEq_1.set_size(&cb_emlrtRTEI, &sp, mCeq);
  obj.f_2 = 0.0;
  obj.cEq_2.set_size(&cb_emlrtRTEI, &sp, mCeq);
  obj.nVar = 2;
  obj.mIneq = 0;
  obj.mEq = mCeq;
  obj.numEvals = 0;
  obj.SpecifyObjectiveGradient = false;
  obj.SpecifyConstraintGradient = false;
  obj.isEmptyNonlcon = (mCeq == 0);
  obj.FiniteDifferenceType = 0;
  obj.hasBounds = hasFiniteBounds(obj.hasLB, obj.hasUB, ub);
}

void factoryConstruct(const emlrtStack &sp, const b_anonymous_function &nonlin,
                      int32_T mCeq, const real_T ub[2], c_struct_T &obj)
{
  obj.nonlin = nonlin;
  obj.f_1 = 0.0;
  obj.cEq_1.set_size(&cb_emlrtRTEI, &sp, mCeq);
  obj.f_2 = 0.0;
  obj.cEq_2.set_size(&cb_emlrtRTEI, &sp, mCeq);
  obj.nVar = 2;
  obj.mIneq = 0;
  obj.mEq = mCeq;
  obj.numEvals = 0;
  obj.SpecifyObjectiveGradient = false;
  obj.SpecifyConstraintGradient = false;
  obj.isEmptyNonlcon = (mCeq == 0);
  obj.FiniteDifferenceType = 0;
  obj.hasBounds = hasFiniteBounds(obj.hasLB, obj.hasUB, ub);
}

} // namespace FiniteDifferences
} // namespace utils
} // namespace coder
} // namespace optim
} // namespace coder

// End of code generation (factoryConstruct.cpp)
