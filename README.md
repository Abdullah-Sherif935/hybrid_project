# Furuta Pendulum – Hybrid Control Systems Project

## 📘 Course Information
- **Course:** MCT411 – Hybrid Control Systems  
- **Department:** Mechatronics Engineering  
- **Faculty:** Engineering – Ain Shams University  
- **Semester:** Fall 2025  

---

## 📖 Project Description
This project focuses on the **design, modeling, simulation, and control of a Furuta Pendulum (Rotary Pendulum)** system.

The main objective is to stabilize the pendulum in the **upright position (θ₁ = 0)** using modern control techniques and to ensure robustness against external disturbances.  
The project integrates **mechanical modeling**, **control theory**, and **hardware-in-the-loop (HIL)** implementation using **MATLAB/Simulink**.

---

## 🎯 Control Objectives
- Stabilize the pendulum at the upright equilibrium position  
- Control the rotary arm angle (θ₀) using a motor with encoder  
- Reject disturbances and maintain stability  
- Apply **Pole Placement or LQR control techniques**  
  > ⚠️ Using PID control results in deducted points  

---

## 🛠 System Requirements
- One DC motor equipped with an encoder for controlling θ₀  
- One encoder (minimum 360 pulses/revolution) for measuring θ₁  
- Mechanical components must be rigidly fixed  
- Wiring should be hidden as much as possible  
- System must interface with **MATLAB/Simulink**  
- **Hardware-In-The-Loop (HIL)** implementation using Simulink  

---

## ⚙️ Modeling & Control Approach
The system is treated as a **hybrid control system** consisting of:
- Continuous-time dynamics  
- Discrete-time control implementation  
- State-space modeling of the Furuta Pendulum  

The controller is designed following the **standard control design procedure**:
1. System modeling  
2. Linearization around the upright equilibrium  
3. Controller design (Pole Placement / LQR)  
4. Simulation and validation  
5. Hardware-in-the-loop implementation  

---

## 🧪 Simulation & Implementation
- Full system model implemented in **MATLAB/Simulink**  
- Preferably using **SimMechanics / Simscape Multibody**  
- Comparison between simulation and real hardware results  
- GUI for monitoring:
  - Pendulum angle (θ₁)
  - Control input (u)


