/*
 * File: Rotary_Inverted_Pendulum_HIL_Tutorial.h
 *
 * Code generated for Simulink model 'Rotary_Inverted_Pendulum_HIL_Tutorial'.
 *
 * Model version                  : 10.2
 * Simulink Coder version         : 24.2 (R2024b) 21-Jun-2024
 * C/C++ source code generated on : Tue Dec 23 05:31:33 2025
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: Atmel->AVR
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#ifndef Rotary_Inverted_Pendulum_HIL_Tutorial_h_
#define Rotary_Inverted_Pendulum_HIL_Tutorial_h_
#ifndef Rotary_Inverted_Pendulum_HIL_Tutorial_COMMON_INCLUDES_
#define Rotary_Inverted_Pendulum_HIL_Tutorial_COMMON_INCLUDES_
#include "rtwtypes.h"
#include "rtw_extmode.h"
#include "sysran_types.h"
#include "rtw_continuous.h"
#include "rtw_solver.h"
#include "ext_mode.h"
#include "MW_arduino_digitalio.h"
#include "MW_PWM.h"
#include "MW_ArduinoEncoder.h"
#endif              /* Rotary_Inverted_Pendulum_HIL_Tutorial_COMMON_INCLUDES_ */

#include "Rotary_Inverted_Pendulum_HIL_Tutorial_types.h"
#include "rt_nonfinite.h"
#include "rtGetInf.h"
#include "rtGetNaN.h"
#include "MW_target_hardware_resources.h"

/* Macros for accessing real-time model data structure */
#ifndef rtmGetFinalTime
#define rtmGetFinalTime(rtm)           ((rtm)->Timing.tFinal)
#endif

#ifndef rtmGetRTWExtModeInfo
#define rtmGetRTWExtModeInfo(rtm)      ((rtm)->extModeInfo)
#endif

#ifndef rtmGetErrorStatus
#define rtmGetErrorStatus(rtm)         ((rtm)->errorStatus)
#endif

#ifndef rtmSetErrorStatus
#define rtmSetErrorStatus(rtm, val)    ((rtm)->errorStatus = (val))
#endif

#ifndef rtmGetStopRequested
#define rtmGetStopRequested(rtm)       ((rtm)->Timing.stopRequestedFlag)
#endif

#ifndef rtmSetStopRequested
#define rtmSetStopRequested(rtm, val)  ((rtm)->Timing.stopRequestedFlag = (val))
#endif

#ifndef rtmGetStopRequestedPtr
#define rtmGetStopRequestedPtr(rtm)    (&((rtm)->Timing.stopRequestedFlag))
#endif

#ifndef rtmGetT
#define rtmGetT(rtm)                   (rtmGetTPtr((rtm))[0])
#endif

#ifndef rtmGetTFinal
#define rtmGetTFinal(rtm)              ((rtm)->Timing.tFinal)
#endif

#ifndef rtmGetTPtr
#define rtmGetTPtr(rtm)                ((rtm)->Timing.t)
#endif

#define Rotary_Inverted_Pendulum_HIL_Tutorial_M (Rotary_Inverted_Pendulum_HIL_M)

/* Block signals (default storage) */
typedef struct {
  real_T DataTypeConversion1;          /* '<S4>/Data Type Conversion1' */
  real_T D_to_R;                       /* '<S4>/D_to_R' */
  real_T Add;                          /* '<S5>/Add' */
  real_T Switch;                       /* '<S6>/Switch' */
  real_T DataTypeConversion1_n;        /* '<S3>/Data Type Conversion1' */
  real_T revtodegree;                  /* '<S3>/rev to degree' */
  real_T D_to_R_e;                     /* '<S3>/D_to_R' */
  real_T Switch_f;                     /* '<S7>/Switch' */
  real_T ControlAction;                /* '<S1>/Linearity checker' */
  real_T pwm;                          /* '<S2>/remove any negative pwm sign' */
} B_Rotary_Inverted_Pendulum_HI_T;

/* Block states (default storage) for system '<Root>' */
typedef struct {
  codertarget_arduinobase_block_T obj; /* '<S2>/Digital Output1' */
  codertarget_arduinobase_block_T obj_i;/* '<S2>/Digital Output' */
  codertarget_arduinobase_inter_T obj_m;/* '<S2>/PWM' */
  codertarget_arduinobase_int_h_T obj_m4;/* '<S4>/Encoder' */
  codertarget_arduinobase_int_h_T obj_f;/* '<S3>/Encoder' */
  real_T TimeStampA;                   /* '<S3>/Derivative' */
  real_T LastUAtTimeA;                 /* '<S3>/Derivative' */
  real_T TimeStampB;                   /* '<S3>/Derivative' */
  real_T LastUAtTimeB;                 /* '<S3>/Derivative' */
  real_T TimeStampA_i;                 /* '<S4>/Derivative' */
  real_T LastUAtTimeA_f;               /* '<S4>/Derivative' */
  real_T TimeStampB_j;                 /* '<S4>/Derivative' */
  real_T LastUAtTimeB_a;               /* '<S4>/Derivative' */
  struct {
    void *LoggedData[2];
  } Scope1_PWORK;                      /* '<S2>/Scope1' */

  struct {
    void *LoggedData;
  } Scope1_PWORK_a;                    /* '<S1>/Scope1' */

  struct {
    void *LoggedData[2];
  } Scope2_PWORK;                      /* '<S5>/Scop e2' */

  struct {
    void *LoggedData;
  } Scope_PWORK;                       /* '<S3>/Scope' */

  struct {
    void *LoggedData[2];
  } Scope_PWORK_l;                     /* '<S5>/Scope' */
} DW_Rotary_Inverted_Pendulum_H_T;

/* Parameters (default storage) */
struct P_Rotary_Inverted_Pendulum_HI_T_ {
  real_T k[4];                         /* Variable: k
                                        * Referenced by: '<S1>/Gain1'
                                        */
  real_T Gain_Gain;                    /* Expression: 1
                                        * Referenced by: '<S1>/Gain'
                                        */
  real_T Constant_Value;               /* Expression: 2*pi
                                        * Referenced by: '<S6>/Constant'
                                        */
  real_T Bias_Bias;                    /* Expression: pi
                                        * Referenced by: '<S6>/Bias'
                                        */
  real_T Bias1_Bias;                   /* Expression: -pi
                                        * Referenced by: '<S6>/Bias1'
                                        */
  real_T Constant1_Value;              /* Expression: 2*pi
                                        * Referenced by: '<S6>/Constant1'
                                        */
  real_T Bias2_Bias;                   /* Expression: -pi
                                        * Referenced by: '<S6>/Bias2'
                                        */
  real_T Bias3_Bias;                   /* Expression: +pi
                                        * Referenced by: '<S6>/Bias3'
                                        */
  real_T Bias_Bias_g;                  /* Expression: pi
                                        * Referenced by: '<S7>/Bias'
                                        */
  real_T Bias1_Bias_n;                 /* Expression: -pi
                                        * Referenced by: '<S7>/Bias1'
                                        */
  real_T Bias2_Bias_e;                 /* Expression: -pi
                                        * Referenced by: '<S7>/Bias2'
                                        */
  real_T Bias3_Bias_d;                 /* Expression: +pi
                                        * Referenced by: '<S7>/Bias3'
                                        */
  real_T revtodegree_Gain;             /* Expression: (360/600)/4
                                        * Referenced by: '<S4>/rev to degree'
                                        */
  real_T D_to_R_Gain;                  /* Expression: pi/180
                                        * Referenced by: '<S4>/D_to_R'
                                        */
  real_T for_shifting_Value;           /* Expression: pi
                                        * Referenced by: '<S5>/for_shifting'
                                        */
  real_T Switch_Threshold;             /* Expression: 0
                                        * Referenced by: '<S6>/Switch'
                                        */
  real_T revtodegree_Gain_j;           /* Expression: (360/(500*4))
                                        * Referenced by: '<S3>/rev to degree'
                                        */
  real_T D_to_R_Gain_e;                /* Expression: pi/180
                                        * Referenced by: '<S3>/D_to_R'
                                        */
  real_T Constant_Value_e;             /* Expression: 2*pi
                                        * Referenced by: '<S7>/Constant'
                                        */
  real_T Constant1_Value_h;            /* Expression: 2*pi
                                        * Referenced by: '<S7>/Constant1'
                                        */
  real_T Switch_Threshold_c;           /* Expression: 0
                                        * Referenced by: '<S7>/Switch'
                                        */
  real_T Constant_Value_k;             /* Expression: 0
                                        * Referenced by: '<S1>/Constant'
                                        */
  real_T Linearitychecker_Threshold;   /* Expression: pi/7
                                        * Referenced by: '<S1>/Linearity checker'
                                        */
  real_T Scaling_Gain;                 /* Expression: 1000*10
                                        * Referenced by: '<S2>/Scaling'
                                        */
  real_T Saturation_UpperSat;          /* Expression: 255
                                        * Referenced by: '<S2>/Saturation'
                                        */
  real_T Saturation_LowerSat;          /* Expression: -255
                                        * Referenced by: '<S2>/Saturation'
                                        */
  real_T Constant_Value_a;             /* Expression: 0
                                        * Referenced by: '<S2>/Constant'
                                        */
  real_T Constant1_Value_e;            /* Expression: 1
                                        * Referenced by: '<S2>/Constant1'
                                        */
  real_T Switch1_Threshold;            /* Expression: 0
                                        * Referenced by: '<S2>/Switch1'
                                        */
};

/* Real-time Model Data Structure */
struct tag_RTM_Rotary_Inverted_Pendu_T {
  const char_T *errorStatus;
  RTWExtModeInfo *extModeInfo;
  RTWSolverInfo solverInfo;

  /*
   * Sizes:
   * The following substructure contains sizes information
   * for many of the model attributes such as inputs, outputs,
   * dwork, sample times, etc.
   */
  struct {
    uint32_T checksums[4];
  } Sizes;

  /*
   * SpecialInfo:
   * The following substructure contains special information
   * related to other components that are dependent on RTW.
   */
  struct {
    const void *mappingInfo;
  } SpecialInfo;

  /*
   * Timing:
   * The following substructure contains information regarding
   * the timing information for the model.
   */
  struct {
    uint32_T clockTick0;
    time_T stepSize0;
    uint32_T clockTick1;
    time_T tFinal;
    SimTimeStep simTimeStep;
    boolean_T stopRequestedFlag;
    time_T *t;
    time_T tArray[2];
  } Timing;
};

/* Block parameters (default storage) */
extern P_Rotary_Inverted_Pendulum_HI_T Rotary_Inverted_Pendulum_HIL__P;

/* Block signals (default storage) */
extern B_Rotary_Inverted_Pendulum_HI_T Rotary_Inverted_Pendulum_HIL__B;

/* Block states (default storage) */
extern DW_Rotary_Inverted_Pendulum_H_T Rotary_Inverted_Pendulum_HIL_DW;

/* Model entry point functions */
extern void Rotary_Inverted_Pendulum_HIL_Tutorial_initialize(void);
extern void Rotary_Inverted_Pendulum_HIL_Tutorial_step(void);
extern void Rotary_Inverted_Pendulum_HIL_Tutorial_terminate(void);

/* Real-time Model object */
extern RT_MODEL_Rotary_Inverted_Pend_T *const Rotary_Inverted_Pendulum_HIL_M;
extern volatile boolean_T stopRequested;
extern volatile boolean_T runModel;

/*-
 * The generated code includes comments that allow you to trace directly
 * back to the appropriate location in the model.  The basic format
 * is <system>/block_name, where system is the system number (uniquely
 * assigned by Simulink) and block_name is the name of the block.
 *
 * Use the MATLAB hilite_system command to trace the generated code back
 * to the model.  For example,
 *
 * hilite_system('<S3>')    - opens system 3
 * hilite_system('<S3>/Kp') - opens and selects block Kp which resides in S3
 *
 * Here is the system hierarchy for this model
 *
 * '<Root>' : 'Rotary_Inverted_Pendulum_HIL_Tutorial'
 * '<S1>'   : 'Rotary_Inverted_Pendulum_HIL_Tutorial/Controller'
 * '<S2>'   : 'Rotary_Inverted_Pendulum_HIL_Tutorial/motor drive'
 * '<S3>'   : 'Rotary_Inverted_Pendulum_HIL_Tutorial/motor encoder'
 * '<S4>'   : 'Rotary_Inverted_Pendulum_HIL_Tutorial/pendulum encoder'
 * '<S5>'   : 'Rotary_Inverted_Pendulum_HIL_Tutorial/state_finding'
 * '<S6>'   : 'Rotary_Inverted_Pendulum_HIL_Tutorial/state_finding/conditioning_for_alpha'
 * '<S7>'   : 'Rotary_Inverted_Pendulum_HIL_Tutorial/state_finding/conditioning_for_theta'
 */
#endif                            /* Rotary_Inverted_Pendulum_HIL_Tutorial_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
