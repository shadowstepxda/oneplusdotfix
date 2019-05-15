#Copy appropriate libraries based on detected device
if device_check "cheeseburger" || device_check "OnePlus5"; then
  ui_print " "
  ui_print "- Device detected: OnePlus 5 (cheeseburger)"
  ui_print " "
  ui_print "- Copying appropriate libraries"
  ui_print " "
  cp -f $TMPDIR/libs/cheeseburger/camera.msm8998.so $TMPDIR/system/vendor/lib/hw/camera.msm8998.so
  cp -f $TMPDIR/libs/cheeseburger/libmmcamera_imx371.so $TMPDIR/system/vendor/lib/libmmcamera_imx371.so
  cp -f $TMPDIR/libs/cheeseburger/libmmcamera_imx398.so $TMPDIR/system/vendor/lib/libmmcamera_imx398.so
else
  ui_print " "
  ui_print "- Device detected: OnePlus 5T (dumpling)"
  ui_print " "
  ui_print "- Copying appropriate libraries"
  ui_print " "
  cp -f $TMPDIR/libs/dumpling/camera.msm8998.so $TMPDIR/system/vendor/lib/hw/camera.msm8998.so
  cp -f $TMPDIR/libs/dumpling/libmmcamera_imx371.so $TMPDIR/system/vendor/lib/libmmcamera_imx371.so
  cp -f $TMPDIR/libs/dumpling/libmmcamera_imx398.so $TMPDIR/system/vendor/lib/libmmcamera_imx398.so
fi
