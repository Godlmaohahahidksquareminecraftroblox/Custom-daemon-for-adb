---

Custom Daemon for ADB

This daemon allows you to execute commands as the shell user on Android directly from Termux or any other local shell emulator.


---

🧭 Setup Instructions

1. Enable ADB debugging:

Enable Wireless Debugging or use USB debugging.

Get a shell on the device via adb shell (e.g. from PC or self-connection app like shizuku/self-connect).



2. Copy daemon into place:

Clone this repository into /sdcard.

Inside your adb shell:

cp -r /sdcard/Custom-daemon-for-adb/* /data/local/tmp
cd /data/local/tmp
./daemon_launcher

Exit the ADB shell.

Turn off Wireless Debugging if you enabled it.





---

⚡ Usage from Termux or any shell emulator

Add this helper to your ~/.bashrc:

Daemon_call() {
  echo "$*" > /sdcard/su
  sleep 0.4
  cat /sdcard/suOutput
  rm /sdcard/suOutput
}

Then simply invoke commands:

Daemon_call whoami
Daemon_call am start -n com.some.app/.Activity


---

🧠 Notes

Daemon must be relaunched after each device reboot.

Keeps working until the device is powered off or restarted.

Wireless debugging must be off after launching.



---

📜 License

MIT License


---
