# Define variables
CHEESELIB=$MODPATH/common/libs/cheeseburger
DUMPLIB=$MODPATH/common/libs/dumpling
UNILIB=$MODPATH/common/libs/unified
VENLIB=$MODPATH/system/vendor/lib
IMX350=libmmcamera_imx350.so
IMX371=libmmcamera_imx371.so
IMX376K=libmmcamera_imx376k.so
IMX398=libmmcamera_imx398.so
MSM8998=camera.msm8998.so

# Extract compressed libraries
tar -xf $MODPATH/common/libs.tar.xz -C $MODPATH/common 2>/dev/null

# Copy modified libraries based on the detected device and Android version
if device_check "cheeseburger" || device_check "OnePlus5"; then
  ui_print "- Device detected: OnePlus 5 (cheeseburger)"
  if [ $API -eq 25 ]; then
    ui_print "- Android version detected: 7.1"
    ui_print "- Copying modified libraries"
    cp_ch $CHEESELIB/$API/$MSM8998 $VENLIB/hw/$MSM8998
    cp_ch $CHEESELIB/$API/$IMX350 $VENLIB/$IMX350
    cp_ch $CHEESELIB/$API/$IMX371 $VENLIB/$IMX371
    cp_ch $CHEESELIB/$API/$IMX398 $VENLIB/$IMX398
  elif [ $API -eq 26 ]; then
    ui_print "- Android version detected: 8.0"
    ui_print "- Copying modified libraries"
    cp_ch $CHEESELIB/$API/$MSM8998 $VENLIB/hw/$MSM8998
    cp_ch $CHEESELIB/$API/$IMX350 $VENLIB/$IMX350
    cp_ch $UNILIB/$API/$IMX371 $VENLIB/$IMX371
    cp_ch $CHEESELIB/$API/$IMX398 $VENLIB/$IMX398
  elif [ $API -eq 27 ]; then
    ui_print "- Android version detected: 8.1"
    ui_print "- Copying modified libraries"
    cp_ch $CHEESELIB/$API/$MSM8998 $VENLIB/hw/$MSM8998
    cp_ch $CHEESELIB/$API/$IMX350 $VENLIB/$IMX350
    cp_ch $UNILIB/$API/$IMX371 $VENLIB/$IMX371
    cp_ch $CHEESELIB/$API/$IMX398 $VENLIB/$IMX398
  elif [ $API -eq 28 ]; then
    ui_print "- Android version detected: 9.0"
    ui_print "- Copying modified libraries"
    cp_ch $CHEESELIB/$API/$MSM8998 $VENLIB/hw/$MSM8998
    cp_ch $CHEESELIB/$API/$IMX350 $VENLIB/$IMX350
    cp_ch $UNILIB/$API/$IMX371 $VENLIB/$IMX371
    cp_ch $CHEESELIB/$API/$IMX398 $VENLIB/$IMX398
  elif [ $API -eq 29 ]; then
    ui_print "- Android version detected: 10.0"
    ui_print "- Copying modified libraries"
    cp_ch $CHEESELIB/$API/$MSM8998 $VENLIB/hw/$MSM8998
    cp_ch $CHEESELIB/$API/$IMX350 $VENLIB/$IMX350
    cp_ch $UNILIB/$API/$IMX371 $VENLIB/$IMX371
    cp_ch $CHEESELIB/$API/$IMX398 $VENLIB/$IMX398
  else
    ui_print "- Android version detected: 11.0"
    ui_print "- Copying modified libraries"
    cp_ch $CHEESELIB/29/$MSM8998 $VENLIB/hw/$MSM8998
    cp_ch $CHEESELIB/29/$IMX350 $VENLIB/$IMX350
    cp_ch $UNILIB/29/$IMX371 $VENLIB/$IMX371
    cp_ch $CHEESELIB/29/$IMX398 $VENLIB/$IMX398
  fi
elif device_check "dumpling" || device_check "OnePlus5T"; then
  ui_print "- Device detected: OnePlus 5T (dumpling)"
  if [ $API -eq 25 ]; then
    ui_print "- Android version detected: 7.1"
    ui_print "- Copying modified libraries"
    cp_ch $DUMPLIB/$API/$MSM8998 $VENLIB/hw/$MSM8998
    cp_ch $DUMPLIB/$API/$IMX371 $VENLIB/$IMX371
    cp_ch $DUMPLIB/$API/$IMX376K $VENLIB/$IMX376K
    cp_ch $DUMPLIB/$API/$IMX398 $VENLIB/$IMX398
  elif [ $API -eq 26 ]; then
    ui_print "- Android version detected: 8.0"
    ui_print "- Copying modified libraries"
    cp_ch $DUMPLIB/$API/$MSM8998 $VENLIB/hw/$MSM8998
    cp_ch $UNILIB/$API/$IMX371 $VENLIB/$IMX371
    cp_ch $DUMPLIB/$API/$IMX376K $VENLIB/$IMX376K
    cp_ch $DUMPLIB/$API/$IMX398 $VENLIB/$IMX398
  elif [ $API -eq 27 ]; then
    ui_print "- Android version detected: 8.1"
    ui_print "- Copying modified libraries"
    cp_ch $DUMPLIB/$API/$MSM8998 $VENLIB/hw/$MSM8998
    cp_ch $UNILIB/$API/$IMX371 $VENLIB/$IMX371
    cp_ch $DUMPLIB/$API/$IMX376K $VENLIB/$IMX376K
    cp_ch $DUMPLIB/$API/$IMX398 $VENLIB/$IMX398
  elif [ $API -eq 28 ]; then
    ui_print "- Android version detected: 9.0"
    ui_print "- Copying modified libraries"
    cp_ch $DUMPLIB/$API/$MSM8998 $VENLIB/hw/$MSM8998
    cp_ch $UNILIB/$API/$IMX371 $VENLIB/$IMX371
    cp_ch $DUMPLIB/$API/$IMX376K $VENLIB/$IMX376K
    cp_ch $DUMPLIB/$API/$IMX398 $VENLIB/$IMX398
  elif [ $API -eq 29 ]; then
    ui_print "- Android version detected: 10.0"
    ui_print "- Copying modified libraries"
    cp_ch $DUMPLIB/$API/$MSM8998 $VENLIB/hw/$MSM8998
    cp_ch $UNILIB/$API/$IMX371 $VENLIB/$IMX371
    cp_ch $DUMPLIB/$API/$IMX376K $VENLIB/$IMX376K
    cp_ch $DUMPLIB/$API/$IMX398 $VENLIB/$IMX398
  else
    ui_print "- Android version detected: 11.0"
    ui_print "- Copying modified libraries"
    cp_ch $DUMPLIB/29/$MSM8998 $VENLIB/hw/$MSM8998
    cp_ch $UNILIB/29/$IMX371 $VENLIB/$IMX371
    cp_ch $DUMPLIB/29/$IMX376K $VENLIB/$IMX376K
    cp_ch $DUMPLIB/29/$IMX398 $VENLIB/$IMX398
  fi
else
  abort "! DEVICE ERROR: This module is only for OnePlus 5/5T"
fi

# Remove stuff that doesn't belong in the module directory
rm $MODPATH/LICENSE
