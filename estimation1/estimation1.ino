// =======================
//  Motor + Encoder – MEGA2560
//  Auto Test: start at 0 PWM & 0V, then +PWM/-PWM each STEP_MS,
//  increase by PWM_STEP up to PWM_MAX then STOP
//  CSV logging: elapsed_time, voltage, speed
// =======================

#define pin1 20
#define pin2 21
#define theta0_ppr 500

#define motor_pwm 6
#define motor_p1  7
#define motor_p2  8

#define VOLTAGE 12

volatile long counter = 0;
float my_speed = 0.0;
float elapsed_time = 0.0;

float speed_controller = 0.0;
float voltage = 0.0;
float signed_voltage = 0.0;

bool motor_direction = 1;

// timing
unsigned long lastSampleTime = 0;
unsigned long lastStepTime   = 0;

// test parameters
const unsigned long STEP_MS = 4000;
const int PWM_STEP = 30;
const int PWM_MAX  = 250;

int  pwmCmd = 0;              // start from 0
bool phasePositive = true;    // positive first
bool testFinished  = false;

// =======================
// Encoder ISRs
// =======================
void intr1() {
  if (digitalRead(pin2) == LOW) counter++;
  else counter--;
}

void intr2() {
  if (digitalRead(pin1) == LOW) counter--;
  else counter++;
}

// =======================
// Motor apply (PURE PWM)
// =======================
void applyMotor(int pwmValue, bool dirPositive) {
  motor_direction = dirPositive ? 1 : 0;
  digitalWrite(motor_p1, motor_direction);
  digitalWrite(motor_p2, !motor_direction);

  if (pwmValue < 0)   pwmValue = 0;
  if (pwmValue > 255) pwmValue = 255;

  // ✅ PWM حقيقي بدون أي تعديل
  analogWrite(motor_pwm, pwmValue);

  speed_controller = (float)pwmValue / 255.0;
  voltage = VOLTAGE * speed_controller;
  signed_voltage = dirPositive ? voltage : -voltage;
}

// =======================
// Setup
// =======================
void setup() {
  Serial.begin(9600);
  delay(200);

  Serial.println("elapsed_time,voltage,speed");

  pinMode(motor_pwm, OUTPUT);
  pinMode(motor_p1, OUTPUT);
  pinMode(motor_p2, OUTPUT);

  pinMode(pin1, INPUT_PULLUP);
  pinMode(pin2, INPUT_PULLUP);

  attachInterrupt(digitalPinToInterrupt(pin1), intr1, RISING);
  attachInterrupt(digitalPinToInterrupt(pin2), intr2, RISING);

  lastSampleTime = millis();
  lastStepTime   = millis();

  // start stopped
  pwmCmd = 0;
  phasePositive = true;
  applyMotor(0, true);
}

// =======================
// Loop
// =======================
void loop() {
  unsigned long now = millis();

  // --------- speed measurement ---------
  if (now - lastSampleTime >= 100) {
    float dt = (now - lastSampleTime) / 1000.0;
    lastSampleTime = now;
    elapsed_time += dt;

    noInterrupts();
    long countCopy = counter;
    counter = 0;
    interrupts();

    float pulses_per_rev = 2.0 * theta0_ppr;
    float rev_per_sec = (float)countCopy / pulses_per_rev / dt;
    my_speed = rev_per_sec * 60.0;

    Serial.print(elapsed_time, 3);
    Serial.print(",");
    Serial.print(signed_voltage, 2);
    Serial.print(",");
    Serial.println(my_speed, 2);
  }

  // --------- auto sequence ---------
  if (!testFinished && (now - lastStepTime >= STEP_MS)) {
    lastStepTime = now;

    // toggle direction every step
    phasePositive = !phasePositive;

    if (phasePositive) {
      if (pwmCmd == 0) {
        pwmCmd = PWM_STEP;
      }
      else if (pwmCmd >= PWM_MAX) {
        applyMotor(0, true);
        signed_voltage = 0.0;
        testFinished = true;
        return;
      }
      else {
        pwmCmd += PWM_STEP;
        if (pwmCmd > PWM_MAX) pwmCmd = PWM_MAX;
      }
    }

    applyMotor(pwmCmd, phasePositive);
  }
}
