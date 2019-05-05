#Copy appropriate libraries based on detected device
if device_check "cheeseburger" || device_check "OnePlus5"; then
  ui_print " "
  ui_print "- Device Detected: OnePlus 5 (cheeseburger)"
  ui_print " "
  ui_print "- Copying appropriate libraries..."
  cp -f $TMPDIR/libs/cheeseburger/camera.msm8998.so $TMPDIR/system/vendor/lib/hw/camera.msm8998.so
  cp -f $TMPDIR/libs/cheeseburger/libmmcamera_imx398.so $TMPDIR/system/vendor/lib/libmmcamera_imx398.so
else
  ui_print " "
  ui_print "- Device detected: OnePlus 5T (dumpling)"
  ui_print " "
  ui_print "- Copying appropriate libraries..."
  cp -f $TMPDIR/libs/dumpling/camera.msm8998.so $TMPDIR/system/vendor/lib/hw/camera.msm8998.so
  cp -f $TMPDIR/libs/dumpling/libmmcamera_imx398.so $TMPDIR/system/vendor/lib/libmmcamera_imx398.so
fi

#Introduce Volume Key Selector for selecting front camera library with or without the mirror fix
if [ -z $MIRROR ]; then
  ui_print " "
  ui_print "- Do you want GCam's front camera pictures to be saved unmirrored?"
  ui_print " "
  ui_print "- IMPORTANT NOTES:"
  ui_print "  -- This will mirror front camera's viewfinder in all the apps"
  ui_print "  -- This will make front camera's viewfinder upside-down in landscape mode"
  ui_print " "
  ui_print "- Vol Up = Yes ; Vol Down = No"
  if $VKSEL; then
    MIRROR=true
  else
    MIRROR=false
  fi
fi

#Copy the appropriate library as per the selection made by the user
if $MIRROR; then
  ui_print " "
  ui_print "- Selection made: Front camera library with mirror fix"
  ui_print " "
  ui_print "- Copying appropriate library..."
  ui_print " "
  cp -f $TMPDIR/libs/mirror/libmmcamera_imx371.so $TMPDIR/system/vendor/lib/libmmcamera_imx371.so
else
  ui_print " "
  ui_print "- Selection made: Front camera library without mirror fix"
  ui_print " "
  ui_print "- Copying appropriate library..."
  ui_print " "
  cp -f $TMPDIR/libs/nomirror/libmmcamera_imx371.so $TMPDIR/system/vendor/lib/libmmcamera_imx371.so
fi
