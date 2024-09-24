#!/system/bin/sh

if [ "$BOOTMODE" != true ]; then
  ui_print "! Please install in Magisk Manager or KernelSU Manager"
  ui_print "! Install from recovery is NOT supported"
  abort "-----------------------------------------------------------"
elif [ "$KSU" = true ] && [ "$KSU_VER_CODE" -lt 10670 ]; then
  abort "error: Please update your KernelSU and KernelSU Manager"
fi

ui_print "- Creating directories"
mkdir -p $MODPATH/system/usr/share/python3.4.2

ui_print "- Setting permissions"
set_perm $MODPATH/system/bin/python3 0 0 0755
set_perm_recursive $MODPATH/system/usr/share/python3.4.2 0 0 0755 0755
