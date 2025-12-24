/*
 * File: Rotary_Inverted_Pendulum_HIL_Tutorial_private.h
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

#ifndef Rotary_Inverted_Pendulum_HIL_Tutorial_private_h_
#define Rotary_Inverted_Pendulum_HIL_Tutorial_private_h_
#include "rtwtypes.h"
#include "multiword_types.h"
#include "Rotary_Inverted_Pendulum_HIL_Tutorial_types.h"
#include "rtw_continuous.h"
#include "rtw_solver.h"

/* Private macros used by the generated code to access rtModel */
#ifndef rtmIsMajorTimeStep
#define rtmIsMajorTimeStep(rtm)        (((rtm)->Timing.simTimeStep) == MAJOR_TIME_STEP)
#endif

#ifndef rtmIsMinorTimeStep
#define rtmIsMinorTimeStep(rtm)        (((rtm)->Timing.simTimeStep) == MINOR_TIME_STEP)
#endif

#ifndef rtmSetTFinal
#define rtmSetTFinal(rtm, val)         ((rtm)->Timing.tFinal = (val))
#endif

#ifndef rtmSetTPtr
#define rtmSetTPtr(rtm, val)           ((rtm)->Timing.t = (val))
#endif

extern real_T rt_remd_snf(real_T u0, real_T u1);
extern real_T rt_roundd_snf(real_T u);

#endif                    /* Rotary_Inverted_Pendulum_HIL_Tutorial_private_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
