//
// Student License - for use by students to meet course requirements and
// perform academic research at degree granting institutions only.  Not
// for government, commercial, or other organizational use.
//
// CalculateT1Map_mex_data.cpp
//
// Code generation for function 'CalculateT1Map_mex_data'
//

// Include files
#include "CalculateT1Map_mex_data.h"
#include "rt_nonfinite.h"

// Variable Definitions
emlrtCTX emlrtRootTLSGlobal{nullptr};

const volatile char_T *emlrtBreakCheckR2012bFlagVar{nullptr};

emlrtContext emlrtContextGlobal{
    true,                                                 // bFirstTime
    false,                                                // bInitialized
    131642U,                                              // fVersionInfo
    nullptr,                                              // fErrorFunction
    "CalculateT1Map_mex",                                 // fFunctionName
    nullptr,                                              // fRTCallStack
    false,                                                // bDebugMode
    {2666790369U, 2630951428U, 3350295197U, 1643587045U}, // fSigWrd
    nullptr                                               // fSigMem
};

emlrtRSInfo h_emlrtRSI{
    15,    // lineNo
    "max", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\lib\\matlab\\datafun\\max.m" // pathName
};

emlrtRSInfo
    i_emlrtRSI{
        44,         // lineNo
        "minOrMax", // fcnName
        "C:\\Program "
        "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+internal\\minOrMax."
        "m" // pathName
    };

emlrtRSInfo
    j_emlrtRSI{
        79,        // lineNo
        "maximum", // fcnName
        "C:\\Program "
        "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+internal\\minOrMax."
        "m" // pathName
    };

emlrtRSInfo k_emlrtRSI{
    190,             // lineNo
    "unaryMinOrMax", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+"
    "internal\\unaryMinOrMax.m" // pathName
};

emlrtRSInfo l_emlrtRSI{
    901,                    // lineNo
    "maxRealVectorOmitNaN", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+"
    "internal\\unaryMinOrMax.m" // pathName
};

emlrtRSInfo m_emlrtRSI{
    72,                      // lineNo
    "vectorMinOrMaxInPlace", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+"
    "internal\\vectorMinOrMaxInPlace.m" // pathName
};

emlrtRSInfo n_emlrtRSI{
    64,                      // lineNo
    "vectorMinOrMaxInPlace", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+"
    "internal\\vectorMinOrMaxInPlace.m" // pathName
};

emlrtRSInfo o_emlrtRSI{
    113,         // lineNo
    "findFirst", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+"
    "internal\\vectorMinOrMaxInPlace.m" // pathName
};

emlrtRSInfo p_emlrtRSI{
    20,                               // lineNo
    "eml_int_forloop_overflow_check", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\lib\\matlab\\eml\\eml_int_forloop_"
    "overflow_check.m" // pathName
};

emlrtRSInfo q_emlrtRSI{
    130,                        // lineNo
    "minOrMaxRealVectorKernel", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+"
    "internal\\vectorMinOrMaxInPlace.m" // pathName
};

emlrtRSInfo r_emlrtRSI{
    1,             // lineNo
    "lsqcurvefit", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\shared\\optimlib\\eml\\lsqcurvefit.p" // pathName
};

emlrtRSInfo v_emlrtRSI{
    63,                               // lineNo
    "function_handle/parenReference", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+internal\\function_"
    "handle.m" // pathName
};

emlrtRSInfo
    ab_emlrtRSI{
        10,    // lineNo
        "exp", // fcnName
        "C:\\Program "
        "Files\\MATLAB\\R2023a\\toolbox\\eml\\lib\\matlab\\elfun\\exp.m" // pathName
    };

emlrtRSInfo bb_emlrtRSI{
    33,                           // lineNo
    "applyScalarFunctionInPlace", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+"
    "internal\\applyScalarFunctionInPlace.m" // pathName
};

emlrtRSInfo cb_emlrtRSI{
    9,                                                        // lineNo
    "@(coeffs,tvalues)coeffs(1)*(1-exp(-tvalues/coeffs(2)))", // fcnName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT1Map.m" // pathName
};

emlrtRSInfo gb_emlrtRSI{
    93,                   // lineNo
    "validateattributes", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\lib\\matlab\\lang\\validateattributes"
    ".m" // pathName
};

emlrtRSInfo fc_emlrtRSI{
    1,                                        // lineNo
    "@(x)wrapper(x,fun,xdata,ydata,options)", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\shared\\optimlib\\eml\\lsqcurvefit.p" // pathName
};

emlrtRSInfo gc_emlrtRSI{
    1,         // lineNo
    "wrapper", // fcnName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\shared\\optimlib\\eml\\lsqcurvefit.p" // pathName
};

emlrtRSInfo pc_emlrtRSI{
    9,                                                    // lineNo
    "@(coeffs,tvalues)coeffs(1)*exp(-tvalues/coeffs(2))", // fcnName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT2Map.m" // pathName
};

emlrtRTEInfo b_emlrtRTEI{
    134,             // lineNo
    27,              // colNo
    "unaryMinOrMax", // fName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+"
    "internal\\unaryMinOrMax.m" // pName
};

emlrtRTEInfo c_emlrtRTEI{
    1,             // lineNo
    1,             // colNo
    "lsqcurvefit", // fName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\shared\\optimlib\\eml\\lsqcurvefit.p" // pName
};

emlrtECInfo c_emlrtECI{
    2,             // nDims
    1,             // lineNo
    1,             // colNo
    "lsqcurvefit", // fName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\shared\\optimlib\\eml\\lsqcurvefit.p" // pName
};

emlrtRTEInfo f_emlrtRTEI{
    15,             // lineNo
    19,             // colNo
    "validatesize", // fName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+internal\\+"
    "valattr\\validatesize.m" // pName
};

emlrtECInfo d_emlrtECI{
    2,         // nDims
    1,         // lineNo
    1,         // colNo
    "wrapper", // fName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\shared\\optimlib\\eml\\lsqcurvefit.p" // pName
};

emlrtRTEInfo x_emlrtRTEI{
    14,         // lineNo
    5,          // colNo
    "isfinite", // fName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\lib\\matlab\\elmat\\isfinite.m" // pName
};

emlrtRTEInfo y_emlrtRTEI{
    35,                // lineNo
    13,                // colNo
    "function_handle", // fName
    "C:\\Program "
    "Files\\MATLAB\\R2023a\\toolbox\\eml\\eml\\+coder\\+internal\\function_"
    "handle.m" // pName
};

emlrtRTEInfo ab_emlrtRTEI{
    9,                // lineNo
    45,               // colNo
    "CalculateT1Map", // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT1Map.m" // pName
};

emlrtRTEInfo bb_emlrtRTEI{
    9,                // lineNo
    43,               // colNo
    "CalculateT1Map", // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT1Map.m" // pName
};

emlrtRTEInfo mb_emlrtRTEI{
    9,                // lineNo
    38,               // colNo
    "CalculateT2Map", // fName
    "D:\\Users\\rok.ister\\Documents\\GitHub\\MRI-processing-"
    "tool\\CalculateT2Map.m" // pName
};

// End of code generation (CalculateT1Map_mex_data.cpp)
