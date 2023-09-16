import time
import subprocess

while True:
    # Run your command here
    subprocess.run(["alert-batterylow"])

    # Sleep for a specified interval (e.g., 1 hour)
    time.sleep(60)  # 3600 seconds = 1 hour
