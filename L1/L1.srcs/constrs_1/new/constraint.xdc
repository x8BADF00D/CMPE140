## This file is a general .xdc for the Basys3 rev B board
## Clock signal
 set_property PACKAGE_PIN W5        [get_ports clk] 
 set_property IOSTANDARD LVCMOS33   [get_ports clk] 
 create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]
################################################################
 
## Switches
 set_property PACKAGE_PIN V17       [get_ports HILO_sel] 
 set_property IOSTANDARD LVCMOS33   [get_ports HILO_sel]
 #left 4 switches for data
 set_property PACKAGE_PIN R2      [get_ports {d[3]}]
 set_property IOSTANDARD LVCMOS33  [get_ports {d[3]}] 
 set_property PACKAGE_PIN T1      [get_ports {d[2]}] 
 set_property IOSTANDARD LVCMOS33  [get_ports {d[2]}] 
 set_property PACKAGE_PIN U1     [get_ports {d[1]}] 
 set_property IOSTANDARD LVCMOS33  [get_ports {d[1]}] 
 set_property PACKAGE_PIN W2      [get_ports {d[0]}] 
 set_property IOSTANDARD LVCMOS33  [get_ports {d[0]}] 
 #set_property PACKAGE_PIN V15      [get_ports {sw[5]}] 
 #set_property IOSTANDARD LVCMOS33  [get_ports {sw[5]}] 
 #set_property PACKAGE_PIN W14      [get_ports {sw[6]}] 
 #set_property IOSTANDARD LVCMOS33  [get_ports {sw[6]}] 
 #set_property PACKAGE_PIN W13      [get_ports {sw[7]}] 
 #set_property IOSTANDARD LVCMOS33  [get_ports {sw[7]}] 
 #set_property PACKAGE_PIN V2       [get_ports {sw[8]}] 
 #set_property IOSTANDARD LVCMOS33  [get_ports {sw[8]}] 
 #set_property PACKAGE_PIN T3       [get_ports {sw[9]}] 
 #set_property IOSTANDARD LVCMOS33  [get_ports {sw[9]}] 
 #set_property PACKAGE_PIN T2       [get_ports {sw[10]}] 
 #set_property IOSTANDARD LVCMOS33  [get_ports {sw[10]}] 
 #set_property PACKAGE_PIN R3       [get_ports {sw[11]}] 
 #set_property IOSTANDARD LVCMOS33  [get_ports {sw[11]}] 
 #set_property PACKAGE_PIN W2       [get_ports {sw[12]}] 
 #set_property IOSTANDARD LVCMOS33  [get_ports {sw[12]}] 
 #set_property PACKAGE_PIN U1       [get_ports {sw[13]}] 
 #set_property IOSTANDARD LVCMOS33  [get_ports {sw[13]}] 
 #set_property PACKAGE_PIN T1       [get_ports {sw[14]}] 
 #set_property IOSTANDARD LVCMOS33  [get_ports {sw[14]}] 
 #set_property PACKAGE_PIN R2       [get_ports {sw[15]}] 
 #set_property IOSTANDARD LVCMOS33  [get_ports {sw[15]}]
################################################################
 
 ##7 segment display
 set_property PACKAGE_PIN W7        [get_ports {LEDOUT[0]}] 
 set_property IOSTANDARD LVCMOS33   [get_ports {LEDOUT[0]}] 
 set_property PACKAGE_PIN W6        [get_ports {LEDOUT[1]}]    
 set_property IOSTANDARD LVCMOS33   [get_ports {LEDOUT[1]}] 
 set_property PACKAGE_PIN U8        [get_ports {LEDOUT[2]}]    
 set_property IOSTANDARD LVCMOS33   [get_ports {LEDOUT[2]}] 
 set_property PACKAGE_PIN V8        [get_ports {LEDOUT[3]}]    
 set_property IOSTANDARD LVCMOS33   [get_ports {LEDOUT[3]}] 
 set_property PACKAGE_PIN U5        [get_ports {LEDOUT[4]}]    
 set_property IOSTANDARD LVCMOS33   [get_ports {LEDOUT[4]}] 
 set_property PACKAGE_PIN V5        [get_ports {LEDOUT[5]}]    
 set_property IOSTANDARD LVCMOS33   [get_ports {LEDOUT[5]}] 
 set_property PACKAGE_PIN U7        [get_ports {LEDOUT[6]}]    
 set_property IOSTANDARD LVCMOS33   [get_ports {LEDOUT[6]}] 
 #set_property PACKAGE_PIN V7       [get_ports dp] 
 #set_property IOSTANDARD LVCMOS33  [get_ports dp] 
 set_property PACKAGE_PIN U2        [get_ports {LEDSEL[0]}]
 set_property IOSTANDARD LVCMOS33   [get_ports {LEDSEL[0]}] 
 set_property PACKAGE_PIN U4        [get_ports {LEDSEL[1]}]    
 set_property IOSTANDARD LVCMOS33   [get_ports {LEDSEL[1]}] 
 set_property PACKAGE_PIN V4        [get_ports {LEDSEL[2]}]    
 set_property IOSTANDARD LVCMOS33   [get_ports {LEDSEL[2]}] 
 set_property PACKAGE_PIN W4        [get_ports {LEDSEL[3]}]    
 set_property IOSTANDARD LVCMOS33   [get_ports {LEDSEL[3]}] 
################################################################

 ##Buttons
 #middle button
 set_property PACKAGE_PIN U18       [get_ports rst]
 set_property IOSTANDARD LVCMOS33   [get_ports rst]
 #right button
 set_property PACKAGE_PIN T17       [get_ports go]  
 set_property IOSTANDARD LVCMOS33   [get_ports go]
 #left button
 set_property PACKAGE_PIN W19       [get_ports btn]
 set_property IOSTANDARD LVCMOS33   [get_ports btn]    
 
 ##LEDs
 #leftmost LED
 set_property PACKAGE_PIN L1        [get_ports done]
 set_property IOSTANDARD LVCMOS33   [get_ports done]
 #second to leftmost LED
 set_property PACKAGE_PIN P1        [get_ports error]
 set_property IOSTANDARD LVCMOS33   [get_ports error]