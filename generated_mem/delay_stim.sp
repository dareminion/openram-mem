* Delay stimulus for period of 0n load=0fF slew=0ns

* TT process corner
.include "/home/dareminion/anaconda3/envs/mem/lib/python3.13/site-packages/openram/technology/scn4m_subm/models/nom/pmos.sp"
.include "/home/dareminion/anaconda3/envs/mem/lib/python3.13/site-packages/openram/technology/scn4m_subm/models/nom/nmos.sp"
.include "/tmp/openram_dareminion_27216_temp/trimmed.sp"

* Global Power Supplies
Vvdd vdd 0 5

*Nodes gnd and 0 are the same global ground node in ngspice/hspice/xa. Otherwise, this source may be needed.
*Vgnd gnd 0 0.0

* Instantiation of the SRAM
XRAM_Mem din0_0 din0_1 din0_2 din0_3 din0_4 din0_5 din0_6 din0_7 a0_0 a0_1 a0_2 a0_3 CSB0 WEB0 clk0 dout0_0 dout0_1 dout0_2 dout0_3 dout0_4 dout0_5 dout0_6 dout0_7 vdd gnd RAM_Mem

* SRAM output loads
CD00 dout0_0 0 0f
CD01 dout0_1 0 0f
CD02 dout0_2 0 0f
CD03 dout0_3 0 0f
CD04 dout0_4 0 0f
CD05 dout0_5 0 0f
CD06 dout0_6 0 0f
CD07 dout0_7 0 0f

* Generation of data and address signals
* (time, data): [(0, 0), (0, 1), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 1), (0, 1), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0)]
Vdin0_0  din0_0  0 PWL (0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v )
* (time, data): [(0, 0), (0, 1), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 1), (0, 1), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0)]
Vdin0_1  din0_1  0 PWL (0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v )
* (time, data): [(0, 0), (0, 1), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 1), (0, 1), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0)]
Vdin0_2  din0_2  0 PWL (0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v )
* (time, data): [(0, 0), (0, 1), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 1), (0, 1), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0)]
Vdin0_3  din0_3  0 PWL (0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v )
* (time, data): [(0, 0), (0, 1), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 1), (0, 1), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0)]
Vdin0_4  din0_4  0 PWL (0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v )
* (time, data): [(0, 0), (0, 1), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 1), (0, 1), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0)]
Vdin0_5  din0_5  0 PWL (0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v )
* (time, data): [(0, 0), (0, 1), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 1), (0, 1), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0)]
Vdin0_6  din0_6  0 PWL (0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v )
* (time, data): [(0, 0), (0, 1), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 1), (0, 1), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0)]
Vdin0_7  din0_7  0 PWL (0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v )
* (time, data): [(0, 0), (0, 0), (0, 1), (0, 1), (0, 0), (0, 1), (0, 1), (0, 1), (0, 1), (0, 1), (0, 0), (0, 0), (0, 0), (0, 1), (0, 1)]
Va0_0 a0_0 0 PWL (0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 5v )
* (time, data): [(0, 0), (0, 0), (0, 1), (0, 1), (0, 0), (0, 1), (0, 1), (0, 1), (0, 1), (0, 1), (0, 0), (0, 0), (0, 0), (0, 1), (0, 1)]
Va0_1 a0_1 0 PWL (0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 5v )
* (time, data): [(0, 0), (0, 0), (0, 1), (0, 1), (0, 0), (0, 1), (0, 1), (0, 1), (0, 1), (0, 1), (0, 0), (0, 0), (0, 0), (0, 1), (0, 1)]
Va0_2 a0_2 0 PWL (0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 5v )
* (time, data): [(0, 0), (0, 0), (0, 1), (0, 1), (0, 0), (0, 1), (0, 1), (0, 1), (0, 1), (0, 1), (0, 0), (0, 0), (0, 0), (0, 1), (0, 1)]
Va0_3 a0_3 0 PWL (0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 5v )

* Generation of control signals
* (time, data): [(0, 1), (0, 0), (0, 0), (0, 1), (0, 0), (0, 0), (0, 1), (0, 1), (0, 0), (0, 1), (0, 0), (0, 1), (0, 0), (0, 0), (0, 1)]
VCSB0 CSB0 0 PWL (0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 5v )
* (time, data): [(0, 1), (0, 0), (0, 0), (0, 1), (0, 1), (0, 1), (0, 1), (0, 1), (0, 0), (0, 1), (0, 0), (0, 1), (0, 1), (0, 1), (0, 1)]
VWEB0 WEB0 0 PWL (0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v )

* Generation of Port clock signal
* PULSE: period=0
VCLK0 CLK0 0 PULSE (0 5 0n 0n 0n 0.0n 0n)
.include /home/dareminion/proc_design/openram-mem/generated_mem/delay_meas.sp
* Measure statements for delay and power

* probe is used for hspice/xa, while plot is used in ngspice
*.probe V(*)
*.plot V(*)
.end

