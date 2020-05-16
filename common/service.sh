# Wait till the system has finished booting up
while [ "$(getprop sys.boot_completed)" != "1" ]; do
  sleep 1
done

# Delete the required props
resetprop -p --delete persist.vendor.camera.privapp.list
resetprop -p --delete persist.camera.privapp.list
