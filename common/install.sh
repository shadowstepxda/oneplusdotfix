# Define variables
CHEESE_LIB=$MODPATH/common/libs/full/cheeseburger
CHEESE_LIB_ALT=$MODPATH/common/libs/alt/cheeseburger
DUMP_LIB=$MODPATH/common/libs/full/dumpling
DUMP_LIB_ALT=$MODPATH/common/libs/alt/dumpling
UNI_LIB=$MODPATH/common/libs/full/unified
UNI_LIB_ALT=$MODPATH/common/libs/alt/unified
VEN_LIB=$MODPATH/system/vendor/lib
IMX350=libmmcamera_imx350.so
IMX371=libmmcamera_imx371.so
IMX376K=libmmcamera_imx376k.so
IMX398=libmmcamera_imx398.so
MSM8998=camera.msm8998.so

# Extract compressed libraries
tar -xf "$MODPATH"/common/libs.tar.xz -C "$MODPATH"/common 2>/dev/null

# Copy modified libraries
if device_check "cheeseburger" || device_check "OnePlus5"; then
  ui_print "- Device detected: OnePlus 5"
  ui_print "- API version detected: $API"  
  if [ "$API" -eq 25 ]; then
    ui_print "- Copying modified libraries"
    cp_ch "$CHEESE_LIB"/"$API"/$MSM8998 "$VEN_LIB"/hw/$MSM8998
    cp_ch "$CHEESE_LIB"/"$API"/$IMX350 "$VEN_LIB"/$IMX350
    cp_ch "$CHEESE_LIB"/"$API"/$IMX371 "$VEN_LIB"/$IMX371
    cp_ch "$CHEESE_LIB"/"$API"/$IMX398 "$VEN_LIB"/$IMX398
  elif [ "$API" -eq 26 ] || [ "$API" -eq 27 ] || [ "$API" -eq 28 ]; then
    ui_print "- Copying modified libraries"
    cp_ch "$CHEESE_LIB"/"$API"/$MSM8998 "$VEN_LIB"/hw/$MSM8998
    cp_ch "$CHEESE_LIB"/"$API"/$IMX350 "$VEN_LIB"/$IMX350
    cp_ch "$UNI_LIB"/"$API"/$IMX371 "$VEN_LIB"/$IMX371
    cp_ch "$CHEESE_LIB"/"$API"/$IMX398 "$VEN_LIB"/$IMX398
  else
    ui_print " "
    ui_print "! Press the appropriate volume"
    ui_print "! button to make your selection:"
    ui_print " "
    ui_print "  Volume Up   = Full DotFix"
    ui_print "  Volume Down = Front Camera RAW Fix Only"
    ui_print " "
    if chooseport 30; then
      ui_print "- Selected    = Full DotFix"
      ui_print "- Copying modified libraries"
      cp_ch "$CHEESE_LIB"/29+/$MSM8998 "$VEN_LIB"/hw/$MSM8998
      cp_ch "$CHEESE_LIB"/29+/$IMX350 "$VEN_LIB"/$IMX350
      cp_ch "$UNI_LIB"/29+/$IMX371 "$VEN_LIB"/$IMX371
      cp_ch "$CHEESE_LIB"/29+/$IMX398 "$VEN_LIB"/$IMX398
    else
      ui_print "- Selected    = Front Camera RAW Fix Only"
      ui_print "- Copying modified libraries"
      cp_ch "$CHEESE_LIB_ALT"/29+/$MSM8998 "$VEN_LIB"/hw/$MSM8998
      cp_ch "$CHEESE_LIB_ALT"/29+/$IMX350 "$VEN_LIB"/$IMX350
      cp_ch "$UNI_LIB_ALT"/29+/$IMX371 "$VEN_LIB"/$IMX371
      cp_ch "$CHEESE_LIB_ALT"/29+/$IMX398 "$VEN_LIB"/$IMX398
    fi
  fi
elif device_check "dumpling" || device_check "OnePlus5T"; then
  ui_print "- Device detected: OnePlus 5T"
  ui_print "- API version detected: $API"
  if [ "$API" -eq 25 ]; then
    cp_ch "$DUMP_LIB"/"$API"/$MSM8998 "$VEN_LIB"/hw/$MSM8998
    cp_ch "$DUMP_LIB"/"$API"/$IMX371 "$VEN_LIB"/$IMX371
    cp_ch "$DUMP_LIB"/"$API"/$IMX376K "$VEN_LIB"/$IMX376K
    cp_ch "$DUMP_LIB"/"$API"/$IMX398 "$VEN_LIB"/$IMX398
  elif [ "$API" -eq 26 ] || [ "$API" -eq 27 ] || [ "$API" -eq 28 ]; then
    cp_ch "$DUMP_LIB"/"$API"/$MSM8998 "$VEN_LIB"/hw/$MSM8998
    cp_ch "$UNI_LIB"/"$API"/$IMX371 "$VEN_LIB"/$IMX371
    cp_ch "$DUMP_LIB"/"$API"/$IMX376K "$VEN_LIB"/$IMX376K
    cp_ch "$DUMP_LIB"/"$API"/$IMX398 "$VEN_LIB"/$IMX398
  else
    ui_print " "
    ui_print "! Press the appropriate volume button to make your selection:"
    ui_print " "
    ui_print "  Volume Up   = Full DotFix"
    ui_print "  Volume Down = Front Camera RAW Fix Only"
    ui_print " "
    if chooseport 30; then
      ui_print "- Selected    = Full DotFix"
      ui_print "- Copying modified libraries"
      cp_ch "$DUMP_LIB"/29+/$MSM8998 "$VEN_LIB"/hw/$MSM8998
      cp_ch "$UNI_LIB"/29+/$IMX371 "$VEN_LIB"/$IMX371
      cp_ch "$DUMP_LIB"/29+/$IMX376K "$VEN_LIB"/$IMX376K
      cp_ch "$DUMP_LIB"/29+/$IMX398 "$VEN_LIB"/$IMX398
    else
      ui_print "- Selected    = Front Camera RAW Fix Only"
      ui_print "- Copying modified libraries"  
      cp_ch "$DUMP_LIB_ALT"/29+/$MSM8998 "$VEN_LIB"/hw/$MSM8998
      cp_ch "$UNI_LIB_ALT"/29+/$IMX371 "$VEN_LIB"/$IMX371
      cp_ch "$DUMP_LIB_ALT"/29+/$IMX376K "$VEN_LIB"/$IMX376K
      cp_ch "$DUMP_LIB_ALT"/29+/$IMX398 "$VEN_LIB"/$IMX398
    fi
  fi
else
  abort "! This module is for OnePlus 5/5T only! Aborting!"
fi

# Remove stuff that doesn't belong in the module directory
rm "$MODPATH"/LICENSE

# Credits
ui_print " "
ui_print "**************************************"
ui_print "* This module is possible because of *"
ui_print "*     Arnova8G2, Ch3lly, defcomg,    *"
ui_print "* fjsferreira, JeusChrit, MrAimenify,*"
ui_print "* txx1219, Urnyx05, and many others  *"
ui_print "**************************************"
ui_print " "
