import time
import csv
from datetime import datetime

import serial
import pandas as pd

# ======================
# Settings
# ======================
PORT = "COM12"
BAUD = 9600
DT = 0.1  # fixed step (seconds)

stamp = datetime.now().strftime("%Y%m%d_%H%M%S")
OUT_CSV  = f"fixedstep_dt0p1_{stamp}.csv"
OUT_XLSX = f"fixedstep_dt0p1_{stamp}.xlsx"

def read_valid_sample(ser):
    """Read until we get a valid 'elapsed_time,voltage,speed' sample."""
    while True:
        line = ser.readline().decode(errors="ignore").strip()
        if not line:
            continue
        parts = line.split(",")
        if len(parts) != 3:
            continue
        try:
            t_a = float(parts[0])
            v   = float(parts[1])
            rpm = float(parts[2])
            return t_a, v, rpm
        except ValueError:
            continue

def main():
    rows = []

    with serial.Serial(PORT, BAUD, timeout=1) as ser:
        time.sleep(2)
        ser.reset_input_buffer()

        # Ignore Arduino header (first line)
        _ = ser.readline().decode(errors="ignore").strip()

        print("Waiting for first valid Arduino sample...")
        t_a, v, rpm = read_valid_sample(ser)

        # ✅ Start timing from HERE
        t0 = time.perf_counter()
        k = 0
        next_tick = t0  # first tick at t=0 exactly

        print("Python fixed-step logging started")
        print(f"DT = {DT} s (printing every sample)")
        print("Stop: Ctrl+C\n")

        with open(OUT_CSV, "w", newline="") as f:
            writer = csv.writer(f)
            writer.writerow(["t_py_s", "t_arduino_s", "Voltage_V", "RPM"])

            try:
                while True:
                    # wait until the next tick
                    now = time.perf_counter()
                    if now < next_tick:
                        time.sleep(next_tick - now)
                        continue

                    # desired fixed-step time
                    t_py = k * DT

                    # Read the most recent Arduino sample available (non-blocking-ish):
                    # We try to grab whatever arrived since last tick; if none, reuse last.
                    # Read all available lines quickly
                    while ser.in_waiting > 0:
                        try:
                            line = ser.readline().decode(errors="ignore").strip()
                            parts = line.split(",")
                            if len(parts) == 3:
                                t_a = float(parts[0])
                                v   = float(parts[1])
                                rpm = float(parts[2])
                        except:
                            pass

                    # log one row at fixed time step
                    writer.writerow([t_py, t_a, v, rpm])
                    rows.append({"t_py_s": t_py, "t_arduino_s": t_a, "Voltage_V": v, "RPM": rpm})

                    # ✅ print every sample (0.1s)
                    print(f"t={t_py:6.2f}  V={v:6.2f}  RPM={rpm:7.2f}")

                    # advance to next tick
                    k += 1
                    next_tick = t0 + k * DT

            except KeyboardInterrupt:
                print("\nStopped by user.")

    # export excel once at end
    if rows:
        df = pd.DataFrame(rows, columns=["t_py_s", "t_arduino_s", "Voltage_V", "RPM"])
        df.to_excel(OUT_XLSX, index=False)
        print(f"Saved Excel: {OUT_XLSX} (rows={len(df)})")
    else:
        print("No data logged.")

if __name__ == "__main__":
    main()
