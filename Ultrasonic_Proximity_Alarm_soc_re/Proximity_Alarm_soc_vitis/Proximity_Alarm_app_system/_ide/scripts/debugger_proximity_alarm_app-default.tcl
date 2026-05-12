# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\ECE520_SOC\ECE520_SandBox\Ultrasonic_Proximity_Alarm_soc_re\Proximity_Alarm_soc_vitis\Proximity_Alarm_app_system\_ide\scripts\debugger_proximity_alarm_app-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\ECE520_SOC\ECE520_SandBox\Ultrasonic_Proximity_Alarm_soc_re\Proximity_Alarm_soc_vitis\Proximity_Alarm_app_system\_ide\scripts\debugger_proximity_alarm_app-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zybo Z7 210351BE7A49A" && level==0 && jtag_device_ctx=="jsn-Zybo Z7-210351BE7A49A-13722093-0"}
fpga -file C:/ECE520_SOC/ECE520_SandBox/Ultrasonic_Proximity_Alarm_soc_re/Proximity_Alarm_soc_vitis/Proximity_Alarm_app/_ide/bitstream/Proximity_Alarm_bd_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/ECE520_SOC/ECE520_SandBox/Ultrasonic_Proximity_Alarm_soc_re/Proximity_Alarm_soc_vitis/Proximity_Alarm_plat/export/Proximity_Alarm_plat/hw/Proximity_Alarm_bd_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/ECE520_SOC/ECE520_SandBox/Ultrasonic_Proximity_Alarm_soc_re/Proximity_Alarm_soc_vitis/Proximity_Alarm_app/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/ECE520_SOC/ECE520_SandBox/Ultrasonic_Proximity_Alarm_soc_re/Proximity_Alarm_soc_vitis/Proximity_Alarm_app/Debug/Proximity_Alarm_app.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
