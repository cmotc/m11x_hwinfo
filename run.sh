#! /bin/sh
sudo lspci -nnvvvxxxx > lspci.log 2>lspci.err.log
sudo #lspnp -vv > lspnp.log 2>lspnp.err.log
sudo lsusb -vvv > lsusb.log 2>lsusb.err.log
sudo superiotool -deV > superiotool.log 2> superiotool.err.log
sudo inteltool -a > inteltool.log 2> inteltool.err.log
sudo ectool > ectool.log 2>ectool.err.log
sudo msrtool > msrtool.log 2>msrtool.err.log
sudo dmidecode > dmidecode.log 2>dmidecode.err.log
sudo biosdecode > biosdecode.log 2>biosdecode.err.log
sudo nvramtool -x > nvramtool.log 2>nvramtool.err.log
sudo dmesg > dmesg.log 2>dmesg.err.log
sudo flashrom -V -p internal:laptop=force_I_want_a_brick > flashrom_info.log 2>flashrom_info.err.log # this won't work on some vendor firmware
sudo flashrom -V -p internal:laptop=force_I_want_a_brick -r rom.bin > flashrom_read.log 2>flashrom_read.err.log # this won't work on some vendor firmware
sudo acpidump > acpidump.log 2>acpidump.err.log
sudo for x in /sys/class/sound/card0/hw*; do cat "$x/init_pin_configs" > pin_"$(basename "$x")"; done
sudo for x in /proc/asound/card0/codec#*; do cat "$x" > "$(basename "$x")"; done
sudo cat /proc/cpuinfo > cpuinfo.log 2>cpuinfo.err.log
sudo cat /proc/ioports > ioports.log 2>ioports.err.log
sudo cat /sys/class/input/input*/id/bustype > input_bustypes.log