while true; do
  if [ -f /sdcard/su ]; then
    cmd=$(cat /sdcard/su)
    echo "[SHELL-DAEMON] Running: $cmd"

    # Don't run via sh, don't use eval, and don't echo
    output="$($cmd 2>&1)"
    printf "%s\n" "$output" > /sdcard/suOutput

    rm /sdcard/su
  fi
  sleep 0.2
done