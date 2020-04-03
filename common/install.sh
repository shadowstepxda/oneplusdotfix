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

# Copy appropriate libraries based on detected device and API level
if device_check "cheeseburger" || device_check "OnePlus5"; then
  ui_print " "
  ui_print "- Device detected: OnePlus 5 (cheeseburger)"
  if [ $API -eq 25 ]; then
    ui_print " "
    ui_print "- Android detected: Nougat (7.1)"
    ui_print " "
    ui_print "- Copying appropriate libraries"
    cp_ch $CHEESELIB/$API/$MSM8998 $VENLIB/hw/$MSM8998
    cp_ch $CHEESELIB/$API/$IMX350 $VENLIB/$IMX350
    cp_ch $CHEESELIB/$API/$IMX371 $VENLIB/$IMX371
    cp_ch $CHEESELIB/$API/$IMX398 $VENLIB/$IMX398
  elif [ $API -eq 26 ]; then
    ui_print " "
    ui_print "- Android detected: Oreo (8.0)"
    ui_print " "
    ui_print "- Copying appropriate libraries"
    cp_ch $CHEESELIB/$API/$MSM8998 $VENLIB/hw/$MSM8998
    cp_ch $CHEESELIB/$API/$IMX350 $VENLIB/$IMX350
    cp_ch $UNILIB/$API/$IMX371 $VENLIB/$IMX371
    cp_ch $CHEESELIB/$API/$IMX398 $VENLIB/$IMX398
  elif [ $API -eq 27 ]; then
    ui_print " "
    ui_print "- Android detected: Oreo (8.1)"
    ui_print " "
    ui_print "- Copying appropriate libraries"
    cp_ch $CHEESELIB/$API/$MSM8998 $VENLIB/hw/$MSM8998
    cp_ch $CHEESELIB/$API/$IMX350 $VENLIB/$IMX350
    cp_ch $UNILIB/$API/$IMX371 $VENLIB/$IMX371
    cp_ch $CHEESELIB/$API/$IMX398 $VENLIB/$IMX398
  elif [ $API -eq 28 ]; then
    ui_print " "
    ui_print "- Android detected: Pie (9.0)"
    ui_print " "
    ui_print "- Copying appropriate libraries"
    cp_ch $CHEESELIB/$API/$MSM8998 $VENLIB/hw/$MSM8998
    cp_ch $CHEESELIB/$API/$IMX350 $VENLIB/$IMX350
    cp_ch $UNILIB/$API/$IMX371 $VENLIB/$IMX371
    cp_ch $CHEESELIB/$API/$IMX398 $VENLIB/$IMX398
  else
    ui_print " "
    ui_print "- Android detected: Q (10.0)"
    ui_print " "
    ui_print "- Copying appropriate libraries"
    cp_ch $CHEESELIB/$API/$MSM8998 $VENLIB/hw/$MSM8998
    cp_ch $CHEESELIB/$API/$IMX350 $VENLIB/$IMX350
    cp_ch $UNILIB/$API/$IMX371 $VENLIB/$IMX371
    cp_ch $CHEESELIB/$API/$IMX398 $VENLIB/$IMX398
  fi
elif device_check "dumpling" || device_check "OnePlus5T"; then
  ui_print " "
  ui_print "- Device detected: OnePlus 5T (dumpling)"
  if [ $API -eq 25 ]; then
    ui_print " "
    ui_print "- Android detected: Nougat (7.1)"
    ui_print " "
    ui_print "- Copying appropriate libraries"
    cp_ch $DUMPLIB/$API/$MSM8998 $VENLIB/hw/$MSM8998
    cp_ch $DUMPLIB/$API/$IMX371 $VENLIB/$IMX371
    cp_ch $DUMPLIB/$API/$IMX376K $VENLIB/$IMX376K
    cp_ch $DUMPLIB/$API/$IMX398 $VENLIB/$IMX398
  elif [ $API -eq 26 ]; then
    ui_print " "
    ui_print "- Android detected: Oreo (8.0)"
    ui_print " "
    ui_print "- Copying appropriate libraries"
    cp_ch $DUMPLIB/$API/$MSM8998 $VENLIB/hw/$MSM8998
    cp_ch $UNILIB/$API/$IMX371 $VENLIB/$IMX371
    cp_ch $DUMPLIB/$API/$IMX376K $VENLIB/$IMX376K
    cp_ch $DUMPLIB/$API/$IMX398 $VENLIB/$IMX398
  elif [ $API -eq 27 ]; then
    ui_print " "
    ui_print "- Android detected: Oreo (8.1)"
    ui_print " "
    ui_print "- Copying appropriate libraries"
    cp_ch $DUMPLIB/$API/$MSM8998 $VENLIB/hw/$MSM8998
    cp_ch $UNILIB/$API/$IMX371 $VENLIB/$IMX371
    cp_ch $DUMPLIB/$API/$IMX376K $VENLIB/$IMX376K
    cp_ch $DUMPLIB/$API/$IMX398 $VENLIB/$IMX398
  elif [ $API -eq 28 ]; then
    ui_print " "
    ui_print "- Android detected: Pie (9.0)"
    ui_print " "
    ui_print "- Copying appropriate libraries"
    cp_ch $DUMPLIB/$API/$MSM8998 $VENLIB/hw/$MSM8998
    cp_ch $UNILIB/$API/$IMX371 $VENLIB/$IMX371
    cp_ch $DUMPLIB/$API/$IMX376K $VENLIB/$IMX376K
    cp_ch $DUMPLIB/$API/$IMX398 $VENLIB/$IMX398
  else
    ui_print " "
    ui_print "- Android detected: Q (10.0)"
    ui_print " "
    ui_print "- Copying appropriate libraries"
    cp_ch $DUMPLIB/$API/$MSM8998 $VENLIB/hw/$MSM8998
    cp_ch $UNILIB/$API/$IMX371 $VENLIB/$IMX371
    cp_ch $DUMPLIB/$API/$IMX376K $VENLIB/$IMX376K
    cp_ch $DUMPLIB/$API/$IMX398 $VENLIB/$IMX398
  fi
else
  ui_print " "
  abort "! DEVICE ERROR: This module is only for OnePlus 5/5T"
fi

# Remove stuff that doesn't belong in the module directory
ui_print " "
rm $MODPATH/LICENSE
