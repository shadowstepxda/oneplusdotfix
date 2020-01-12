# Copy appropriate libraries based on detected device and API level
if device_check "cheeseburger" || device_check "OnePlus5"; then
  ui_print " "
  ui_print "- Device detected: OnePlus 5 (cheeseburger)"
  if [ $API -eq 25 ]; then
    ui_print " "
    ui_print "- Android detected: Nougat (7.1)"
    ui_print " "
    ui_print "- Copying appropriate libraries"
    ui_print " "
    cp_ch $MODPATH/libs/cheeseburger/api25/camera.msm8998.so $MODPATH/system/vendor/lib/hw/camera.msm8998.so
    cp_ch $MODPATH/libs/cheeseburger/api25/libmmcamera_imx371.so $MODPATH/system/vendor/lib/libmmcamera_imx371.so
    cp_ch $MODPATH/libs/cheeseburger/api25/libmmcamera_imx398.so $MODPATH/system/vendor/lib/libmmcamera_imx398.so
  elif [ $API -eq 26 ]; then
    ui_print " "
    ui_print "- Android detected: Oreo (8.0)"
    ui_print " "
    ui_print "- Copying appropriate libraries"
    ui_print " "
    cp_ch $MODPATH/libs/cheeseburger/api26/camera.msm8998.so $MODPATH/system/vendor/lib/hw/camera.msm8998.so
    cp_ch $MODPATH/libs/unified/api26/libmmcamera_imx371.so $MODPATH/system/vendor/lib/libmmcamera_imx371.so
    cp_ch $MODPATH/libs/cheeseburger/api26/libmmcamera_imx398.so $MODPATH/system/vendor/lib/libmmcamera_imx398.so
  elif [ $API -eq 27 ]; then
    ui_print " "
    ui_print "- Android detected: Oreo (8.1)"
    ui_print " "
    ui_print "- Copying appropriate libraries"
    ui_print " "
    cp_ch $MODPATH/libs/cheeseburger/api27/camera.msm8998.so $MODPATH/system/vendor/lib/hw/camera.msm8998.so
    cp_ch $MODPATH/libs/unified/api27/libmmcamera_imx371.so $MODPATH/system/vendor/lib/libmmcamera_imx371.so
    cp_ch $MODPATH/libs/cheeseburger/api27/libmmcamera_imx398.so $MODPATH/system/vendor/lib/libmmcamera_imx398.so
  elif [ $API -eq 28 ]; then
    ui_print " "
    ui_print "- Android detected: Pie (9.0)"
    ui_print " "
    ui_print "- Copying appropriate libraries"
    ui_print " "
    cp_ch $MODPATH/libs/cheeseburger/api28-29/camera.msm8998.so $MODPATH/system/vendor/lib/hw/camera.msm8998.so
    cp_ch $MODPATH/libs/unified/api28-29/libmmcamera_imx371.so $MODPATH/system/vendor/lib/libmmcamera_imx371.so
    cp_ch $MODPATH/libs/cheeseburger/api28-29/libmmcamera_imx398.so $MODPATH/system/vendor/lib/libmmcamera_imx398.so
  else
    ui_print " "
    ui_print "- Android detected: Q (10.0)"
    ui_print " "
    ui_print "- Copying appropriate libraries"
    ui_print " "
    cp_ch $MODPATH/libs/cheeseburger/api28-29/camera.msm8998.so $MODPATH/system/vendor/lib/hw/camera.msm8998.so
    cp_ch $MODPATH/libs/unified/api28-29/libmmcamera_imx371.so $MODPATH/system/vendor/lib/libmmcamera_imx371.so
    cp_ch $MODPATH/libs/cheeseburger/api28-29/libmmcamera_imx398.so $MODPATH/system/vendor/lib/libmmcamera_imx398.so
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
    cp_ch $MODPATH/libs/dumpling/api25/camera.msm8998.so $MODPATH/system/vendor/lib/hw/camera.msm8998.so
    cp_ch $MODPATH/libs/dumpling/api25/libmmcamera_imx371.so $MODPATH/system/vendor/lib/libmmcamera_imx371.so
    cp_ch $MODPATH/libs/dumpling/api25/libmmcamera_imx398.so $MODPATH/system/vendor/lib/libmmcamera_imx398.so
  elif [ $API -eq 26 ]; then
    ui_print " "
    ui_print "- Android detected: Oreo (8.0)"
    ui_print " "
    ui_print "- Copying appropriate libraries"
    ui_print " "
    cp_ch $MODPATH/libs/dumpling/api26/camera.msm8998.so $MODPATH/system/vendor/lib/hw/camera.msm8998.so
    cp_ch $MODPATH/libs/unified/api26/libmmcamera_imx371.so $MODPATH/system/vendor/lib/libmmcamera_imx371.so
    cp_ch $MODPATH/libs/dumpling/api26/libmmcamera_imx398.so $MODPATH/system/vendor/lib/libmmcamera_imx398.so
  elif [ $API -eq 27 ]; then
    ui_print " "
    ui_print "- Android detected: Oreo (8.1)"
    ui_print " "
    ui_print "- Copying appropriate libraries"
    ui_print " "
    cp_ch $MODPATH/libs/dumpling/api27/camera.msm8998.so $MODPATH/system/vendor/lib/hw/camera.msm8998.so
    cp_ch $MODPATH/libs/unified/api27/libmmcamera_imx371.so $MODPATH/system/vendor/lib/libmmcamera_imx371.so
    cp_ch $MODPATH/libs/dumpling/api27/libmmcamera_imx398.so $MODPATH/system/vendor/lib/libmmcamera_imx398.so
  elif [ $API -eq 28 ]; then
    ui_print " "
    ui_print "- Android detected: Pie (9.0)"
    ui_print " "
    ui_print "- Copying appropriate libraries"
    ui_print " "
    cp_ch $MODPATH/libs/dumpling/api28-29/camera.msm8998.so $MODPATH/system/vendor/lib/hw/camera.msm8998.so
    cp_ch $MODPATH/libs/unified/api28-29/libmmcamera_imx371.so $MODPATH/system/vendor/lib/libmmcamera_imx371.so
    cp_ch $MODPATH/libs/dumpling/api28-29/libmmcamera_imx398.so $MODPATH/system/vendor/lib/libmmcamera_imx398.so
  else
    ui_print " "
    ui_print "- Android detected: Q (10.0)"
    ui_print " "
    ui_print "- Copying appropriate libraries"
    ui_print " "
    cp_ch $MODPATH/libs/dumpling/api28-29/camera.msm8998.so $MODPATH/system/vendor/lib/hw/camera.msm8998.so
    cp_ch $MODPATH/libs/unified/api28-29/libmmcamera_imx371.so $MODPATH/system/vendor/lib/libmmcamera_imx371.so
    cp_ch $MODPATH/libs/dumpling/api28-29/libmmcamera_imx398.so $MODPATH/system/vendor/lib/libmmcamera_imx398.so
  fi
fi

# Delete stuff that is not needed once everything has been copied over
rm -rf $MODPATH/libs
rm $MODPATH/LICENSE
