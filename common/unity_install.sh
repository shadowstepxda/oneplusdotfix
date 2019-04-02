if device_check "dumpling" || device_check "OnePlus5T"; then
  cp -f $TMPDIR/dumpling/camera.msm8998.so $TMPDIR/system/vendor/lib/hw/camera.msm8998.so
  cp -f $TMPDIR/dumpling/libmmcamera_imx371.so $TMPDIR/system/vendor/lib/libmmcamera_imx371.so
  cp -f $TMPDIR/dumpling/libmmcamera_imx398.so $TMPDIR/system/vendor/lib/libmmcamera_imx398.so
fi
