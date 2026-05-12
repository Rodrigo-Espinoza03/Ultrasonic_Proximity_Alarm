# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\ECE520_SOC\ECE520_SandBox\Ultrasonic_Proximity_Alarm_soc_re\Proximity_Alarm_soc_vitis\Proximity_Alarm_plat\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\ECE520_SOC\ECE520_SandBox\Ultrasonic_Proximity_Alarm_soc_re\Proximity_Alarm_soc_vitis\Proximity_Alarm_plat\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {Proximity_Alarm_plat}\
-hw {C:\ECE520_SOC\ECE520_SandBox\Ultrasonic_Proximity_Alarm_soc_re\Proximity_Alarm_bd_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {C:/ECE520_SOC/ECE520_SandBox/Ultrasonic_Proximity_Alarm_soc_re/Proximity_Alarm_soc_vitis}

platform write
platform generate -domains 
platform active {Proximity_Alarm_plat}
domain active {zynq_fsbl}
bsp reload
bsp setdriver -ip UART_MAXSONAR_0 -driver none -ver {}
bsp write
bsp reload
catch {bsp regenerate}
domain active {standalone_domain}
bsp reload
bsp setdriver -ip UART_MAXSONAR_0 -driver none -ver {}
bsp write
bsp reload
catch {bsp regenerate}
platform generate
platform config -updatehw {C:/ECE520_SOC/ECE520_SandBox/Ultrasonic_Proximity_Alarm_soc_re/Proximity_Alarm_bd_wrapper.xsa}
domain active {zynq_fsbl}
platform generate -domains 
platform config -updatehw {C:/ECE520_SOC/ECE520_SandBox/Ultrasonic_Proximity_Alarm_soc_re/Proximity_Alarm_bd_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/ECE520_SOC/ECE520_SandBox/Ultrasonic_Proximity_Alarm_soc_re/Proximity_Alarm_bd_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/ECE520_SOC/ECE520_SandBox/Ultrasonic_Proximity_Alarm_soc_re/Proximity_Alarm_bd_wrapper.xsa}
platform generate -domains 
platform active {Proximity_Alarm_plat}
platform config -updatehw {C:/ECE520_SOC/ECE520_SandBox/Ultrasonic_Proximity_Alarm_soc_re/Proximity_Alarm_bd_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/ECE520_SOC/ECE520_SandBox/Ultrasonic_Proximity_Alarm_soc_re/Proximity_Alarm_bd_wrapper.xsa}
platform generate -domains 
platform active {Proximity_Alarm_plat}
platform config -updatehw {C:/ECE520_SOC/ECE520_SandBox/Ultrasonic_Proximity_Alarm_soc_re/Proximity_Alarm_bd_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/ECE520_SOC/ECE520_SandBox/Ultrasonic_Proximity_Alarm_soc_re/Proximity_Alarm_bd_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/ECE520_SOC/ECE520_SandBox/Ultrasonic_Proximity_Alarm_soc_re/Proximity_Alarm_bd_wrapper.xsa}
platform generate -domains 
platform active {Proximity_Alarm_plat}
bsp reload
bsp write
domain active {standalone_domain}
bsp reload
bsp reload
