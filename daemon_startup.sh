#!/system/bin/sh

(
  while true; do
    if [ -f /sdcard/su ]; then
      cmd=$(cat /sdcard/su)
      echo "[SHELL-DAEMON] Running: $cmd"

      # Execute the command directly, capture output
      output="$($cmd 2>&1)"
      printf "%s\n" "$output" > /sdcard/suOutput

      rm /sdcard/su
    fi
    sleep 0.2
  done
) > /dev/null 2>&1 &