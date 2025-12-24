/*
 * File: Rotary_Inverted_Pendulum_HIL_Tutorial_data.c
 *
 * Code generated for Simulink model 'Rotary_Inverted_Pendulum_HIL_Tutorial'.
 *
 * Model version                  : 10.1
 * Simulink Coder version         : 24.2 (R2024b) 21-Jun-2024
 * C/C++ source code generated on : Thu Dec 18 00:17:57 2025
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: Atmel->AVR
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#include "Rotary_Inverted_Pendulum_HIL_Tutorial.h"

/* Block parameters (default storage) */
P_Rotary_Inverted_Pendulum_HI_T Rotary_Inverted_Pendulum_HIL__P = {
  /* Variable: k_2
   * Referenced by: '<S1>/Gain1'
   */
  { 0.31622776601944275, 70.710678123807725, 0.00011512729244043089,
    -0.00084502901766583057 },

  /* Expression: 1
   * Referenced by: '<S1>/Gain'
   */
  1.0,

  /* Expression: 2*pi
   * Referenced by: '<S6>/Constant'
   */
  6.2831853071795862,

  /* Expression: pi
   * Referenced by: '<S6>/Bias'
   */
  3.1415926535897931,

  /* Expression: -pi
   * Referenced by: '<S6>/Bias1'
   */
  -3.1415926535897931,

  /* Expression: 2*pi
   * Referenced by: '<S6>/Constant1'
   */
  6.2831853071795862,

  /* Expression: -pi
   * Referenced by: '<S6>/Bias2'
   */
  -3.1415926535897931,

  /* Expression: +pi
   * Referenced by: '<S6>/Bias3'
   */
  3.1415926535897931,

  /* Expression: pi
   * Referenced by: '<S7>/Bias'
   */
  3.1415926535897931,

  /* Expression: -pi
   * Referenced by: '<S7>/Bias1'
   */
  -3.1415926535897931,

  /* Expression: -pi
   * Referenced by: '<S7>/Bias2'
   */
  -3.1415926535897931,

  /* Expression: +pi
   * Referenced by: '<S7>/Bias3'
   */
  3.1415926535897931,

  /* Expression: (360/600)/4
   * Referenced by: '<S4>/rev to degree'
   */
  0.15,

  /* Expression: pi/180
   * Referenced by: '<S4>/D_to_R'
   */
  0.017453292519943295,

  /* Expression: pi
   * Referenced by: '<S5>/for_shifting'
   */
  3.1415926535897931,

  /* Expression: 0
   * Referenced by: '<S6>/Switch'
   */
  0.0,

  /* Expression: (360/(500*4))
   * Referenced by: '<S3>/rev to degree'
   */
  0.18,

  /* Expression: pi/180
   * Referenced by: '<S3>/D_to_R'
   */
  0.017453292519943295,

  /* Expression: 2*pi
   * Referenced by: '<S7>/Constant'
   */
  6.2831853071795862,

  /* Expression: 2*pi
   * Referenced by: '<S7>/Constant1'
   */
  6.2831853071795862,

  /* Expression: 0
   * Referenced by: '<S7>/Switch'
   */
  0.0,

  /* Expression: 0
   * Referenced by: '<S1>/Constant'
   */
  0.0,

  /* Expression: pi/7
   * Referenced by: '<S1>/Linearity checker'
   */
  0.44879895051282759,

  /* Expression: 1000*10
   * Referenced by: '<S2>/Scaling'
   */
  10000.0,

  /* Expression: 255
   * Referenced by: '<S2>/Saturation'
   */
  255.0,

  /* Expression: -255
   * Referenced by: '<S2>/Saturation'
   */
  -255.0,

  /* Expression: 0
   * Referenced by: '<S2>/Constant'
   */
  0.0,

  /* Expression: 1
   * Referenced by: '<S2>/Constant1'
   */
  1.0,

  /* Expression: 0
   * Referenced by: '<S2>/Switch1'
   */
  0.0
};

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
