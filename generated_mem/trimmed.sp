**************************************************
* OpenRAM generated memory.
* Words: 16
* Data bits: 8
* Banks: 1
* Column mux: 1:1
* Trimmed: True
* LVS: False
**************************************************
*********************** Write_Driver ******************************
.SUBCKT write_driver din bl br en vdd gnd

**** Inverter to conver Data_in to data_in_bar ******
* din_bar = inv(din)
M_1 din_bar din gnd gnd n W=0.8u L=0.4u
M_2 din_bar din vdd vdd p W=1.4u L=0.4u

**** 2input nand gate follwed by inverter to drive BL ******
* din_bar_gated = nand(en, din)
M_3 din_bar_gated en net_7 gnd n W=1.4u L=0.4u
M_4 net_7 din gnd gnd n W=1.4u L=0.4u
M_5 din_bar_gated en vdd vdd p W=1.4u L=0.4u
M_6 din_bar_gated din vdd vdd p W=1.4u L=0.4u
* din_bar_gated_bar = inv(din_bar_gated)
M_7 din_bar_gated_bar din_bar_gated vdd vdd p W=1.4u L=0.4u
M_8 din_bar_gated_bar din_bar_gated gnd gnd n W=0.8u L=0.4u

**** 2input nand gate follwed by inverter to drive BR******
* din_gated = nand(en, din_bar)
M_9 din_gated en vdd vdd p W=1.4u L=0.4u
M_10 din_gated en net_8 gnd n W=1.4u L=0.4u
M_11 net_8 din_bar gnd gnd n W=1.4u L=0.4u
M_12 din_gated din_bar vdd vdd p W=1.4u L=0.4u
* din_gated_bar = inv(din_gated)
M_13 din_gated_bar din_gated vdd vdd p W=1.4u L=0.4u
M_14 din_gated_bar din_gated gnd gnd n W=0.8u L=0.4u

************************************************
* pull down with en enable
M_15 bl din_gated_bar gnd gnd n W=2.4u L=0.4u
M_16 br din_bar_gated_bar gnd gnd n W=2.4u L=0.4u



.ENDS   $ write_driver

.SUBCKT RAM_Mem_write_driver_array
+ data_0 data_1 data_2 data_3 data_4 data_5 data_6 data_7 bl_0 br_0 bl_1
+ br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5 bl_6 br_6 bl_7 br_7 en
+ vdd gnd
* INPUT : data_0 
* INPUT : data_1 
* INPUT : data_2 
* INPUT : data_3 
* INPUT : data_4 
* INPUT : data_5 
* INPUT : data_6 
* INPUT : data_7 
* OUTPUT: bl_0 
* OUTPUT: br_0 
* OUTPUT: bl_1 
* OUTPUT: br_1 
* OUTPUT: bl_2 
* OUTPUT: br_2 
* OUTPUT: bl_3 
* OUTPUT: br_3 
* OUTPUT: bl_4 
* OUTPUT: br_4 
* OUTPUT: bl_5 
* OUTPUT: br_5 
* OUTPUT: bl_6 
* OUTPUT: br_6 
* OUTPUT: bl_7 
* OUTPUT: br_7 
* INPUT : en 
* POWER : vdd 
* GROUND: gnd 
* columns: 8
* word_size 8
Xwrite_driver0
+ data_0 bl_0 br_0 en vdd gnd
+ write_driver
Xwrite_driver1
+ data_1 bl_1 br_1 en vdd gnd
+ write_driver
Xwrite_driver2
+ data_2 bl_2 br_2 en vdd gnd
+ write_driver
Xwrite_driver3
+ data_3 bl_3 br_3 en vdd gnd
+ write_driver
Xwrite_driver4
+ data_4 bl_4 br_4 en vdd gnd
+ write_driver
Xwrite_driver5
+ data_5 bl_5 br_5 en vdd gnd
+ write_driver
Xwrite_driver6
+ data_6 bl_6 br_6 en vdd gnd
+ write_driver
Xwrite_driver7
+ data_7 bl_7 br_7 en vdd gnd
+ write_driver
.ENDS RAM_Mem_write_driver_array
*********************** "sense_amp" ******************************

.SUBCKT sense_amp bl br dout en vdd gnd

* SPICE3 file created from sense_amp.ext - technology: scmos

M1000 gnd en a_56_432# gnd n w=1.8u l=0.4u
M1001 a_56_432# a_48_304# dint gnd n w=1.8u l=0.4u
M1002 a_48_304# dint a_56_432# gnd n w=1.8u l=0.4u
M1003 vdd a_48_304# dint vdd p w=3.6u l=0.4u
M1004 a_48_304# dint vdd vdd p w=3.6u l=0.4u
M1005 bl en dint vdd p w=4.8u l=0.4u
M1006 a_48_304# en br vdd p w=4.8u l=0.4u

M1007 dout_bar dint vdd vdd p w=1.6u l=0.4u
M1008 gnd dint dout_bar gnd n w=0.8u l=0.4u
M1009 dout dout_bar vdd vdd p w=4.8u l=0.4u
M1010 gnd dout_bar dout gnd n w=2.4u l=0.4u
.ENDS

.SUBCKT RAM_Mem_sense_amp_array
+ data_0 bl_0 br_0 data_1 bl_1 br_1 data_2 bl_2 br_2 data_3 bl_3 br_3
+ data_4 bl_4 br_4 data_5 bl_5 br_5 data_6 bl_6 br_6 data_7 bl_7 br_7 en
+ vdd gnd
* OUTPUT: data_0 
* INPUT : bl_0 
* INPUT : br_0 
* OUTPUT: data_1 
* INPUT : bl_1 
* INPUT : br_1 
* OUTPUT: data_2 
* INPUT : bl_2 
* INPUT : br_2 
* OUTPUT: data_3 
* INPUT : bl_3 
* INPUT : br_3 
* OUTPUT: data_4 
* INPUT : bl_4 
* INPUT : br_4 
* OUTPUT: data_5 
* INPUT : bl_5 
* INPUT : br_5 
* OUTPUT: data_6 
* INPUT : bl_6 
* INPUT : br_6 
* OUTPUT: data_7 
* INPUT : bl_7 
* INPUT : br_7 
* INPUT : en 
* POWER : vdd 
* GROUND: gnd 
* word_size 8
* words_per_row: 1
Xsa_d0
+ bl_0 br_0 data_0 en vdd gnd
+ sense_amp
Xsa_d1
+ bl_1 br_1 data_1 en vdd gnd
+ sense_amp
Xsa_d2
+ bl_2 br_2 data_2 en vdd gnd
+ sense_amp
Xsa_d3
+ bl_3 br_3 data_3 en vdd gnd
+ sense_amp
Xsa_d4
+ bl_4 br_4 data_4 en vdd gnd
+ sense_amp
Xsa_d5
+ bl_5 br_5 data_5 en vdd gnd
+ sense_amp
Xsa_d6
+ bl_6 br_6 data_6 en vdd gnd
+ sense_amp
Xsa_d7
+ bl_7 br_7 data_7 en vdd gnd
+ sense_amp
.ENDS RAM_Mem_sense_amp_array

* spice ptx M{0} {1} p m=1 w=1.6u l=0.4u pd=4.00u ps=4.00u as=1.60p ad=1.60p

.SUBCKT RAM_Mem_precharge_0
+ bl br en_bar vdd
* OUTPUT: bl 
* OUTPUT: br 
* INPUT : en_bar 
* POWER : vdd 
Mlower_pmos bl en_bar br vdd p m=1 w=1.6u l=0.4u pd=4.00u ps=4.00u as=1.60p ad=1.60p
Mupper_pmos1 bl en_bar vdd vdd p m=1 w=1.6u l=0.4u pd=4.00u ps=4.00u as=1.60p ad=1.60p
Mupper_pmos2 br en_bar vdd vdd p m=1 w=1.6u l=0.4u pd=4.00u ps=4.00u as=1.60p ad=1.60p
.ENDS RAM_Mem_precharge_0

.SUBCKT RAM_Mem_precharge_array
+ bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5 bl_6 br_6
+ bl_7 br_7 bl_8 br_8 en_bar vdd
* OUTPUT: bl_0 
* OUTPUT: br_0 
* OUTPUT: bl_1 
* OUTPUT: br_1 
* OUTPUT: bl_2 
* OUTPUT: br_2 
* OUTPUT: bl_3 
* OUTPUT: br_3 
* OUTPUT: bl_4 
* OUTPUT: br_4 
* OUTPUT: bl_5 
* OUTPUT: br_5 
* OUTPUT: bl_6 
* OUTPUT: br_6 
* OUTPUT: bl_7 
* OUTPUT: br_7 
* OUTPUT: bl_8 
* OUTPUT: br_8 
* INPUT : en_bar 
* POWER : vdd 
* cols: 9 size: 1 bl: bl br: br
Xpre_column_0
+ bl_0 br_0 en_bar vdd
+ RAM_Mem_precharge_0
Xpre_column_1
+ bl_1 br_1 en_bar vdd
+ RAM_Mem_precharge_0
Xpre_column_2
+ bl_2 br_2 en_bar vdd
+ RAM_Mem_precharge_0
Xpre_column_3
+ bl_3 br_3 en_bar vdd
+ RAM_Mem_precharge_0
Xpre_column_4
+ bl_4 br_4 en_bar vdd
+ RAM_Mem_precharge_0
Xpre_column_5
+ bl_5 br_5 en_bar vdd
+ RAM_Mem_precharge_0
Xpre_column_6
+ bl_6 br_6 en_bar vdd
+ RAM_Mem_precharge_0
Xpre_column_7
+ bl_7 br_7 en_bar vdd
+ RAM_Mem_precharge_0
Xpre_column_8
+ bl_8 br_8 en_bar vdd
+ RAM_Mem_precharge_0
.ENDS RAM_Mem_precharge_array

.SUBCKT RAM_Mem_port_data
+ rbl_bl rbl_br bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5
+ br_5 bl_6 br_6 bl_7 br_7 dout_0 dout_1 dout_2 dout_3 dout_4 dout_5
+ dout_6 dout_7 din_0 din_1 din_2 din_3 din_4 din_5 din_6 din_7 s_en
+ p_en_bar w_en vdd gnd
* INOUT : rbl_bl 
* INOUT : rbl_br 
* INOUT : bl_0 
* INOUT : br_0 
* INOUT : bl_1 
* INOUT : br_1 
* INOUT : bl_2 
* INOUT : br_2 
* INOUT : bl_3 
* INOUT : br_3 
* INOUT : bl_4 
* INOUT : br_4 
* INOUT : bl_5 
* INOUT : br_5 
* INOUT : bl_6 
* INOUT : br_6 
* INOUT : bl_7 
* INOUT : br_7 
* OUTPUT: dout_0 
* OUTPUT: dout_1 
* OUTPUT: dout_2 
* OUTPUT: dout_3 
* OUTPUT: dout_4 
* OUTPUT: dout_5 
* OUTPUT: dout_6 
* OUTPUT: dout_7 
* INPUT : din_0 
* INPUT : din_1 
* INPUT : din_2 
* INPUT : din_3 
* INPUT : din_4 
* INPUT : din_5 
* INPUT : din_6 
* INPUT : din_7 
* INPUT : s_en 
* INPUT : p_en_bar 
* INPUT : w_en 
* POWER : vdd 
* GROUND: gnd 
Xprecharge_array0
+ rbl_bl rbl_br bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5
+ br_5 bl_6 br_6 bl_7 br_7 p_en_bar vdd
+ RAM_Mem_precharge_array
Xsense_amp_array0
+ dout_0 bl_0 br_0 dout_1 bl_1 br_1 dout_2 bl_2 br_2 dout_3 bl_3 br_3
+ dout_4 bl_4 br_4 dout_5 bl_5 br_5 dout_6 bl_6 br_6 dout_7 bl_7 br_7
+ s_en vdd gnd
+ RAM_Mem_sense_amp_array
Xwrite_driver_array0
+ din_0 din_1 din_2 din_3 din_4 din_5 din_6 din_7 bl_0 br_0 bl_1 br_1
+ bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5 bl_6 br_6 bl_7 br_7 w_en vdd
+ gnd
+ RAM_Mem_write_driver_array
.ENDS RAM_Mem_port_data

*********************** "dummy_cell_1rw" ******************************
.SUBCKT dummy_cell_1rw bl br wl vdd gnd

* Inverter 1
M1000 Q Q_bar vdd vdd p w=0.6u l=0.8u
M1002 Q Q_bar gnd gnd n w=1.6u l=0.4u

* Inverter 2
M1001 vdd Q Q_bar vdd p w=0.6u l=0.8u
M1003 gnd Q Q_bar gnd n w=1.6u l=0.4u

* Access transistors
M1004 Q wl bl_noconn gnd n w=0.8u l=0.4u
M1005 Q_bar wl br_noconn gnd n w=0.8u l=0.4u

.ENDS

.SUBCKT RAM_Mem_dummy_array_1
+ bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3 br_0_3 bl_0_4 br_0_4
+ bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8 br_0_8 wl_0_0 vdd gnd
* INOUT : bl_0_0 
* INOUT : br_0_0 
* INOUT : bl_0_1 
* INOUT : br_0_1 
* INOUT : bl_0_2 
* INOUT : br_0_2 
* INOUT : bl_0_3 
* INOUT : br_0_3 
* INOUT : bl_0_4 
* INOUT : br_0_4 
* INOUT : bl_0_5 
* INOUT : br_0_5 
* INOUT : bl_0_6 
* INOUT : br_0_6 
* INOUT : bl_0_7 
* INOUT : br_0_7 
* INOUT : bl_0_8 
* INOUT : br_0_8 
* INPUT : wl_0_0 
* POWER : vdd 
* GROUND: gnd 
Xbit_r0_c0
+ bl_0_0 br_0_0 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c1
+ bl_0_1 br_0_1 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c2
+ bl_0_2 br_0_2 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c3
+ bl_0_3 br_0_3 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c4
+ bl_0_4 br_0_4 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c5
+ bl_0_5 br_0_5 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c6
+ bl_0_6 br_0_6 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c7
+ bl_0_7 br_0_7 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c8
+ bl_0_8 br_0_8 wl_0_0 vdd gnd
+ dummy_cell_1rw
.ENDS RAM_Mem_dummy_array_1

*********************** "cell_1rw" ******************************
.SUBCKT cell_1rw bl br wl vdd gnd
* SPICE3 file created from cell_1rw.ext - technology: scmos

* Inverter 1
M1000 Q Q_bar vdd vdd p w=0.6u l=0.8u
M1002 Q Q_bar gnd gnd n w=1.6u l=0.4u

* Inverter 2
M1001 vdd Q Q_bar vdd p w=0.6u l=0.8u
M1003 gnd Q Q_bar gnd n w=1.6u l=0.4u

* Access transistors
M1004 Q wl bl gnd n w=0.8u l=0.4u
M1005 Q_bar wl br gnd n w=0.8u l=0.4u

.ENDS

.SUBCKT RAM_Mem_bitcell_array
+ bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3 br_0_3 bl_0_4 br_0_4
+ bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 wl_0_0 wl_0_1 wl_0_2 wl_0_3
+ wl_0_4 wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10 wl_0_11 wl_0_12
+ wl_0_13 wl_0_14 wl_0_15 vdd gnd
* INOUT : bl_0_0 
* INOUT : br_0_0 
* INOUT : bl_0_1 
* INOUT : br_0_1 
* INOUT : bl_0_2 
* INOUT : br_0_2 
* INOUT : bl_0_3 
* INOUT : br_0_3 
* INOUT : bl_0_4 
* INOUT : br_0_4 
* INOUT : bl_0_5 
* INOUT : br_0_5 
* INOUT : bl_0_6 
* INOUT : br_0_6 
* INOUT : bl_0_7 
* INOUT : br_0_7 
* INPUT : wl_0_0 
* INPUT : wl_0_1 
* INPUT : wl_0_2 
* INPUT : wl_0_3 
* INPUT : wl_0_4 
* INPUT : wl_0_5 
* INPUT : wl_0_6 
* INPUT : wl_0_7 
* INPUT : wl_0_8 
* INPUT : wl_0_9 
* INPUT : wl_0_10 
* INPUT : wl_0_11 
* INPUT : wl_0_12 
* INPUT : wl_0_13 
* INPUT : wl_0_14 
* INPUT : wl_0_15 
* POWER : vdd 
* GROUND: gnd 
* rows: 16 cols: 8
Xbit_r0_c0
+ bl_0_0 br_0_0 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c0
+ bl_0_0 br_0_0 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c0
+ bl_0_0 br_0_0 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c0
+ bl_0_0 br_0_0 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c0
+ bl_0_0 br_0_0 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c0
+ bl_0_0 br_0_0 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c0
+ bl_0_0 br_0_0 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c0
+ bl_0_0 br_0_0 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c0
+ bl_0_0 br_0_0 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c0
+ bl_0_0 br_0_0 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c0
+ bl_0_0 br_0_0 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c0
+ bl_0_0 br_0_0 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c0
+ bl_0_0 br_0_0 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c0
+ bl_0_0 br_0_0 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c0
+ bl_0_0 br_0_0 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c0
+ bl_0_0 br_0_0 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c1
+ bl_0_1 br_0_1 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c1
*+ bl_0_1 br_0_1 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c1
*+ bl_0_1 br_0_1 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c1
*+ bl_0_1 br_0_1 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c1
*+ bl_0_1 br_0_1 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c1
*+ bl_0_1 br_0_1 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c1
*+ bl_0_1 br_0_1 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c1
*+ bl_0_1 br_0_1 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c1
*+ bl_0_1 br_0_1 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c1
*+ bl_0_1 br_0_1 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c1
*+ bl_0_1 br_0_1 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c1
*+ bl_0_1 br_0_1 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c1
*+ bl_0_1 br_0_1 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c1
*+ bl_0_1 br_0_1 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c1
*+ bl_0_1 br_0_1 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c1
+ bl_0_1 br_0_1 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c2
+ bl_0_2 br_0_2 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c2
*+ bl_0_2 br_0_2 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c2
*+ bl_0_2 br_0_2 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c2
*+ bl_0_2 br_0_2 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c2
*+ bl_0_2 br_0_2 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c2
*+ bl_0_2 br_0_2 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c2
*+ bl_0_2 br_0_2 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c2
*+ bl_0_2 br_0_2 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c2
*+ bl_0_2 br_0_2 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c2
*+ bl_0_2 br_0_2 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c2
*+ bl_0_2 br_0_2 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c2
*+ bl_0_2 br_0_2 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c2
*+ bl_0_2 br_0_2 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c2
*+ bl_0_2 br_0_2 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c2
*+ bl_0_2 br_0_2 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c2
+ bl_0_2 br_0_2 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c3
+ bl_0_3 br_0_3 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c3
*+ bl_0_3 br_0_3 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c3
*+ bl_0_3 br_0_3 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c3
*+ bl_0_3 br_0_3 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c3
*+ bl_0_3 br_0_3 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c3
*+ bl_0_3 br_0_3 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c3
*+ bl_0_3 br_0_3 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c3
*+ bl_0_3 br_0_3 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c3
*+ bl_0_3 br_0_3 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c3
*+ bl_0_3 br_0_3 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c3
*+ bl_0_3 br_0_3 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c3
*+ bl_0_3 br_0_3 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c3
*+ bl_0_3 br_0_3 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c3
*+ bl_0_3 br_0_3 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c3
*+ bl_0_3 br_0_3 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c3
+ bl_0_3 br_0_3 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c4
+ bl_0_4 br_0_4 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c4
*+ bl_0_4 br_0_4 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c4
*+ bl_0_4 br_0_4 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c4
*+ bl_0_4 br_0_4 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c4
*+ bl_0_4 br_0_4 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c4
*+ bl_0_4 br_0_4 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c4
*+ bl_0_4 br_0_4 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c4
*+ bl_0_4 br_0_4 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c4
*+ bl_0_4 br_0_4 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c4
*+ bl_0_4 br_0_4 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c4
*+ bl_0_4 br_0_4 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c4
*+ bl_0_4 br_0_4 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c4
*+ bl_0_4 br_0_4 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c4
*+ bl_0_4 br_0_4 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c4
*+ bl_0_4 br_0_4 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c4
+ bl_0_4 br_0_4 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c5
+ bl_0_5 br_0_5 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c5
*+ bl_0_5 br_0_5 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c5
*+ bl_0_5 br_0_5 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c5
*+ bl_0_5 br_0_5 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c5
*+ bl_0_5 br_0_5 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c5
*+ bl_0_5 br_0_5 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c5
*+ bl_0_5 br_0_5 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c5
*+ bl_0_5 br_0_5 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c5
*+ bl_0_5 br_0_5 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c5
*+ bl_0_5 br_0_5 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c5
*+ bl_0_5 br_0_5 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c5
*+ bl_0_5 br_0_5 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c5
*+ bl_0_5 br_0_5 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c5
*+ bl_0_5 br_0_5 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c5
*+ bl_0_5 br_0_5 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c5
+ bl_0_5 br_0_5 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c6
+ bl_0_6 br_0_6 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c6
*+ bl_0_6 br_0_6 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c6
*+ bl_0_6 br_0_6 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c6
*+ bl_0_6 br_0_6 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c6
*+ bl_0_6 br_0_6 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c6
*+ bl_0_6 br_0_6 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c6
*+ bl_0_6 br_0_6 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c6
*+ bl_0_6 br_0_6 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c6
*+ bl_0_6 br_0_6 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c6
*+ bl_0_6 br_0_6 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c6
*+ bl_0_6 br_0_6 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c6
*+ bl_0_6 br_0_6 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c6
*+ bl_0_6 br_0_6 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c6
*+ bl_0_6 br_0_6 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c6
*+ bl_0_6 br_0_6 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c6
+ bl_0_6 br_0_6 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c7
+ bl_0_7 br_0_7 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c7
+ bl_0_7 br_0_7 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c7
+ bl_0_7 br_0_7 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c7
+ bl_0_7 br_0_7 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c7
+ bl_0_7 br_0_7 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c7
+ bl_0_7 br_0_7 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c7
+ bl_0_7 br_0_7 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c7
+ bl_0_7 br_0_7 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c7
+ bl_0_7 br_0_7 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c7
+ bl_0_7 br_0_7 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c7
+ bl_0_7 br_0_7 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c7
+ bl_0_7 br_0_7 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c7
+ bl_0_7 br_0_7 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c7
+ bl_0_7 br_0_7 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c7
+ bl_0_7 br_0_7 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c7
+ bl_0_7 br_0_7 wl_0_15 vdd gnd
+ cell_1rw
.ENDS RAM_Mem_bitcell_array

.SUBCKT RAM_Mem_dummy_array
+ bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3 br_0_3 bl_0_4 br_0_4
+ bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 wl_0_0 vdd gnd
* INOUT : bl_0_0 
* INOUT : br_0_0 
* INOUT : bl_0_1 
* INOUT : br_0_1 
* INOUT : bl_0_2 
* INOUT : br_0_2 
* INOUT : bl_0_3 
* INOUT : br_0_3 
* INOUT : bl_0_4 
* INOUT : br_0_4 
* INOUT : bl_0_5 
* INOUT : br_0_5 
* INOUT : bl_0_6 
* INOUT : br_0_6 
* INOUT : bl_0_7 
* INOUT : br_0_7 
* INPUT : wl_0_0 
* POWER : vdd 
* GROUND: gnd 
Xbit_r0_c0
+ bl_0_0 br_0_0 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c1
+ bl_0_1 br_0_1 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c2
+ bl_0_2 br_0_2 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c3
+ bl_0_3 br_0_3 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c4
+ bl_0_4 br_0_4 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c5
+ bl_0_5 br_0_5 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c6
+ bl_0_6 br_0_6 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c7
+ bl_0_7 br_0_7 wl_0_0 vdd gnd
+ dummy_cell_1rw
.ENDS RAM_Mem_dummy_array

*********************** "cell_1rw" ******************************
.SUBCKT replica_cell_1rw bl br wl vdd gnd
* SPICE3 file created from cell_1rw.ext - technology: scmos

* Inverter 1
M1000 Q vdd vdd vdd p w=0.6u l=0.8u
M1002 Q vdd gnd gnd n w=1.6u l=0.4u

* Inverter 2
M1001 vdd Q vdd vdd p w=0.6u l=0.8u
M1003 gnd Q vdd gnd n w=1.6u l=0.4u

* Access transistors
M1004 Q wl bl gnd n w=0.8u l=0.4u
M1005 vdd wl br gnd n w=0.8u l=0.4u

.ENDS

.SUBCKT RAM_Mem_replica_column
+ bl_0_0 br_0_0 wl_0_0 wl_0_1 wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7
+ wl_0_8 wl_0_9 wl_0_10 wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 wl_0_16
+ vdd gnd
* OUTPUT: bl_0_0 
* OUTPUT: br_0_0 
* INPUT : wl_0_0 
* INPUT : wl_0_1 
* INPUT : wl_0_2 
* INPUT : wl_0_3 
* INPUT : wl_0_4 
* INPUT : wl_0_5 
* INPUT : wl_0_6 
* INPUT : wl_0_7 
* INPUT : wl_0_8 
* INPUT : wl_0_9 
* INPUT : wl_0_10 
* INPUT : wl_0_11 
* INPUT : wl_0_12 
* INPUT : wl_0_13 
* INPUT : wl_0_14 
* INPUT : wl_0_15 
* INPUT : wl_0_16 
* POWER : vdd 
* GROUND: gnd 
Xrbc_0
+ bl_0_0 br_0_0 wl_0_0 vdd gnd
+ replica_cell_1rw
Xrbc_1
+ bl_0_0 br_0_0 wl_0_1 vdd gnd
+ replica_cell_1rw
Xrbc_2
+ bl_0_0 br_0_0 wl_0_2 vdd gnd
+ replica_cell_1rw
Xrbc_3
+ bl_0_0 br_0_0 wl_0_3 vdd gnd
+ replica_cell_1rw
Xrbc_4
+ bl_0_0 br_0_0 wl_0_4 vdd gnd
+ replica_cell_1rw
Xrbc_5
+ bl_0_0 br_0_0 wl_0_5 vdd gnd
+ replica_cell_1rw
Xrbc_6
+ bl_0_0 br_0_0 wl_0_6 vdd gnd
+ replica_cell_1rw
Xrbc_7
+ bl_0_0 br_0_0 wl_0_7 vdd gnd
+ replica_cell_1rw
Xrbc_8
+ bl_0_0 br_0_0 wl_0_8 vdd gnd
+ replica_cell_1rw
Xrbc_9
+ bl_0_0 br_0_0 wl_0_9 vdd gnd
+ replica_cell_1rw
Xrbc_10
+ bl_0_0 br_0_0 wl_0_10 vdd gnd
+ replica_cell_1rw
Xrbc_11
+ bl_0_0 br_0_0 wl_0_11 vdd gnd
+ replica_cell_1rw
Xrbc_12
+ bl_0_0 br_0_0 wl_0_12 vdd gnd
+ replica_cell_1rw
Xrbc_13
+ bl_0_0 br_0_0 wl_0_13 vdd gnd
+ replica_cell_1rw
Xrbc_14
+ bl_0_0 br_0_0 wl_0_14 vdd gnd
+ replica_cell_1rw
Xrbc_15
+ bl_0_0 br_0_0 wl_0_15 vdd gnd
+ replica_cell_1rw
Xrbc_16
+ bl_0_0 br_0_0 wl_0_16 vdd gnd
+ replica_cell_1rw
.ENDS RAM_Mem_replica_column

.SUBCKT RAM_Mem_replica_bitcell_array
+ rbl_bl_0_0 rbl_br_0_0 bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3
+ br_0_3 bl_0_4 br_0_4 bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7
+ rbl_wl_0_0 wl_0_0 wl_0_1 wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7
+ wl_0_8 wl_0_9 wl_0_10 wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 vdd gnd
* INOUT : rbl_bl_0_0 
* INOUT : rbl_br_0_0 
* INOUT : bl_0_0 
* INOUT : br_0_0 
* INOUT : bl_0_1 
* INOUT : br_0_1 
* INOUT : bl_0_2 
* INOUT : br_0_2 
* INOUT : bl_0_3 
* INOUT : br_0_3 
* INOUT : bl_0_4 
* INOUT : br_0_4 
* INOUT : bl_0_5 
* INOUT : br_0_5 
* INOUT : bl_0_6 
* INOUT : br_0_6 
* INOUT : bl_0_7 
* INOUT : br_0_7 
* INPUT : rbl_wl_0_0 
* INPUT : wl_0_0 
* INPUT : wl_0_1 
* INPUT : wl_0_2 
* INPUT : wl_0_3 
* INPUT : wl_0_4 
* INPUT : wl_0_5 
* INPUT : wl_0_6 
* INPUT : wl_0_7 
* INPUT : wl_0_8 
* INPUT : wl_0_9 
* INPUT : wl_0_10 
* INPUT : wl_0_11 
* INPUT : wl_0_12 
* INPUT : wl_0_13 
* INPUT : wl_0_14 
* INPUT : wl_0_15 
* POWER : vdd 
* GROUND: gnd 
* rows: 16 cols: 8
* rbl: [1, 0] left_rbl: [0] right_rbl: []
Xbitcell_array
+ bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3 br_0_3 bl_0_4 br_0_4
+ bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 wl_0_0 wl_0_1 wl_0_2 wl_0_3
+ wl_0_4 wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10 wl_0_11 wl_0_12
+ wl_0_13 wl_0_14 wl_0_15 vdd gnd
+ RAM_Mem_bitcell_array
Xreplica_col_0
+ rbl_bl_0_0 rbl_br_0_0 rbl_wl_0_0 wl_0_0 wl_0_1 wl_0_2 wl_0_3 wl_0_4
+ wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10 wl_0_11 wl_0_12 wl_0_13
+ wl_0_14 wl_0_15 vdd gnd
+ RAM_Mem_replica_column
Xdummy_row_0
+ bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3 br_0_3 bl_0_4 br_0_4
+ bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 rbl_wl_0_0 vdd gnd
+ RAM_Mem_dummy_array
.ENDS RAM_Mem_replica_bitcell_array

.SUBCKT RAM_Mem_dummy_array_2
+ bl_0_0 br_0_0 wl_0_0 wl_0_1 wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7
+ wl_0_8 wl_0_9 wl_0_10 wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 wl_0_16
+ wl_0_17 wl_0_18 vdd gnd
* INOUT : bl_0_0 
* INOUT : br_0_0 
* INPUT : wl_0_0 
* INPUT : wl_0_1 
* INPUT : wl_0_2 
* INPUT : wl_0_3 
* INPUT : wl_0_4 
* INPUT : wl_0_5 
* INPUT : wl_0_6 
* INPUT : wl_0_7 
* INPUT : wl_0_8 
* INPUT : wl_0_9 
* INPUT : wl_0_10 
* INPUT : wl_0_11 
* INPUT : wl_0_12 
* INPUT : wl_0_13 
* INPUT : wl_0_14 
* INPUT : wl_0_15 
* INPUT : wl_0_16 
* INPUT : wl_0_17 
* INPUT : wl_0_18 
* POWER : vdd 
* GROUND: gnd 
Xbit_r0_c0
+ bl_0_0 br_0_0 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r1_c0
+ bl_0_0 br_0_0 wl_0_1 vdd gnd
+ dummy_cell_1rw
Xbit_r2_c0
+ bl_0_0 br_0_0 wl_0_2 vdd gnd
+ dummy_cell_1rw
Xbit_r3_c0
+ bl_0_0 br_0_0 wl_0_3 vdd gnd
+ dummy_cell_1rw
Xbit_r4_c0
+ bl_0_0 br_0_0 wl_0_4 vdd gnd
+ dummy_cell_1rw
Xbit_r5_c0
+ bl_0_0 br_0_0 wl_0_5 vdd gnd
+ dummy_cell_1rw
Xbit_r6_c0
+ bl_0_0 br_0_0 wl_0_6 vdd gnd
+ dummy_cell_1rw
Xbit_r7_c0
+ bl_0_0 br_0_0 wl_0_7 vdd gnd
+ dummy_cell_1rw
Xbit_r8_c0
+ bl_0_0 br_0_0 wl_0_8 vdd gnd
+ dummy_cell_1rw
Xbit_r9_c0
+ bl_0_0 br_0_0 wl_0_9 vdd gnd
+ dummy_cell_1rw
Xbit_r10_c0
+ bl_0_0 br_0_0 wl_0_10 vdd gnd
+ dummy_cell_1rw
Xbit_r11_c0
+ bl_0_0 br_0_0 wl_0_11 vdd gnd
+ dummy_cell_1rw
Xbit_r12_c0
+ bl_0_0 br_0_0 wl_0_12 vdd gnd
+ dummy_cell_1rw
Xbit_r13_c0
+ bl_0_0 br_0_0 wl_0_13 vdd gnd
+ dummy_cell_1rw
Xbit_r14_c0
+ bl_0_0 br_0_0 wl_0_14 vdd gnd
+ dummy_cell_1rw
Xbit_r15_c0
+ bl_0_0 br_0_0 wl_0_15 vdd gnd
+ dummy_cell_1rw
Xbit_r16_c0
+ bl_0_0 br_0_0 wl_0_16 vdd gnd
+ dummy_cell_1rw
Xbit_r17_c0
+ bl_0_0 br_0_0 wl_0_17 vdd gnd
+ dummy_cell_1rw
Xbit_r18_c0
+ bl_0_0 br_0_0 wl_0_18 vdd gnd
+ dummy_cell_1rw
.ENDS RAM_Mem_dummy_array_2

.SUBCKT RAM_Mem_dummy_array_0
+ bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3 br_0_3 bl_0_4 br_0_4
+ bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8 br_0_8 wl_0_0 vdd gnd
* INOUT : bl_0_0 
* INOUT : br_0_0 
* INOUT : bl_0_1 
* INOUT : br_0_1 
* INOUT : bl_0_2 
* INOUT : br_0_2 
* INOUT : bl_0_3 
* INOUT : br_0_3 
* INOUT : bl_0_4 
* INOUT : br_0_4 
* INOUT : bl_0_5 
* INOUT : br_0_5 
* INOUT : bl_0_6 
* INOUT : br_0_6 
* INOUT : bl_0_7 
* INOUT : br_0_7 
* INOUT : bl_0_8 
* INOUT : br_0_8 
* INPUT : wl_0_0 
* POWER : vdd 
* GROUND: gnd 
Xbit_r0_c0
+ bl_0_0 br_0_0 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c1
+ bl_0_1 br_0_1 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c2
+ bl_0_2 br_0_2 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c3
+ bl_0_3 br_0_3 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c4
+ bl_0_4 br_0_4 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c5
+ bl_0_5 br_0_5 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c6
+ bl_0_6 br_0_6 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c7
+ bl_0_7 br_0_7 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c8
+ bl_0_8 br_0_8 wl_0_0 vdd gnd
+ dummy_cell_1rw
.ENDS RAM_Mem_dummy_array_0

.SUBCKT RAM_Mem_dummy_array_3
+ bl_0_0 br_0_0 wl_0_0 wl_0_1 wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7
+ wl_0_8 wl_0_9 wl_0_10 wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 wl_0_16
+ wl_0_17 wl_0_18 vdd gnd
* INOUT : bl_0_0 
* INOUT : br_0_0 
* INPUT : wl_0_0 
* INPUT : wl_0_1 
* INPUT : wl_0_2 
* INPUT : wl_0_3 
* INPUT : wl_0_4 
* INPUT : wl_0_5 
* INPUT : wl_0_6 
* INPUT : wl_0_7 
* INPUT : wl_0_8 
* INPUT : wl_0_9 
* INPUT : wl_0_10 
* INPUT : wl_0_11 
* INPUT : wl_0_12 
* INPUT : wl_0_13 
* INPUT : wl_0_14 
* INPUT : wl_0_15 
* INPUT : wl_0_16 
* INPUT : wl_0_17 
* INPUT : wl_0_18 
* POWER : vdd 
* GROUND: gnd 
Xbit_r0_c0
+ bl_0_0 br_0_0 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r1_c0
+ bl_0_0 br_0_0 wl_0_1 vdd gnd
+ dummy_cell_1rw
Xbit_r2_c0
+ bl_0_0 br_0_0 wl_0_2 vdd gnd
+ dummy_cell_1rw
Xbit_r3_c0
+ bl_0_0 br_0_0 wl_0_3 vdd gnd
+ dummy_cell_1rw
Xbit_r4_c0
+ bl_0_0 br_0_0 wl_0_4 vdd gnd
+ dummy_cell_1rw
Xbit_r5_c0
+ bl_0_0 br_0_0 wl_0_5 vdd gnd
+ dummy_cell_1rw
Xbit_r6_c0
+ bl_0_0 br_0_0 wl_0_6 vdd gnd
+ dummy_cell_1rw
Xbit_r7_c0
+ bl_0_0 br_0_0 wl_0_7 vdd gnd
+ dummy_cell_1rw
Xbit_r8_c0
+ bl_0_0 br_0_0 wl_0_8 vdd gnd
+ dummy_cell_1rw
Xbit_r9_c0
+ bl_0_0 br_0_0 wl_0_9 vdd gnd
+ dummy_cell_1rw
Xbit_r10_c0
+ bl_0_0 br_0_0 wl_0_10 vdd gnd
+ dummy_cell_1rw
Xbit_r11_c0
+ bl_0_0 br_0_0 wl_0_11 vdd gnd
+ dummy_cell_1rw
Xbit_r12_c0
+ bl_0_0 br_0_0 wl_0_12 vdd gnd
+ dummy_cell_1rw
Xbit_r13_c0
+ bl_0_0 br_0_0 wl_0_13 vdd gnd
+ dummy_cell_1rw
Xbit_r14_c0
+ bl_0_0 br_0_0 wl_0_14 vdd gnd
+ dummy_cell_1rw
Xbit_r15_c0
+ bl_0_0 br_0_0 wl_0_15 vdd gnd
+ dummy_cell_1rw
Xbit_r16_c0
+ bl_0_0 br_0_0 wl_0_16 vdd gnd
+ dummy_cell_1rw
Xbit_r17_c0
+ bl_0_0 br_0_0 wl_0_17 vdd gnd
+ dummy_cell_1rw
Xbit_r18_c0
+ bl_0_0 br_0_0 wl_0_18 vdd gnd
+ dummy_cell_1rw
.ENDS RAM_Mem_dummy_array_3

.SUBCKT RAM_Mem_capped_replica_bitcell_array
+ rbl_bl_0_0 rbl_br_0_0 bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3
+ br_0_3 bl_0_4 br_0_4 bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7
+ rbl_wl_0_0 wl_0_0 wl_0_1 wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7
+ wl_0_8 wl_0_9 wl_0_10 wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 vdd gnd
* INOUT : rbl_bl_0_0 
* INOUT : rbl_br_0_0 
* INOUT : bl_0_0 
* INOUT : br_0_0 
* INOUT : bl_0_1 
* INOUT : br_0_1 
* INOUT : bl_0_2 
* INOUT : br_0_2 
* INOUT : bl_0_3 
* INOUT : br_0_3 
* INOUT : bl_0_4 
* INOUT : br_0_4 
* INOUT : bl_0_5 
* INOUT : br_0_5 
* INOUT : bl_0_6 
* INOUT : br_0_6 
* INOUT : bl_0_7 
* INOUT : br_0_7 
* INPUT : rbl_wl_0_0 
* INPUT : wl_0_0 
* INPUT : wl_0_1 
* INPUT : wl_0_2 
* INPUT : wl_0_3 
* INPUT : wl_0_4 
* INPUT : wl_0_5 
* INPUT : wl_0_6 
* INPUT : wl_0_7 
* INPUT : wl_0_8 
* INPUT : wl_0_9 
* INPUT : wl_0_10 
* INPUT : wl_0_11 
* INPUT : wl_0_12 
* INPUT : wl_0_13 
* INPUT : wl_0_14 
* INPUT : wl_0_15 
* POWER : vdd 
* GROUND: gnd 
* rows: 16 cols: 8
* rbl: [1, 0] left_rbl: [0] right_rbl: []
Xreplica_bitcell_array
+ rbl_bl_0_0 rbl_br_0_0 bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3
+ br_0_3 bl_0_4 br_0_4 bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7
+ rbl_wl_0_0 wl_0_0 wl_0_1 wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7
+ wl_0_8 wl_0_9 wl_0_10 wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 vdd gnd
+ RAM_Mem_replica_bitcell_array
Xdummy_row_bot
+ rbl_bl_0_0 rbl_br_0_0 bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3
+ br_0_3 bl_0_4 br_0_4 bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 gnd vdd
+ gnd
+ RAM_Mem_dummy_array_1
Xdummy_row_top
+ rbl_bl_0_0 rbl_br_0_0 bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3
+ br_0_3 bl_0_4 br_0_4 bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 gnd vdd
+ gnd
+ RAM_Mem_dummy_array_0
Xdummy_col_left
+ dummy_left_bl_0_0 dummy_left_br_0_0 gnd rbl_wl_0_0 wl_0_0 wl_0_1
+ wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10
+ wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 gnd vdd gnd
+ RAM_Mem_dummy_array_2
Xdummy_col_right
+ dummy_right_bl_0_0 dummy_right_br_0_0 gnd rbl_wl_0_0 wl_0_0 wl_0_1
+ wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10
+ wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 gnd vdd gnd
+ RAM_Mem_dummy_array_3
.ENDS RAM_Mem_capped_replica_bitcell_array

* spice ptx M{0} {1} n m=1 w=1.6u l=0.4u pd=4.00u ps=4.00u as=1.60p ad=1.60p

* spice ptx M{0} {1} p m=1 w=3.2u l=0.4u pd=7.20u ps=7.20u as=3.20p ad=3.20p

.SUBCKT RAM_Mem_pinv_0
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 2
Mpinv_pmos Z A vdd vdd p m=1 w=3.2u l=0.4u pd=7.20u ps=7.20u as=3.20p ad=3.20p
Mpinv_nmos Z A gnd gnd n m=1 w=1.6u l=0.4u pd=4.00u ps=4.00u as=1.60p ad=1.60p
.ENDS RAM_Mem_pinv_0

* spice ptx M{0} {1} n m=1 w=1.6u l=0.4u pd=4.00u ps=4.00u as=1.60p ad=1.60p

* spice ptx M{0} {1} n m=1 w=1.6u l=0.4u pd=4.00u ps=4.00u as=1.60p ad=1.60p

.SUBCKT RAM_Mem_pnand2
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Mpnand2_pmos1 vdd A Z vdd p m=1 w=1.6u l=0.4u pd=4.00u ps=4.00u as=1.60p ad=1.60p
Mpnand2_pmos2 Z B vdd vdd p m=1 w=1.6u l=0.4u pd=4.00u ps=4.00u as=1.60p ad=1.60p
Mpnand2_nmos1 Z B net1 gnd n m=1 w=1.6u l=0.4u pd=4.00u ps=4.00u as=1.60p ad=1.60p
Mpnand2_nmos2 net1 A gnd gnd n m=1 w=1.6u l=0.4u pd=4.00u ps=4.00u as=1.60p ad=1.60p
.ENDS RAM_Mem_pnand2

.SUBCKT RAM_Mem_and2_dec_0
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 2
Xpand2_dec_nand
+ A B zb_int vdd gnd
+ RAM_Mem_pnand2
Xpand2_dec_inv
+ zb_int Z vdd gnd
+ RAM_Mem_pinv_0
.ENDS RAM_Mem_and2_dec_0

.SUBCKT RAM_Mem_wordline_driver
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* cols: 8
Xwld_nand
+ A B zb_int vdd gnd
+ RAM_Mem_pnand2
Xwl_driver
+ zb_int Z vdd gnd
+ RAM_Mem_pinv_0
.ENDS RAM_Mem_wordline_driver

.SUBCKT RAM_Mem_wordline_driver_array
+ in_0 in_1 in_2 in_3 in_4 in_5 in_6 in_7 in_8 in_9 in_10 in_11 in_12
+ in_13 in_14 in_15 wl_0 wl_1 wl_2 wl_3 wl_4 wl_5 wl_6 wl_7 wl_8 wl_9
+ wl_10 wl_11 wl_12 wl_13 wl_14 wl_15 en vdd gnd
* INPUT : in_0 
* INPUT : in_1 
* INPUT : in_2 
* INPUT : in_3 
* INPUT : in_4 
* INPUT : in_5 
* INPUT : in_6 
* INPUT : in_7 
* INPUT : in_8 
* INPUT : in_9 
* INPUT : in_10 
* INPUT : in_11 
* INPUT : in_12 
* INPUT : in_13 
* INPUT : in_14 
* INPUT : in_15 
* OUTPUT: wl_0 
* OUTPUT: wl_1 
* OUTPUT: wl_2 
* OUTPUT: wl_3 
* OUTPUT: wl_4 
* OUTPUT: wl_5 
* OUTPUT: wl_6 
* OUTPUT: wl_7 
* OUTPUT: wl_8 
* OUTPUT: wl_9 
* OUTPUT: wl_10 
* OUTPUT: wl_11 
* OUTPUT: wl_12 
* OUTPUT: wl_13 
* OUTPUT: wl_14 
* OUTPUT: wl_15 
* INPUT : en 
* POWER : vdd 
* GROUND: gnd 
* rows: 16 cols: 8
Xwl_driver_and0
+ in_0 en wl_0 vdd gnd
+ RAM_Mem_wordline_driver
Xwl_driver_and1
+ in_1 en wl_1 vdd gnd
+ RAM_Mem_wordline_driver
Xwl_driver_and2
+ in_2 en wl_2 vdd gnd
+ RAM_Mem_wordline_driver
Xwl_driver_and3
+ in_3 en wl_3 vdd gnd
+ RAM_Mem_wordline_driver
Xwl_driver_and4
+ in_4 en wl_4 vdd gnd
+ RAM_Mem_wordline_driver
Xwl_driver_and5
+ in_5 en wl_5 vdd gnd
+ RAM_Mem_wordline_driver
Xwl_driver_and6
+ in_6 en wl_6 vdd gnd
+ RAM_Mem_wordline_driver
Xwl_driver_and7
+ in_7 en wl_7 vdd gnd
+ RAM_Mem_wordline_driver
Xwl_driver_and8
+ in_8 en wl_8 vdd gnd
+ RAM_Mem_wordline_driver
Xwl_driver_and9
+ in_9 en wl_9 vdd gnd
+ RAM_Mem_wordline_driver
Xwl_driver_and10
+ in_10 en wl_10 vdd gnd
+ RAM_Mem_wordline_driver
Xwl_driver_and11
+ in_11 en wl_11 vdd gnd
+ RAM_Mem_wordline_driver
Xwl_driver_and12
+ in_12 en wl_12 vdd gnd
+ RAM_Mem_wordline_driver
Xwl_driver_and13
+ in_13 en wl_13 vdd gnd
+ RAM_Mem_wordline_driver
Xwl_driver_and14
+ in_14 en wl_14 vdd gnd
+ RAM_Mem_wordline_driver
Xwl_driver_and15
+ in_15 en wl_15 vdd gnd
+ RAM_Mem_wordline_driver
.ENDS RAM_Mem_wordline_driver_array

* spice ptx M{0} {1} n m=1 w=0.8u l=0.4u pd=2.40u ps=2.40u as=0.80p ad=0.80p

* spice ptx M{0} {1} p m=1 w=1.6u l=0.4u pd=4.00u ps=4.00u as=1.60p ad=1.60p

.SUBCKT RAM_Mem_pinv
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Mpinv_pmos Z A vdd vdd p m=1 w=1.6u l=0.4u pd=4.00u ps=4.00u as=1.60p ad=1.60p
Mpinv_nmos Z A gnd gnd n m=1 w=0.8u l=0.4u pd=2.40u ps=2.40u as=0.80p ad=0.80p
.ENDS RAM_Mem_pinv

.SUBCKT RAM_Mem_and2_dec
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Xpand2_dec_nand
+ A B zb_int vdd gnd
+ RAM_Mem_pnand2
Xpand2_dec_inv
+ zb_int Z vdd gnd
+ RAM_Mem_pinv
.ENDS RAM_Mem_and2_dec

.SUBCKT RAM_Mem_hierarchical_predecode2x4
+ in_0 in_1 out_0 out_1 out_2 out_3 vdd gnd
* INPUT : in_0 
* INPUT : in_1 
* OUTPUT: out_0 
* OUTPUT: out_1 
* OUTPUT: out_2 
* OUTPUT: out_3 
* POWER : vdd 
* GROUND: gnd 
Xpre_inv_0
+ in_0 inbar_0 vdd gnd
+ RAM_Mem_pinv
Xpre_inv_1
+ in_1 inbar_1 vdd gnd
+ RAM_Mem_pinv
XXpre2x4_and_0
+ inbar_0 inbar_1 out_0 vdd gnd
+ RAM_Mem_and2_dec
XXpre2x4_and_1
+ in_0 inbar_1 out_1 vdd gnd
+ RAM_Mem_and2_dec
XXpre2x4_and_2
+ inbar_0 in_1 out_2 vdd gnd
+ RAM_Mem_and2_dec
XXpre2x4_and_3
+ in_0 in_1 out_3 vdd gnd
+ RAM_Mem_and2_dec
.ENDS RAM_Mem_hierarchical_predecode2x4

.SUBCKT RAM_Mem_hierarchical_decoder
+ addr_0 addr_1 addr_2 addr_3 decode_0 decode_1 decode_2 decode_3
+ decode_4 decode_5 decode_6 decode_7 decode_8 decode_9 decode_10
+ decode_11 decode_12 decode_13 decode_14 decode_15 vdd gnd
* INPUT : addr_0 
* INPUT : addr_1 
* INPUT : addr_2 
* INPUT : addr_3 
* OUTPUT: decode_0 
* OUTPUT: decode_1 
* OUTPUT: decode_2 
* OUTPUT: decode_3 
* OUTPUT: decode_4 
* OUTPUT: decode_5 
* OUTPUT: decode_6 
* OUTPUT: decode_7 
* OUTPUT: decode_8 
* OUTPUT: decode_9 
* OUTPUT: decode_10 
* OUTPUT: decode_11 
* OUTPUT: decode_12 
* OUTPUT: decode_13 
* OUTPUT: decode_14 
* OUTPUT: decode_15 
* POWER : vdd 
* GROUND: gnd 
Xpre_0
+ addr_0 addr_1 out_0 out_1 out_2 out_3 vdd gnd
+ RAM_Mem_hierarchical_predecode2x4
Xpre_1
+ addr_2 addr_3 out_4 out_5 out_6 out_7 vdd gnd
+ RAM_Mem_hierarchical_predecode2x4
XDEC_AND_0
+ out_0 out_4 decode_0 vdd gnd
+ RAM_Mem_and2_dec
XDEC_AND_4
+ out_0 out_5 decode_4 vdd gnd
+ RAM_Mem_and2_dec
XDEC_AND_8
+ out_0 out_6 decode_8 vdd gnd
+ RAM_Mem_and2_dec
XDEC_AND_12
+ out_0 out_7 decode_12 vdd gnd
+ RAM_Mem_and2_dec
XDEC_AND_1
+ out_1 out_4 decode_1 vdd gnd
+ RAM_Mem_and2_dec
XDEC_AND_5
+ out_1 out_5 decode_5 vdd gnd
+ RAM_Mem_and2_dec
XDEC_AND_9
+ out_1 out_6 decode_9 vdd gnd
+ RAM_Mem_and2_dec
XDEC_AND_13
+ out_1 out_7 decode_13 vdd gnd
+ RAM_Mem_and2_dec
XDEC_AND_2
+ out_2 out_4 decode_2 vdd gnd
+ RAM_Mem_and2_dec
XDEC_AND_6
+ out_2 out_5 decode_6 vdd gnd
+ RAM_Mem_and2_dec
XDEC_AND_10
+ out_2 out_6 decode_10 vdd gnd
+ RAM_Mem_and2_dec
XDEC_AND_14
+ out_2 out_7 decode_14 vdd gnd
+ RAM_Mem_and2_dec
XDEC_AND_3
+ out_3 out_4 decode_3 vdd gnd
+ RAM_Mem_and2_dec
XDEC_AND_7
+ out_3 out_5 decode_7 vdd gnd
+ RAM_Mem_and2_dec
XDEC_AND_11
+ out_3 out_6 decode_11 vdd gnd
+ RAM_Mem_and2_dec
XDEC_AND_15
+ out_3 out_7 decode_15 vdd gnd
+ RAM_Mem_and2_dec
.ENDS RAM_Mem_hierarchical_decoder

.SUBCKT RAM_Mem_port_address
+ addr_0 addr_1 addr_2 addr_3 wl_en wl_0 wl_1 wl_2 wl_3 wl_4 wl_5 wl_6
+ wl_7 wl_8 wl_9 wl_10 wl_11 wl_12 wl_13 wl_14 wl_15 rbl_wl vdd gnd
* INPUT : addr_0 
* INPUT : addr_1 
* INPUT : addr_2 
* INPUT : addr_3 
* INPUT : wl_en 
* OUTPUT: wl_0 
* OUTPUT: wl_1 
* OUTPUT: wl_2 
* OUTPUT: wl_3 
* OUTPUT: wl_4 
* OUTPUT: wl_5 
* OUTPUT: wl_6 
* OUTPUT: wl_7 
* OUTPUT: wl_8 
* OUTPUT: wl_9 
* OUTPUT: wl_10 
* OUTPUT: wl_11 
* OUTPUT: wl_12 
* OUTPUT: wl_13 
* OUTPUT: wl_14 
* OUTPUT: wl_15 
* OUTPUT: rbl_wl 
* POWER : vdd 
* GROUND: gnd 
Xrow_decoder
+ addr_0 addr_1 addr_2 addr_3 dec_out_0 dec_out_1 dec_out_2 dec_out_3
+ dec_out_4 dec_out_5 dec_out_6 dec_out_7 dec_out_8 dec_out_9 dec_out_10
+ dec_out_11 dec_out_12 dec_out_13 dec_out_14 dec_out_15 vdd gnd
+ RAM_Mem_hierarchical_decoder
Xwordline_driver
+ dec_out_0 dec_out_1 dec_out_2 dec_out_3 dec_out_4 dec_out_5 dec_out_6
+ dec_out_7 dec_out_8 dec_out_9 dec_out_10 dec_out_11 dec_out_12
+ dec_out_13 dec_out_14 dec_out_15 wl_0 wl_1 wl_2 wl_3 wl_4 wl_5 wl_6
+ wl_7 wl_8 wl_9 wl_10 wl_11 wl_12 wl_13 wl_14 wl_15 wl_en vdd gnd
+ RAM_Mem_wordline_driver_array
Xrbl_driver
+ wl_en vdd rbl_wl vdd gnd
+ RAM_Mem_and2_dec_0
.ENDS RAM_Mem_port_address

.SUBCKT RAM_Mem_bank
+ dout0_0 dout0_1 dout0_2 dout0_3 dout0_4 dout0_5 dout0_6 dout0_7
+ rbl_bl_0_0 din0_0 din0_1 din0_2 din0_3 din0_4 din0_5 din0_6 din0_7
+ addr0_0 addr0_1 addr0_2 addr0_3 s_en0 p_en_bar0 w_en0 wl_en0 vdd gnd
* OUTPUT: dout0_0 
* OUTPUT: dout0_1 
* OUTPUT: dout0_2 
* OUTPUT: dout0_3 
* OUTPUT: dout0_4 
* OUTPUT: dout0_5 
* OUTPUT: dout0_6 
* OUTPUT: dout0_7 
* OUTPUT: rbl_bl_0_0 
* INPUT : din0_0 
* INPUT : din0_1 
* INPUT : din0_2 
* INPUT : din0_3 
* INPUT : din0_4 
* INPUT : din0_5 
* INPUT : din0_6 
* INPUT : din0_7 
* INPUT : addr0_0 
* INPUT : addr0_1 
* INPUT : addr0_2 
* INPUT : addr0_3 
* INPUT : s_en0 
* INPUT : p_en_bar0 
* INPUT : w_en0 
* INPUT : wl_en0 
* POWER : vdd 
* GROUND: gnd 
Xbitcell_array
+ rbl_bl_0_0 rbl_br_0_0 bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3
+ br_0_3 bl_0_4 br_0_4 bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 rbl_wl0
+ wl_0_0 wl_0_1 wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9
+ wl_0_10 wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 vdd gnd
+ RAM_Mem_capped_replica_bitcell_array
Xport_data0
+ rbl_bl_0_0 rbl_br_0_0 bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3
+ br_0_3 bl_0_4 br_0_4 bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 dout0_0
+ dout0_1 dout0_2 dout0_3 dout0_4 dout0_5 dout0_6 dout0_7 din0_0 din0_1
+ din0_2 din0_3 din0_4 din0_5 din0_6 din0_7 s_en0 p_en_bar0 w_en0 vdd
+ gnd
+ RAM_Mem_port_data
Xport_address0
+ addr0_0 addr0_1 addr0_2 addr0_3 wl_en0 wl_0_0 wl_0_1 wl_0_2 wl_0_3
+ wl_0_4 wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10 wl_0_11 wl_0_12
+ wl_0_13 wl_0_14 wl_0_15 rbl_wl0 vdd gnd
+ RAM_Mem_port_address
.ENDS RAM_Mem_bank

.SUBCKT RAM_Mem_pinv_11
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Mpinv_pmos Z A vdd vdd p m=1 w=1.6u l=0.4u pd=4.00u ps=4.00u as=1.60p ad=1.60p
Mpinv_nmos Z A gnd gnd n m=1 w=0.8u l=0.4u pd=2.40u ps=2.40u as=0.80p ad=0.80p
.ENDS RAM_Mem_pinv_11

.SUBCKT RAM_Mem_pinv_12
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Mpinv_pmos Z A vdd vdd p m=1 w=1.6u l=0.4u pd=4.00u ps=4.00u as=1.60p ad=1.60p
Mpinv_nmos Z A gnd gnd n m=1 w=0.8u l=0.4u pd=2.40u ps=2.40u as=0.80p ad=0.80p
.ENDS RAM_Mem_pinv_12

.SUBCKT RAM_Mem_delay_chain
+ in out vdd gnd
* INPUT : in 
* OUTPUT: out 
* POWER : vdd 
* GROUND: gnd 
* fanouts: [4, 4, 4, 4, 4, 4, 4, 4, 4]
Xdinv0
+ in dout_1 vdd gnd
+ RAM_Mem_pinv_12
Xdload_0_0
+ dout_1 n_0_0 vdd gnd
+ RAM_Mem_pinv_12
Xdload_0_1
+ dout_1 n_0_1 vdd gnd
+ RAM_Mem_pinv_12
Xdload_0_2
+ dout_1 n_0_2 vdd gnd
+ RAM_Mem_pinv_12
Xdload_0_3
+ dout_1 n_0_3 vdd gnd
+ RAM_Mem_pinv_12
Xdinv1
+ dout_1 dout_2 vdd gnd
+ RAM_Mem_pinv_12
Xdload_1_0
+ dout_2 n_1_0 vdd gnd
+ RAM_Mem_pinv_12
Xdload_1_1
+ dout_2 n_1_1 vdd gnd
+ RAM_Mem_pinv_12
Xdload_1_2
+ dout_2 n_1_2 vdd gnd
+ RAM_Mem_pinv_12
Xdload_1_3
+ dout_2 n_1_3 vdd gnd
+ RAM_Mem_pinv_12
Xdinv2
+ dout_2 dout_3 vdd gnd
+ RAM_Mem_pinv_12
Xdload_2_0
+ dout_3 n_2_0 vdd gnd
+ RAM_Mem_pinv_12
Xdload_2_1
+ dout_3 n_2_1 vdd gnd
+ RAM_Mem_pinv_12
Xdload_2_2
+ dout_3 n_2_2 vdd gnd
+ RAM_Mem_pinv_12
Xdload_2_3
+ dout_3 n_2_3 vdd gnd
+ RAM_Mem_pinv_12
Xdinv3
+ dout_3 dout_4 vdd gnd
+ RAM_Mem_pinv_12
Xdload_3_0
+ dout_4 n_3_0 vdd gnd
+ RAM_Mem_pinv_12
Xdload_3_1
+ dout_4 n_3_1 vdd gnd
+ RAM_Mem_pinv_12
Xdload_3_2
+ dout_4 n_3_2 vdd gnd
+ RAM_Mem_pinv_12
Xdload_3_3
+ dout_4 n_3_3 vdd gnd
+ RAM_Mem_pinv_12
Xdinv4
+ dout_4 dout_5 vdd gnd
+ RAM_Mem_pinv_12
Xdload_4_0
+ dout_5 n_4_0 vdd gnd
+ RAM_Mem_pinv_12
Xdload_4_1
+ dout_5 n_4_1 vdd gnd
+ RAM_Mem_pinv_12
Xdload_4_2
+ dout_5 n_4_2 vdd gnd
+ RAM_Mem_pinv_12
Xdload_4_3
+ dout_5 n_4_3 vdd gnd
+ RAM_Mem_pinv_12
Xdinv5
+ dout_5 dout_6 vdd gnd
+ RAM_Mem_pinv_12
Xdload_5_0
+ dout_6 n_5_0 vdd gnd
+ RAM_Mem_pinv_12
Xdload_5_1
+ dout_6 n_5_1 vdd gnd
+ RAM_Mem_pinv_12
Xdload_5_2
+ dout_6 n_5_2 vdd gnd
+ RAM_Mem_pinv_12
Xdload_5_3
+ dout_6 n_5_3 vdd gnd
+ RAM_Mem_pinv_12
Xdinv6
+ dout_6 dout_7 vdd gnd
+ RAM_Mem_pinv_12
Xdload_6_0
+ dout_7 n_6_0 vdd gnd
+ RAM_Mem_pinv_12
Xdload_6_1
+ dout_7 n_6_1 vdd gnd
+ RAM_Mem_pinv_12
Xdload_6_2
+ dout_7 n_6_2 vdd gnd
+ RAM_Mem_pinv_12
Xdload_6_3
+ dout_7 n_6_3 vdd gnd
+ RAM_Mem_pinv_12
Xdinv7
+ dout_7 dout_8 vdd gnd
+ RAM_Mem_pinv_12
Xdload_7_0
+ dout_8 n_7_0 vdd gnd
+ RAM_Mem_pinv_12
Xdload_7_1
+ dout_8 n_7_1 vdd gnd
+ RAM_Mem_pinv_12
Xdload_7_2
+ dout_8 n_7_2 vdd gnd
+ RAM_Mem_pinv_12
Xdload_7_3
+ dout_8 n_7_3 vdd gnd
+ RAM_Mem_pinv_12
Xdinv8
+ dout_8 out vdd gnd
+ RAM_Mem_pinv_12
Xdload_8_0
+ out n_8_0 vdd gnd
+ RAM_Mem_pinv_12
Xdload_8_1
+ out n_8_1 vdd gnd
+ RAM_Mem_pinv_12
Xdload_8_2
+ out n_8_2 vdd gnd
+ RAM_Mem_pinv_12
Xdload_8_3
+ out n_8_3 vdd gnd
+ RAM_Mem_pinv_12
.ENDS RAM_Mem_delay_chain

* spice ptx M{0} {1} p m=1 w=8.0u l=0.4u pd=16.80u ps=16.80u as=8.00p ad=8.00p

* spice ptx M{0} {1} n m=1 w=4.0u l=0.4u pd=8.80u ps=8.80u as=4.00p ad=4.00p

.SUBCKT RAM_Mem_pinv_9
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 5
Mpinv_pmos Z A vdd vdd p m=1 w=8.0u l=0.4u pd=16.80u ps=16.80u as=8.00p ad=8.00p
Mpinv_nmos Z A gnd gnd n m=1 w=4.0u l=0.4u pd=8.80u ps=8.80u as=4.00p ad=4.00p
.ENDS RAM_Mem_pinv_9

.SUBCKT RAM_Mem_pinv_5
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Mpinv_pmos Z A vdd vdd p m=1 w=1.6u l=0.4u pd=4.00u ps=4.00u as=1.60p ad=1.60p
Mpinv_nmos Z A gnd gnd n m=1 w=0.8u l=0.4u pd=2.40u ps=2.40u as=0.80p ad=0.80p
.ENDS RAM_Mem_pinv_5

.SUBCKT RAM_Mem_pdriver_1
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [1, 5]
Xbuf_inv1
+ A Zb1_int vdd gnd
+ RAM_Mem_pinv_5
Xbuf_inv2
+ Zb1_int Z vdd gnd
+ RAM_Mem_pinv_9
.ENDS RAM_Mem_pdriver_1

.SUBCKT RAM_Mem_pnand2_1
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Mpnand2_pmos1 vdd A Z vdd p m=1 w=1.6u l=0.4u pd=4.00u ps=4.00u as=1.60p ad=1.60p
Mpnand2_pmos2 Z B vdd vdd p m=1 w=1.6u l=0.4u pd=4.00u ps=4.00u as=1.60p ad=1.60p
Mpnand2_nmos1 Z B net1 gnd n m=1 w=1.6u l=0.4u pd=4.00u ps=4.00u as=1.60p ad=1.60p
Mpnand2_nmos2 net1 A gnd gnd n m=1 w=1.6u l=0.4u pd=4.00u ps=4.00u as=1.60p ad=1.60p
.ENDS RAM_Mem_pnand2_1

* spice ptx M{0} {1} n m=5 w=4.0u l=0.4u pd=8.80u ps=8.80u as=4.00p ad=4.00p

* spice ptx M{0} {1} p m=5 w=8.0u l=0.4u pd=16.80u ps=16.80u as=8.00p ad=8.00p

.SUBCKT RAM_Mem_pinv_8
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 25
Mpinv_pmos Z A vdd vdd p m=5 w=8.0u l=0.4u pd=16.80u ps=16.80u as=8.00p ad=8.00p
Mpinv_nmos Z A gnd gnd n m=5 w=4.0u l=0.4u pd=8.80u ps=8.80u as=4.00p ad=4.00p
.ENDS RAM_Mem_pinv_8

* spice ptx M{0} {1} p m=1 w=4.800000000000001u l=0.4u pd=10.40u ps=10.40u as=4.80p ad=4.80p

* spice ptx M{0} {1} n m=1 w=2.4000000000000004u l=0.4u pd=5.60u ps=5.60u as=2.40p ad=2.40p

.SUBCKT RAM_Mem_pinv_6
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 3
Mpinv_pmos Z A vdd vdd p m=1 w=4.800000000000001u l=0.4u pd=10.40u ps=10.40u as=4.80p ad=4.80p
Mpinv_nmos Z A gnd gnd n m=1 w=2.4000000000000004u l=0.4u pd=5.60u ps=5.60u as=2.40p ad=2.40p
.ENDS RAM_Mem_pinv_6

* spice ptx M{0} {1} p m=2 w=6.4u l=0.4u pd=13.60u ps=13.60u as=6.40p ad=6.40p

* spice ptx M{0} {1} n m=2 w=3.2u l=0.4u pd=7.20u ps=7.20u as=3.20p ad=3.20p

.SUBCKT RAM_Mem_pinv_7
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 8
Mpinv_pmos Z A vdd vdd p m=2 w=6.4u l=0.4u pd=13.60u ps=13.60u as=6.40p ad=6.40p
Mpinv_nmos Z A gnd gnd n m=2 w=3.2u l=0.4u pd=7.20u ps=7.20u as=3.20p ad=3.20p
.ENDS RAM_Mem_pinv_7

.SUBCKT RAM_Mem_pdriver_0
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [1, 3, 8, 25]
Xbuf_inv1
+ A Zb1_int vdd gnd
+ RAM_Mem_pinv_5
Xbuf_inv2
+ Zb1_int Zb2_int vdd gnd
+ RAM_Mem_pinv_6
Xbuf_inv3
+ Zb2_int Zb3_int vdd gnd
+ RAM_Mem_pinv_7
Xbuf_inv4
+ Zb3_int Z vdd gnd
+ RAM_Mem_pinv_8
.ENDS RAM_Mem_pdriver_0

* spice ptx M{0} {1} n m=1 w=1.6u l=0.4u pd=4.00u ps=4.00u as=1.60p ad=1.60p

.SUBCKT RAM_Mem_pnand3_0
+ A B C Z vdd gnd
* INPUT : A 
* INPUT : B 
* INPUT : C 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Mpnand3_pmos1 vdd A Z vdd p m=1 w=1.6u l=0.4u pd=4.00u ps=4.00u as=1.60p ad=1.60p
Mpnand3_pmos2 Z B vdd vdd p m=1 w=1.6u l=0.4u pd=4.00u ps=4.00u as=1.60p ad=1.60p
Mpnand3_pmos3 Z C vdd vdd p m=1 w=1.6u l=0.4u pd=4.00u ps=4.00u as=1.60p ad=1.60p
Mpnand3_nmos1 Z C net1 gnd n m=1 w=1.6u l=0.4u pd=4.00u ps=4.00u as=1.60p ad=1.60p
Mpnand3_nmos2 net1 B net2 gnd n m=1 w=1.6u l=0.4u pd=4.00u ps=4.00u as=1.60p ad=1.60p
Mpnand3_nmos3 net2 A gnd gnd n m=1 w=1.6u l=0.4u pd=4.00u ps=4.00u as=1.60p ad=1.60p
.ENDS RAM_Mem_pnand3_0

* spice ptx M{0} {1} n m=4 w=3.2u l=0.4u pd=7.20u ps=7.20u as=3.20p ad=3.20p

* spice ptx M{0} {1} p m=4 w=6.4u l=0.4u pd=13.60u ps=13.60u as=6.40p ad=6.40p

.SUBCKT RAM_Mem_pinv_10
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 16
Mpinv_pmos Z A vdd vdd p m=4 w=6.4u l=0.4u pd=13.60u ps=13.60u as=6.40p ad=6.40p
Mpinv_nmos Z A gnd gnd n m=4 w=3.2u l=0.4u pd=7.20u ps=7.20u as=3.20p ad=3.20p
.ENDS RAM_Mem_pinv_10

.SUBCKT RAM_Mem_pdriver_2
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [16]
Xbuf_inv1
+ A Z vdd gnd
+ RAM_Mem_pinv_10
.ENDS RAM_Mem_pdriver_2

.SUBCKT RAM_Mem_pand3
+ A B C Z vdd gnd
* INPUT : A 
* INPUT : B 
* INPUT : C 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 16
Xpand3_nand
+ A B C zb_int vdd gnd
+ RAM_Mem_pnand3_0
Xpand3_inv
+ zb_int Z vdd gnd
+ RAM_Mem_pdriver_2
.ENDS RAM_Mem_pand3

.SUBCKT RAM_Mem_pnand2_0
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Mpnand2_pmos1 vdd A Z vdd p m=1 w=1.6u l=0.4u pd=4.00u ps=4.00u as=1.60p ad=1.60p
Mpnand2_pmos2 Z B vdd vdd p m=1 w=1.6u l=0.4u pd=4.00u ps=4.00u as=1.60p ad=1.60p
Mpnand2_nmos1 Z B net1 gnd n m=1 w=1.6u l=0.4u pd=4.00u ps=4.00u as=1.60p ad=1.60p
Mpnand2_nmos2 net1 A gnd gnd n m=1 w=1.6u l=0.4u pd=4.00u ps=4.00u as=1.60p ad=1.60p
.ENDS RAM_Mem_pnand2_0

* spice ptx M{0} {1} p m=3 w=6.4u l=0.4u pd=13.60u ps=13.60u as=6.40p ad=6.40p

* spice ptx M{0} {1} n m=3 w=3.2u l=0.4u pd=7.20u ps=7.20u as=3.20p ad=3.20p

.SUBCKT RAM_Mem_pinv_3
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 12
Mpinv_pmos Z A vdd vdd p m=3 w=6.4u l=0.4u pd=13.60u ps=13.60u as=6.40p ad=6.40p
Mpinv_nmos Z A gnd gnd n m=3 w=3.2u l=0.4u pd=7.20u ps=7.20u as=3.20p ad=3.20p
.ENDS RAM_Mem_pinv_3

.SUBCKT RAM_Mem_pdriver
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [12]
Xbuf_inv1
+ A Z vdd gnd
+ RAM_Mem_pinv_3
.ENDS RAM_Mem_pdriver

.SUBCKT RAM_Mem_pand2
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 12
Xpand2_nand
+ A B zb_int vdd gnd
+ RAM_Mem_pnand2_0
Xpand2_inv
+ zb_int Z vdd gnd
+ RAM_Mem_pdriver
.ENDS RAM_Mem_pand2

.SUBCKT RAM_Mem_pdriver_3
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [8]
Xbuf_inv1
+ A Z vdd gnd
+ RAM_Mem_pinv_7
.ENDS RAM_Mem_pdriver_3

.SUBCKT RAM_Mem_pand3_0
+ A B C Z vdd gnd
* INPUT : A 
* INPUT : B 
* INPUT : C 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 8
Xpand3_nand
+ A B C zb_int vdd gnd
+ RAM_Mem_pnand3_0
Xpand3_inv
+ zb_int Z vdd gnd
+ RAM_Mem_pdriver_3
.ENDS RAM_Mem_pand3_0

.SUBCKT RAM_Mem_pdriver_4
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [1, 3]
Xbuf_inv1
+ A Zb1_int vdd gnd
+ RAM_Mem_pinv_5
Xbuf_inv2
+ Zb1_int Z vdd gnd
+ RAM_Mem_pinv_6
.ENDS RAM_Mem_pdriver_4

* spice ptx M{0} {1} p m=1 w=6.4u l=0.4u pd=13.60u ps=13.60u as=6.40p ad=6.40p

* spice ptx M{0} {1} n m=1 w=3.2u l=0.4u pd=7.20u ps=7.20u as=3.20p ad=3.20p

.SUBCKT RAM_Mem_pinv_2
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 4
Mpinv_pmos Z A vdd vdd p m=1 w=6.4u l=0.4u pd=13.60u ps=13.60u as=6.40p ad=6.40p
Mpinv_nmos Z A gnd gnd n m=1 w=3.2u l=0.4u pd=7.20u ps=7.20u as=3.20p ad=3.20p
.ENDS RAM_Mem_pinv_2
*********************** "dff" ******************************
* Positive edge-triggered FF
.SUBCKT dff D Q clk vdd gnd

* SPICE3 file created from dff.ext - technology: scmos

M1000 vdd clk a_24_24# vdd p w=8u l=0.4u
M1001 a_84_296# D vdd vdd p w=4u l=0.4u
M1002 a_104_24# clk a_84_296# vdd p w=4u l=0.4u
M1003 a_140_296# a_24_24# a_104_24# vdd p w=4u l=0.4u
M1004 vdd a_152_16# a_140_296# vdd p w=4u l=0.4u
M1005 a_152_16# a_104_24# vdd vdd p w=4u l=0.4u
M1006 a_260_296# a_152_16# vdd vdd p w=4u l=0.4u
M1007 a_280_24# a_24_24# a_260_296# vdd p w=4u l=0.4u
M1008 a_320_336# clk a_280_24# vdd p w=2u l=0.4u
M1009 vdd Q a_320_336# vdd p w=2u l=0.4u
M1010 gnd clk a_24_24# gnd n w=4u l=0.4u
M1011 Q a_280_24# vdd vdd p w=8u l=0.4u
M1012 a_84_24# D gnd gnd n w=2u l=0.4u
M1013 a_104_24# a_24_24# a_84_24# gnd n w=2u l=0.4u
M1014 a_140_24# clk a_104_24# gnd n w=2u l=0.4u
M1015 gnd a_152_16# a_140_24# gnd n w=2u l=0.4u
M1016 a_152_16# a_104_24# gnd gnd n w=2u l=0.4u
M1017 a_260_24# a_152_16# gnd gnd n w=2u l=0.4u
M1018 a_280_24# clk a_260_24# gnd n w=2u l=0.4u
M1019 a_320_24# a_24_24# a_280_24# gnd n w=2u l=0.4u
M1020 gnd Q a_320_24# gnd n w=2u l=0.4u
M1021 Q a_280_24# gnd gnd n w=4u l=0.4u

.ENDS

.SUBCKT RAM_Mem_pinv_1
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 2
Mpinv_pmos Z A vdd vdd p m=1 w=3.2u l=0.4u pd=7.20u ps=7.20u as=3.20p ad=3.20p
Mpinv_nmos Z A gnd gnd n m=1 w=1.6u l=0.4u pd=4.00u ps=4.00u as=1.60p ad=1.60p
.ENDS RAM_Mem_pinv_1

.SUBCKT RAM_Mem_dff_buf_0
+ D Q Qb clk vdd gnd
* INPUT : D 
* OUTPUT: Q 
* OUTPUT: Qb 
* INPUT : clk 
* POWER : vdd 
* GROUND: gnd 
* inv1: 2 inv2: 4
Xdff_buf_dff
+ D qint clk vdd gnd
+ dff
Xdff_buf_inv1
+ qint Qb vdd gnd
+ RAM_Mem_pinv_1
Xdff_buf_inv2
+ Qb Q vdd gnd
+ RAM_Mem_pinv_2
.ENDS RAM_Mem_dff_buf_0

.SUBCKT RAM_Mem_dff_buf_array
+ din_0 din_1 dout_0 dout_bar_0 dout_1 dout_bar_1 clk vdd gnd
* INPUT : din_0 
* INPUT : din_1 
* OUTPUT: dout_0 
* OUTPUT: dout_bar_0 
* OUTPUT: dout_1 
* OUTPUT: dout_bar_1 
* INPUT : clk 
* POWER : vdd 
* GROUND: gnd 
* rows: 2 cols: 1
* inv1: 2 inv2: 4
Xdff_r0_c0
+ din_0 dout_0 dout_bar_0 clk vdd gnd
+ RAM_Mem_dff_buf_0
Xdff_r1_c0
+ din_1 dout_1 dout_bar_1 clk vdd gnd
+ RAM_Mem_dff_buf_0
.ENDS RAM_Mem_dff_buf_array

.SUBCKT RAM_Mem_control_logic_rw
+ csb web clk rbl_bl s_en w_en p_en_bar wl_en clk_buf vdd gnd
* INPUT : csb 
* INPUT : web 
* INPUT : clk 
* INPUT : rbl_bl 
* OUTPUT: s_en 
* OUTPUT: w_en 
* OUTPUT: p_en_bar 
* OUTPUT: wl_en 
* OUTPUT: clk_buf 
* POWER : vdd 
* GROUND: gnd 
* num_rows: 16
* words_per_row: 1
* word_size 8
Xctrl_dffs
+ csb web cs_bar cs we_bar we clk_buf vdd gnd
+ RAM_Mem_dff_buf_array
Xclkbuf
+ clk clk_buf vdd gnd
+ RAM_Mem_pdriver_0
Xinv_clk_bar
+ clk_buf clk_bar vdd gnd
+ RAM_Mem_pinv_11
Xand2_gated_clk_bar
+ clk_bar cs gated_clk_bar vdd gnd
+ RAM_Mem_pand2
Xand2_gated_clk_buf
+ clk_buf cs gated_clk_buf vdd gnd
+ RAM_Mem_pand2
Xbuf_wl_en
+ gated_clk_bar wl_en vdd gnd
+ RAM_Mem_pdriver_1
Xrbl_bl_delay_inv
+ rbl_bl_delay rbl_bl_delay_bar vdd gnd
+ RAM_Mem_pinv_11
Xw_en_and
+ we rbl_bl_delay_bar gated_clk_bar w_en vdd gnd
+ RAM_Mem_pand3
Xbuf_s_en_and
+ rbl_bl_delay gated_clk_bar we_bar s_en vdd gnd
+ RAM_Mem_pand3_0
Xdelay_chain
+ rbl_bl rbl_bl_delay vdd gnd
+ RAM_Mem_delay_chain
Xnand_p_en_bar
+ gated_clk_buf rbl_bl_delay p_en_bar_unbuf vdd gnd
+ RAM_Mem_pnand2_1
Xbuf_p_en_bar
+ p_en_bar_unbuf p_en_bar vdd gnd
+ RAM_Mem_pdriver_4
.ENDS RAM_Mem_control_logic_rw

.SUBCKT RAM_Mem_data_dff
+ din_0 din_1 din_2 din_3 din_4 din_5 din_6 din_7 dout_0 dout_1 dout_2
+ dout_3 dout_4 dout_5 dout_6 dout_7 clk vdd gnd
* INPUT : din_0 
* INPUT : din_1 
* INPUT : din_2 
* INPUT : din_3 
* INPUT : din_4 
* INPUT : din_5 
* INPUT : din_6 
* INPUT : din_7 
* OUTPUT: dout_0 
* OUTPUT: dout_1 
* OUTPUT: dout_2 
* OUTPUT: dout_3 
* OUTPUT: dout_4 
* OUTPUT: dout_5 
* OUTPUT: dout_6 
* OUTPUT: dout_7 
* INPUT : clk 
* POWER : vdd 
* GROUND: gnd 
* rows: 1 cols: 8
Xdff_r0_c0
+ din_0 dout_0 clk vdd gnd
+ dff
Xdff_r0_c1
+ din_1 dout_1 clk vdd gnd
+ dff
Xdff_r0_c2
+ din_2 dout_2 clk vdd gnd
+ dff
Xdff_r0_c3
+ din_3 dout_3 clk vdd gnd
+ dff
Xdff_r0_c4
+ din_4 dout_4 clk vdd gnd
+ dff
Xdff_r0_c5
+ din_5 dout_5 clk vdd gnd
+ dff
Xdff_r0_c6
+ din_6 dout_6 clk vdd gnd
+ dff
Xdff_r0_c7
+ din_7 dout_7 clk vdd gnd
+ dff
.ENDS RAM_Mem_data_dff

.SUBCKT RAM_Mem_row_addr_dff
+ din_0 din_1 din_2 din_3 dout_0 dout_1 dout_2 dout_3 clk vdd gnd
* INPUT : din_0 
* INPUT : din_1 
* INPUT : din_2 
* INPUT : din_3 
* OUTPUT: dout_0 
* OUTPUT: dout_1 
* OUTPUT: dout_2 
* OUTPUT: dout_3 
* INPUT : clk 
* POWER : vdd 
* GROUND: gnd 
* rows: 4 cols: 1
Xdff_r0_c0
+ din_0 dout_0 clk vdd gnd
+ dff
Xdff_r1_c0
+ din_1 dout_1 clk vdd gnd
+ dff
Xdff_r2_c0
+ din_2 dout_2 clk vdd gnd
+ dff
Xdff_r3_c0
+ din_3 dout_3 clk vdd gnd
+ dff
.ENDS RAM_Mem_row_addr_dff

.SUBCKT RAM_Mem
+ din0[0] din0[1] din0[2] din0[3] din0[4] din0[5] din0[6] din0[7]
+ addr0[0] addr0[1] addr0[2] addr0[3] csb0 web0 clk0 dout0[0] dout0[1]
+ dout0[2] dout0[3] dout0[4] dout0[5] dout0[6] dout0[7] vdd gnd
* INPUT : din0[0] 
* INPUT : din0[1] 
* INPUT : din0[2] 
* INPUT : din0[3] 
* INPUT : din0[4] 
* INPUT : din0[5] 
* INPUT : din0[6] 
* INPUT : din0[7] 
* INPUT : addr0[0] 
* INPUT : addr0[1] 
* INPUT : addr0[2] 
* INPUT : addr0[3] 
* INPUT : csb0 
* INPUT : web0 
* INPUT : clk0 
* OUTPUT: dout0[0] 
* OUTPUT: dout0[1] 
* OUTPUT: dout0[2] 
* OUTPUT: dout0[3] 
* OUTPUT: dout0[4] 
* OUTPUT: dout0[5] 
* OUTPUT: dout0[6] 
* OUTPUT: dout0[7] 
* POWER : vdd 
* GROUND: gnd 
Xbank0
+ dout0[0] dout0[1] dout0[2] dout0[3] dout0[4] dout0[5] dout0[6]
+ dout0[7] rbl_bl0 bank_din0_0 bank_din0_1 bank_din0_2 bank_din0_3
+ bank_din0_4 bank_din0_5 bank_din0_6 bank_din0_7 a0_0 a0_1 a0_2 a0_3
+ s_en0 p_en_bar0 w_en0 wl_en0 vdd gnd
+ RAM_Mem_bank
Xcontrol0
+ csb0 web0 clk0 rbl_bl0 s_en0 w_en0 p_en_bar0 wl_en0 clk_buf0 vdd gnd
+ RAM_Mem_control_logic_rw
Xrow_address0
+ addr0[0] addr0[1] addr0[2] addr0[3] a0_0 a0_1 a0_2 a0_3 clk_buf0 vdd
+ gnd
+ RAM_Mem_row_addr_dff
Xdata_dff0
+ din0[0] din0[1] din0[2] din0[3] din0[4] din0[5] din0[6] din0[7]
+ bank_din0_0 bank_din0_1 bank_din0_2 bank_din0_3 bank_din0_4
+ bank_din0_5 bank_din0_6 bank_din0_7 clk_buf0 vdd gnd
+ RAM_Mem_data_dff
.ENDS RAM_Mem
