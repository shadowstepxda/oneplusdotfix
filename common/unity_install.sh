#Copy appropriate libraries based on detected device and API level
if device_check "cheeseburger" || device_check "OnePlus5"; then
  ui_print " "
  ui_print "- Device detected: OnePlus 5 (cheeseburger)"
  if [ $API -eq 25 ]; then
    ui_print " "
    ui_print "- Android detected: Nougat (7.1)"
    ui_print " "
    ui_print "- Copying appropriate libraries"
    ui_print " "
    cp -f $TMPDIR/libs/cheeseburger/api25/camera.msm8998.so $TMPDIR/system/vendor/lib/hw/camera.msm8998.so
    cp -f $TMPDIR/libs/cheeseburger/api25/libmmcamera_imx371.so $TMPDIR/system/vendor/lib/libmmcamera_imx371.so
    cp -f $TMPDIR/libs/cheeseburger/api25/libmmcamera_imx398.so $TMPDIR/system/vendor/lib/libmmcamera_imx398.so
  elif [ $API -eq 26 ]; then
    ui_print " "
    ui_print "- Android detected: Oreo (8.0)"
    ui_print " "
    ui_print "- Copying appropriate libraries"
    ui_print " "
    cp -f $TMPDIR/libs/cheeseburger/api26/camera.msm8998.so $TMPDIR/system/vendor/lib/hw/camera.msm8998.so
    cp -f $TMPDIR/libs/unified/api26/libmmcamera_imx371.so $TMPDIR/system/vendor/lib/libmmcamera_imx371.so
    cp -f $TMPDIR/libs/cheeseburger/api26/libmmcamera_imx398.so $TMPDIR/system/vendor/lib/libmmcamera_imx398.so
  elif [ $API -eq 27 ]; then
    ui_print " "
    ui_print "- Android detected: Oreo (8.1)"
    ui_print " "
    ui_print "- Copying appropriate libraries"
    ui_print " "
    cp -f $TMPDIR/libs/cheeseburger/api27/camera.msm8998.so $TMPDIR/system/vendor/lib/hw/camera.msm8998.so
    cp -f $TMPDIR/libs/unified/api27/libmmcamera_imx371.so $TMPDIR/system/vendor/lib/libmmcamera_imx371.so
    cp -f $TMPDIR/libs/cheeseburger/api27/libmmcamera_imx398.so $TMPDIR/system/vendor/lib/libmmcamera_imx398.so
  else
    ui_print " "
    ui_print "- Android detected: Pie (9.0)"
    ui_print " "
    ui_print "- Copying appropriate libraries"
    ui_print " "
    cp -f $TMPDIR/libs/cheeseburger/api28/camera.msm8998.so $TMPDIR/system/vendor/lib/hw/camera.msm8998.so
    cp -f $TMPDIR/libs/unified/api28/libmmcamera_imx371.so $TMPDIR/system/vendor/lib/libmmcamera_imx371.so
    cp -f $TMPDIR/libs/cheeseburger/api28/libmmcamera_imx398.so $TMPDIR/system/vendor/lib/libmmcamera_imx398.so
  fi
else
  ui_print " "
  ui_print "- Device detected: OnePlus 5T (dumpling)"
  if [ $API -eq 25 ]; then
    ui_print " "
    ui_print "- Android detected: Nougat (7.1)"
    ui_print " "
    ui_print "- Copying appropriate libraries"
    ui_print " "
    cp -f $TMPDIR/libs/dumpling/api25/camera.msm8998.so $TMPDIR/system/vendor/lib/hw/camera.msm8998.so
    cp -f $TMPDIR/libs/dumpling/api25/libmmcamera_imx371.so $TMPDIR/system/vendor/lib/libmmcamera_imx371.so
    cp -f $TMPDIR/libs/dumpling/api25/libmmcamera_imx398.so $TMPDIR/system/vendor/lib/libmmcamera_imx398.so
  elif [ $API -eq 26 ]; then
    ui_print " "
    ui_print "- Android detected: Oreo (8.0)"
    ui_print " "
    ui_print "- Copying appropriate libraries"
    ui_print " "
    cp -f $TMPDIR/libs/dumpling/api26/camera.msm8998.so $TMPDIR/system/vendor/lib/hw/camera.msm8998.so
    cp -f $TMPDIR/libs/unified/api26/libmmcamera_imx371.so $TMPDIR/system/vendor/lib/libmmcamera_imx371.so
    cp -f $TMPDIR/libs/dumpling/api26/libmmcamera_imx398.so $TMPDIR/system/vendor/lib/libmmcamera_imx398.so
  elif [ $API -eq 27 ]; then
    ui_print " "
    ui_print "- Android detected: Oreo (8.1)"
    ui_print " "
    ui_print "- Copying appropriate libraries"
    ui_print " "
    cp -f $TMPDIR/libs/dumpling/api27/camera.msm8998.so $TMPDIR/system/vendor/lib/hw/camera.msm8998.so
    cp -f $TMPDIR/libs/unified/api27/libmmcamera_imx371.so $TMPDIR/system/vendor/lib/libmmcamera_imx371.so
    cp -f $TMPDIR/libs/dumpling/api27/libmmcamera_imx398.so $TMPDIR/system/vendor/lib/libmmcamera_imx398.so
  else
    ui_print " "
    ui_print "- Android detected: Pie (9.0)"
    ui_print " "
    ui_print "- Copying appropriate libraries"
    ui_print " "
    cp -f $TMPDIR/libs/dumpling/api28/camera.msm8998.so $TMPDIR/system/vendor/lib/hw/camera.msm8998.so
    cp -f $TMPDIR/libs/unified/api28/libmmcamera_imx371.so $TMPDIR/system/vendor/lib/libmmcamera_imx371.so
    cp -f $TMPDIR/libs/dumpling/api28/libmmcamera_imx398.so $TMPDIR/system/vendor/lib/libmmcamera_imx398.so
  fi
fi
