import time
import csv
from datetime import datetime

import serial
import pandas as pd

# =======================
# Settings (EDIT)
# =======================
PORT = "COM12"       # مثال ويندوز: COM3  | لينكس: /dev/ttyACM0
BAUD = 9600         # مطابق ل Serial.begin(9600)
OUTPUT_XLSX = f"motor_log_{datetime.now().strftime('%Y%m%d_%H%M%S')}.xlsx"

# اجعلها None للتشغيل بلا نهاية (Ctrl+C للإيقاف)
READ_DURATION_SEC = None

# حفظ تلقائي كل فترة (اختياري). اجعلها None لتعطيل الحفظ التلقائي
AUTOSAVE_EVERY_SEC = 10

# =======================
# Main
# =======================
def main():
    rows = []
    last_autosave = time.time()

    with serial.Serial(PORT, BAUD, timeout=1) as ser:
        # Arduino عادة بيعمل reset عند فتح السيريال
        time.sleep(2)
        ser.reset_input_buffer()

        print(f"Reading from {PORT} @ {BAUD}")
        print(f"Saving to: {OUTPUT_XLSX}")
        print("Stop: Ctrl+C\n")

        # نقرأ أول سطر (الهيدر) ونتجاهله لو مطابق
        header = ser.readline().decode(errors="ignore").strip()
        if header:
            print(f"Header: {header}")

        try:
            start = time.time()
            while True:
                if READ_DURATION_SEC is not None and (time.time() - start) >= READ_DURATION_SEC:
                    break

                line = ser.readline().decode(errors="ignore").strip()
                if not line:
                    continue

                # parse CSV: elapsed_time,voltage,speed
                try:
                    parts = next(csv.reader([line]))
                    if len(parts) != 3:
                        continue

                    t_s = float(parts[0])
                    v_v = float(parts[1])
                    rpm = float(parts[2])

                    rows.append({"Time_s": t_s, "RPM": rpm, "Voltage_V": v_v})
                    print(f"t={t_s:.3f}  V={v_v:.2f}  RPM={rpm:.2f}")

                except Exception:
                    # أي سطر غير صالح نتجاهله
                    continue

                # Auto-save
                if AUTOSAVE_EVERY_SEC is not None and (time.time() - last_autosave) >= AUTOSAVE_EVERY_SEC:
                    df = pd.DataFrame(rows, columns=["Time_s", "RPM", "Voltage_V"])
                    df.to_excel(OUTPUT_XLSX, index=False)
                    last_autosave = time.time()
                    print(f"[Auto-saved] rows={len(df)}")

        except KeyboardInterrupt:
            print("\nStopped by user.")

    if not rows:
        print("No data captured. Check PORT/BAUD and Serial output.")
        return

    df = pd.DataFrame(rows, columns=["Time_s", "RPM", "Voltage_V"])
    df.to_excel(OUTPUT_XLSX, index=False)
    print(f"Final saved: {OUTPUT_XLSX}  (rows={len(df)})")

if __name__ == "__main__":
    main()
