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
#include "CalculateT2Map_internal_types.h"
#include "anonymous_function.h"
#include "rt_nonfinite.h"
#include "coder_array.h"
#include "mwmathutil.h"

// Variable Definitions
static emlrtRTEInfo w_emlrtRTEI{
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
void factoryConstruct(const emlrtStack &sp, const b_anonymous_function &nonlin,
                      int32_T mCeq, const real_T ub[2], c_struct_T &obj)
{
  obj.nonlin = nonlin;
  obj.f_1 = 0.0;
  obj.cEq_1.set_size(&w_emlrtRTEI, &sp, mCeq);
  obj.f_2 = 0.0;
  obj.cEq_2.set_size(&w_emlrtRTEI, &sp, mCeq);
  obj.nVar = 2;
  obj.mIneq = 0;
  obj.mEq = mCeq;
  obj.numEvals = 0;
  obj.SpecifyObjectiveGradient = false;
  obj.SpecifyConstraintGradient = false;
  obj.isEmptyNonlcon = (mCeq == 0);
  obj.FiniteDifferenceType = 0;
  obj.hasLB[0] = true;
  obj.hasUB[0] =
      ((!muDoubleScalarIsInf(ub[0])) && (!muDoubleScalarIsNaN(ub[0])));
  for (int32_T idx{1}; idx < 2; idx++) {
    obj.hasLB[idx] = true;
    obj.hasUB[idx] =
        ((!muDoubleScalarIsInf(ub[idx])) && (!muDoubleScalarIsNaN(ub[idx])));
  }
  obj.hasBounds = true;
}

} // namespace FiniteDifferences
} // namespace utils
} // namespace coder
} // namespace optim
} // namespace coder

// End of code generation (factoryConstruct.cpp)
