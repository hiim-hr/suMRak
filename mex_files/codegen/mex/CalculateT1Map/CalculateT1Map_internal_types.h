//
// Student License - for use by students to meet course requirements and
// perform academic research at degree granting institutions only.  Not
// for government, commercial, or other organizational use.
//
// CalculateT1Map_internal_types.h
//
// Code generation for function 'CalculateT1Map'
//

#pragma once

// Include files
#include "CalculateT1Map_types.h"
#include "anonymous_function.h"
#include "rtwtypes.h"
#include "coder_array.h"
#include "emlrt.h"

// Type Definitions
struct c_struct_T {
  coder::b_anonymous_function nonlin;
  real_T f_1;
  coder::array<real_T, 1U> cEq_1;
  real_T f_2;
  coder::array<real_T, 1U> cEq_2;
  int32_T nVar;
  int32_T mIneq;
  int32_T mEq;
  int32_T numEvals;
  boolean_T SpecifyObjectiveGradient;
  boolean_T SpecifyConstraintGradient;
  boolean_T isEmptyNonlcon;
  boolean_T hasLB[2];
  boolean_T hasUB[2];
  boolean_T hasBounds;
  int32_T FiniteDifferenceType;
};

struct rtDesignRangeCheckInfo {
  int32_T lineNo;
  int32_T colNo;
  const char_T *fName;
  const char_T *pName;
};

struct rtDoubleCheckInfo {
  int32_T lineNo;
  int32_T colNo;
  const char_T *fName;
  const char_T *pName;
  int32_T checkKind;
};

struct rtRunTimeErrorInfo {
  int32_T lineNo;
  int32_T colNo;
  const char_T *fName;
  const char_T *pName;
};

// End of code generation (CalculateT1Map_internal_types.h)
