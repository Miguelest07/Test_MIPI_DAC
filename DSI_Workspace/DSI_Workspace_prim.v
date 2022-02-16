// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.0.240.2
// Netlist written on Thu Dec 16 11:35:10 2021
//
// Verilog Description of module DSI_Workspace
//

module DSI_Workspace (cs, DAC_1, DAC_2, DAC_3, DAC_4, DAC_5, DAC_6, 
            SerialP, SerialN, eoco, Button, clk, rst, VDAC_clk, 
            VDAC_sync, VDAC_blank, MIPI_clkP, MIPI_clkN) /* synthesis syn_module_defined=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(1[8:21])
    output cs;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(3[15:17])
    output [7:0]DAC_1;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(4[20:25])
    output [7:0]DAC_2;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(5[20:25])
    output [7:0]DAC_3;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(6[20:25])
    output [7:0]DAC_4;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(7[20:25])
    output [7:0]DAC_5;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(8[20:25])
    output [7:0]DAC_6;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(9[20:25])
    output SerialP;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(10[14:21])
    output SerialN;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(11[14:21])
    output eoco;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(12[14:18])
    input [1:0]Button;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(13[20:26])
    input clk;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(14[14:17])
    input rst;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(15[14:17])
    output VDAC_clk;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(16[14:22])
    output VDAC_sync;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(17[14:23])
    output VDAC_blank;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(18[14:24])
    output MIPI_clkP;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(19[14:23])
    output MIPI_clkN;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(20[14:23])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(14[14:17])
    wire VDAC_clk_c /* synthesis SET_AS_NETWORK=VDAC_clk_c, is_clock=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(16[14:22])
    wire clk_20MHz /* synthesis SET_AS_NETWORK=clk_20MHz, is_clock=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(40[7:16])
    
    wire GND_net, VCC_net, cs_c, DAC_5_c, n2808, n2809, n2810, 
        n2811, n2812, n2813, DAC_6_c, n2815, n2816, n2817, n2818, 
        n2819, n2820, DAC_3_c_3, DAC_3_c_1, DAC_4_c_1;
    wire [12:0]wave;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(25[12:16])
    
    wire SerialP_c, SerialN_c, eoco_c, Button_c_1, Button_c_0, MIPI_clkP_c, 
        MIPI_clkN_c;
    wire [1:0]levelP;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(32[13:19])
    wire [1:0]stateP;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(33[13:19])
    wire [1:0]levelN;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(34[13:19])
    wire [1:0]stateN;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(35[13:19])
    
    wire State_w, Start_w;
    wire [2:0]d;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(43[12:13])
    
    wire cs_N_4;
    wire [11:0]idle;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(26[12:16])
    
    wire rst_d;
    wire [9:0]sss;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(34[11:14])
    
    wire n7376, n9284, clk_20MHz_enable_17, n1859, n10089, n7378, 
        n6433, n6575, n9206, n9245, n10088, rst_d_N_267_c;
    wire [1:0]lvld_adj_439;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(23[11:15])
    wire [12:0]wave_adj_441;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(25[12:16])
    wire [11:0]idle_adj_442;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(26[12:16])
    wire [24:0]idle_start_adj_443;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(27[12:22])
    
    wire init;
    wire [9:0]sss_adj_444;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(34[11:14])
    
    wire n36, n10573, n4005, n8396, n8395, n10073, n8331, n6503, 
        n8394, n768, n10071, n924, n936, n939, n10082, n1847, 
        n10069, n9839, n3549, n10079, n1755, n8393, n34, n1722, 
        n1792, n6571, n10077, VDAC_clk_c_enable_42, VDAC_clk_c_enable_122, 
        VDAC_clk_c_enable_52, n9825, VDAC_clk_c_enable_140, n9824, n9823, 
        n9822, n10151;
    wire [1:0]RGB_1__N_6_adj_602;
    
    wire n3851, n30, n29, VDAC_clk_c_enable_30, VDAC_clk_c_enable_43, 
        rst_d_adj_432, n8327, n1000, clk_20MHz_enable_5, n9815, n6523, 
        n19;
    wire [6:0]pars_adj_633;   // c:/users/roman perez/desktop/lattice_projects/test/serial_protocol.v(18[11:15])
    
    wire n10145, tx_N_304;
    wire [7:0]tx_N_297_adj_637;
    
    wire tx_N_296, tx_N_295, tx_N_291, VDAC_clk_c_enable_138, n4, 
        n8501, n4451, n47, n10132, n33, n10131, n32, n9798, 
        n9797, n9796, n9795, n9794, n9793, n9787, n10435, n9786, 
        VDAC_clk_c_enable_147, n10124, n9785, n9784, n9296, n9783, 
        n9782, n10114, n10113, n10111, n10074, n9553, n10109, 
        n10108, n10107, n20, n18, n10105, n10103, n10101, n10100, 
        VDAC_clk_c_enable_58, n10097, n8392, n8329, n9319, n8328, 
        n10095, n9312, n8330, n10577, n10092, n16;
    
    VHI i2 (.Z(VCC_net));
    Serial_Protocol Serial_busP (.clk_20MHz(clk_20MHz), .clk_20MHz_enable_17(clk_20MHz_enable_17), 
            .eoco_c(eoco_c), .SerialP_c(SerialP_c), .clk_20MHz_enable_5(clk_20MHz_enable_5), 
            .rst_d(rst_d_adj_432), .Start_w(Start_w), .rst_d_N_267_c(rst_d_N_267_c), 
            .n9206(n9206), .n4005(n4005), .State_w(State_w), .GND_net(GND_net), 
            .tx_N_295(tx_N_295), .tx_N_291(tx_N_291)) /* synthesis syn_module_defined=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(77[17] 85[2])
    DSI_Protocol DSI_control_P (.wave({Open_0, Open_1, Open_2, wave[9], 
            Open_3, Open_4, Open_5, Open_6, wave[4], Open_7, wave[2], 
            Open_8, Open_9}), .VDAC_clk_c(VDAC_clk_c), .n10113(n10113), 
            .n10114(n10114), .GND_net(GND_net), .\wave[3] (wave[3]), .\sss[0] (sss[0]), 
            .MIPI_clkP_c(MIPI_clkP_c), .\sss[1] (sss[1]), .n10577(n10577), 
            .\wave[5] (wave[5]), .rst_d_N_267_c(rst_d_N_267_c), .init(init), 
            .n10151(n10151), .\wave[6] (wave[6]), .n924(n924), .n1755(n1755), 
            .n10100(n10100), .n9798(n9798), .n1722(n1722), .\idle[11] (idle[11]), 
            .n9815(n9815), .n9319(n9319), .n7376(n7376), .\wave[0] (wave[0]), 
            .Start_w(Start_w), .State_w(State_w), .n10132(n10132), .n4451(n4451), 
            .stateP({stateP}), .levelP({levelP}), .DAC_3_c_3(DAC_3_c_3), 
            .n10573(n10573), .DAC_3_c_1(DAC_3_c_1), .rst_d(rst_d), .n3851(n3851), 
            .VDAC_clk_c_enable_52(VDAC_clk_c_enable_52), .\RGB_1__N_6[0] (RGB_1__N_6_adj_602[0]), 
            .SerialP_c(SerialP_c), .VDAC_clk_c_enable_58(VDAC_clk_c_enable_58), 
            .n9553(n9553), .VDAC_clk_c_enable_140(VDAC_clk_c_enable_140), 
            .VDAC_clk_c_enable_122(VDAC_clk_c_enable_122), .n36(n36), .VDAC_clk_c_enable_30(VDAC_clk_c_enable_30), 
            .\wave[1] (wave[1]), .\wave[7] (wave[7]), .\wave[8] (wave[8]), 
            .n10095(n10095), .n10435(n10435), .\idle[8] (idle_adj_442[8]), 
            .\idle[10] (idle_adj_442[10]), .\idle[1] (idle_adj_442[1]), 
            .\idle[2] (idle_adj_442[2]), .n10108(n10108), .n8501(n8501), 
            .n936(n936), .n1792(n1792), .n10071(n10071), .n10089(n10089), 
            .n10105(n10105), .n10109(n10109), .Button_c_0(Button_c_0), 
            .n10101(n10101), .n10111(n10111), .n9782(n9782), .n9284(n9284), 
            .eoco_c(eoco_c), .n6523(n6523), .n10073(n10073), .n10069(n10069), 
            .\idle[11]_adj_1 (idle_adj_442[11]), .n6503(n6503), .n10088(n10088), 
            .n10103(n10103), .n9245(n9245), .n1000(n1000), .n6575(n6575), 
            .n10097(n10097), .n4(n4), .n939(n939), .n6433(n6433), .n10092(n10092), 
            .n10074(n10074), .n10124(n10124), .n10079(n10079), .n10145(n10145), 
            .VDAC_clk_c_enable_147(VDAC_clk_c_enable_147), .n1847(n1847), 
            .n9785(n9785), .n9786(n9786), .n9823(n9823), .n9824(n9824), 
            .n9296(n9296), .n16(n16), .n9312(n9312), .n10082(n10082), 
            .n9839(n9839), .n9825(n9825), .n9787(n9787), .VDAC_clk_c_enable_43(VDAC_clk_c_enable_43), 
            .n10107(n10107), .VDAC_clk_c_enable_138(VDAC_clk_c_enable_138), 
            .n7378(n7378), .\idle_start[0] (idle_start_adj_443[0]), .\idle_start[1] (idle_start_adj_443[1]), 
            .\idle_start[5] (idle_start_adj_443[5]), .\idle_start[21] (idle_start_adj_443[21]), 
            .n29(n29), .\idle_start[3] (idle_start_adj_443[3]), .\idle_start[8] (idle_start_adj_443[8]), 
            .n34(n34), .\idle_start[4] (idle_start_adj_443[4]), .\idle_start[22] (idle_start_adj_443[22]), 
            .\idle_start[15] (idle_start_adj_443[15]), .\idle_start[11] (idle_start_adj_443[11]), 
            .n30(n30), .\idle_start[17] (idle_start_adj_443[17]), .\idle_start[16] (idle_start_adj_443[16]), 
            .\idle_start[14] (idle_start_adj_443[14]), .\idle_start[2] (idle_start_adj_443[2]), 
            .\idle_start[18] (idle_start_adj_443[18]), .\idle_start[12] (idle_start_adj_443[12]), 
            .\idle_start[23] (idle_start_adj_443[23]), .n10131(n10131), 
            .n3549(n3549), .n6571(n6571), .n10077(n10077), .n47(n47), 
            .n32(n32), .\lvld[1] (lvld_adj_439[1]), .n33(n33), .VDAC_clk_c_enable_42(VDAC_clk_c_enable_42)) /* synthesis syn_module_defined=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(47[14] 60[2])
    FD1S3AX csd_11 (.D(cs_N_4), .CK(clk_c), .Q(cs_c)) /* synthesis lse_init_val=0 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(132[7] 137[4])
    defparam csd_11.GSR = "ENABLED";
    PFUMX i8950 (.BLUT(n9797), .ALUT(n9793), .C0(n10132), .Z(n9798));
    PFUMX i8948 (.BLUT(n9795), .ALUT(n9794), .C0(n10109), .Z(n9796));
    CCU2D sub_1399_add_2_5 (.A0(wave_adj_441[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(wave_adj_441[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8328), .COUT(n8329));
    defparam sub_1399_add_2_5.INIT0 = 16'h5555;
    defparam sub_1399_add_2_5.INIT1 = 16'h5555;
    defparam sub_1399_add_2_5.INJECT1_0 = "NO";
    defparam sub_1399_add_2_5.INJECT1_1 = "NO";
    IB rst_d_N_267_pad (.I(rst), .O(rst_d_N_267_c));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(15[14:17])
    IB clk_pad (.I(clk), .O(clk_c));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(14[14:17])
    IB Button_pad_0 (.I(Button[0]), .O(Button_c_0));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(13[20:26])
    IB Button_pad_1 (.I(Button[1]), .O(Button_c_1));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(13[20:26])
    OB MIPI_clkN_pad (.I(MIPI_clkN_c), .O(MIPI_clkN));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(20[14:23])
    OB MIPI_clkP_pad (.I(MIPI_clkP_c), .O(MIPI_clkP));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(19[14:23])
    OB VDAC_blank_pad (.I(VCC_net), .O(VDAC_blank));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(18[14:24])
    OB VDAC_sync_pad (.I(GND_net), .O(VDAC_sync));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(17[14:23])
    OB VDAC_clk_pad (.I(VDAC_clk_c), .O(VDAC_clk));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(16[14:22])
    OB eoco_pad (.I(eoco_c), .O(eoco));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(12[14:18])
    OB SerialN_pad (.I(SerialN_c), .O(SerialN));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(11[14:21])
    OB SerialP_pad (.I(SerialP_c), .O(SerialP));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(10[14:21])
    OB DAC_6_pad_0 (.I(n2820), .O(DAC_6[0]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(9[20:25])
    OB DAC_6_pad_1 (.I(n2819), .O(DAC_6[1]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(9[20:25])
    OB DAC_6_pad_2 (.I(n2818), .O(DAC_6[2]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(9[20:25])
    OB DAC_6_pad_3 (.I(n2817), .O(DAC_6[3]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(9[20:25])
    OB DAC_6_pad_4 (.I(n2816), .O(DAC_6[4]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(9[20:25])
    OB DAC_6_pad_5 (.I(n2815), .O(DAC_6[5]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(9[20:25])
    OB DAC_6_pad_6 (.I(DAC_6_c), .O(DAC_6[6]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(9[20:25])
    OB DAC_6_pad_7 (.I(DAC_6_c), .O(DAC_6[7]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(9[20:25])
    OB DAC_5_pad_0 (.I(n2813), .O(DAC_5[0]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(8[20:25])
    OB DAC_5_pad_1 (.I(n2812), .O(DAC_5[1]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(8[20:25])
    OB DAC_5_pad_2 (.I(n2811), .O(DAC_5[2]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(8[20:25])
    OB DAC_5_pad_3 (.I(n2810), .O(DAC_5[3]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(8[20:25])
    LUT4 i7657_2_lut (.A(d[1]), .B(d[0]), .Z(n19)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(134[10:18])
    defparam i7657_2_lut.init = 16'h6666;
    OB DAC_5_pad_4 (.I(n2809), .O(DAC_5[4]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(8[20:25])
    OB DAC_5_pad_5 (.I(n2808), .O(DAC_5[5]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(8[20:25])
    OB DAC_5_pad_6 (.I(DAC_5_c), .O(DAC_5[6]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(8[20:25])
    OB DAC_5_pad_7 (.I(DAC_5_c), .O(DAC_5[7]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(8[20:25])
    OB DAC_1_pad_0 (.I(n2813), .O(DAC_1[0]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(4[20:25])
    OB DAC_4_pad_0 (.I(MIPI_clkN_c), .O(DAC_4[0]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(7[20:25])
    OB DAC_4_pad_1 (.I(DAC_4_c_1), .O(DAC_4[1]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(7[20:25])
    OB DAC_4_pad_2 (.I(DAC_4_c_1), .O(DAC_4[2]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(7[20:25])
    OB DAC_4_pad_3 (.I(MIPI_clkN_c), .O(DAC_4[3]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(7[20:25])
    OB DAC_4_pad_4 (.I(DAC_4_c_1), .O(DAC_4[4]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(7[20:25])
    OB DAC_4_pad_5 (.I(MIPI_clkN_c), .O(DAC_4[5]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(7[20:25])
    OB DAC_4_pad_6 (.I(MIPI_clkN_c), .O(DAC_4[6]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(7[20:25])
    OB DAC_4_pad_7 (.I(MIPI_clkN_c), .O(DAC_4[7]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(7[20:25])
    OB DAC_3_pad_0 (.I(DAC_3_c_3), .O(DAC_3[0]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(6[20:25])
    OB DAC_3_pad_1 (.I(DAC_3_c_1), .O(DAC_3[1]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(6[20:25])
    OB DAC_3_pad_2 (.I(DAC_3_c_1), .O(DAC_3[2]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(6[20:25])
    FD1S3AX d_1712__i0 (.D(n20), .CK(clk_c), .Q(d[0]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(134[10:18])
    defparam d_1712__i0.GSR = "ENABLED";
    OB DAC_3_pad_3 (.I(DAC_3_c_3), .O(DAC_3[3]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(6[20:25])
    OB DAC_3_pad_4 (.I(DAC_3_c_1), .O(DAC_3[4]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(6[20:25])
    OB DAC_3_pad_5 (.I(DAC_3_c_3), .O(DAC_3[5]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(6[20:25])
    OB DAC_3_pad_6 (.I(GND_net), .O(DAC_3[6]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(6[20:25])
    OB DAC_3_pad_7 (.I(DAC_3_c_3), .O(DAC_3[7]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(6[20:25])
    OB DAC_2_pad_0 (.I(n2820), .O(DAC_2[0]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(5[20:25])
    OB DAC_2_pad_1 (.I(n2819), .O(DAC_2[1]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(5[20:25])
    OB DAC_2_pad_2 (.I(n2818), .O(DAC_2[2]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(5[20:25])
    OB DAC_2_pad_3 (.I(n2817), .O(DAC_2[3]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(5[20:25])
    OB DAC_2_pad_4 (.I(n2816), .O(DAC_2[4]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(5[20:25])
    OB DAC_2_pad_5 (.I(n2815), .O(DAC_2[5]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(5[20:25])
    OB DAC_2_pad_6 (.I(DAC_6_c), .O(DAC_2[6]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(5[20:25])
    FD1S3AX d_1712__i2 (.D(n18), .CK(clk_c), .Q(d[2]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(134[10:18])
    defparam d_1712__i2.GSR = "ENABLED";
    ROM128X1A mux_46_Mux_1 (.AD0(pars_adj_633[0]), .AD1(tx_N_297_adj_637[1]), 
            .AD2(tx_N_297_adj_637[2]), .AD3(tx_N_297_adj_637[3]), .AD4(tx_N_297_adj_637[4]), 
            .AD5(tx_N_297_adj_637[5]), .AD6(tx_N_297_adj_637[6]), .DO0(tx_N_304)) /* synthesis initstate=0x0000000202A811550150A82AAAA040A7 */ ;
    defparam mux_46_Mux_1.initval = 128'h0000000202A811550150A82AAAA040A7;
    FD1S3AX d_1712__i1 (.D(n19), .CK(clk_c), .Q(d[1]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(134[10:18])
    defparam d_1712__i1.GSR = "ENABLED";
    OB DAC_1_pad_1 (.I(n2812), .O(DAC_1[1]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(4[20:25])
    OB DAC_1_pad_2 (.I(n2811), .O(DAC_1[2]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(4[20:25])
    OB DAC_1_pad_3 (.I(n2810), .O(DAC_1[3]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(4[20:25])
    OB DAC_1_pad_4 (.I(n2809), .O(DAC_1[4]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(4[20:25])
    OB DAC_1_pad_5 (.I(n2808), .O(DAC_1[5]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(4[20:25])
    OB DAC_1_pad_6 (.I(DAC_5_c), .O(DAC_1[6]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(4[20:25])
    ROM128X1A mux_46_Mux_0 (.AD0(pars_adj_633[0]), .AD1(tx_N_297_adj_637[1]), 
            .AD2(tx_N_297_adj_637[2]), .AD3(tx_N_297_adj_637[3]), .AD4(tx_N_297_adj_637[4]), 
            .AD5(tx_N_297_adj_637[5]), .AD6(tx_N_297_adj_637[6]), .DO0(tx_N_296)) /* synthesis initstate=0x000000020154115500A2282AAAA802A7 */ ;
    defparam mux_46_Mux_0.initval = 128'h000000020154115500A2282AAAA802A7;
    OB DAC_2_pad_7 (.I(DAC_6_c), .O(DAC_2[7]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(5[20:25])
    OB DAC_1_pad_7 (.I(DAC_5_c), .O(DAC_1[7]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(4[20:25])
    PFUMX i8943 (.BLUT(n9786), .ALUT(n9782), .C0(n10101), .Z(n9787));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    PFUMX i8941 (.BLUT(n9784), .ALUT(n9783), .C0(n10082), .Z(n9785));
    LUT4 cs_I_0_3_lut_4_lut (.A(d[1]), .B(d[0]), .C(d[2]), .D(cs_c), 
         .Z(cs_N_4)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;
    defparam cs_I_0_3_lut_4_lut.init = 16'h7f80;
    LUT4 i7664_2_lut_3_lut (.A(d[1]), .B(d[0]), .C(d[2]), .Z(n18)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i7664_2_lut_3_lut.init = 16'h7878;
    OB cs_pad (.I(cs_c), .O(cs));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(3[15:17])
    LUT4 n768_bdd_4_lut_9023 (.A(n10095), .B(n10100), .C(n10114), .D(n10113), 
         .Z(n9822)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A !(((D)+!C)+!B)) */ ;
    defparam n768_bdd_4_lut_9023.init = 16'haac0;
    VLO i1 (.Z(GND_net));
    GSR GSR_INST (.GSR(VCC_net));
    CCU2D sub_1398_add_2_11 (.A0(wave[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8396), .S1(n1847));
    defparam sub_1398_add_2_11.INIT0 = 16'h5aaa;
    defparam sub_1398_add_2_11.INIT1 = 16'h0000;
    defparam sub_1398_add_2_11.INJECT1_0 = "NO";
    defparam sub_1398_add_2_11.INJECT1_1 = "NO";
    LUT4 idle_11__bdd_3_lut (.A(idle[11]), .B(n6523), .C(n10100), .Z(n9783)) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;
    defparam idle_11__bdd_3_lut.init = 16'h0e0e;
    CCU2D sub_1398_add_2_9 (.A0(wave[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(wave[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8395), .COUT(n8396));
    defparam sub_1398_add_2_9.INIT0 = 16'h5aaa;
    defparam sub_1398_add_2_9.INIT1 = 16'h5aaa;
    defparam sub_1398_add_2_9.INJECT1_0 = "NO";
    defparam sub_1398_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_1398_add_2_7 (.A0(wave[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(wave[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8394), .COUT(n8395));
    defparam sub_1398_add_2_7.INIT0 = 16'h5555;
    defparam sub_1398_add_2_7.INIT1 = 16'h5555;
    defparam sub_1398_add_2_7.INJECT1_0 = "NO";
    defparam sub_1398_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_1398_add_2_5 (.A0(wave[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(wave[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8393), .COUT(n8394));
    defparam sub_1398_add_2_5.INIT0 = 16'h5555;
    defparam sub_1398_add_2_5.INIT1 = 16'h5555;
    defparam sub_1398_add_2_5.INJECT1_0 = "NO";
    defparam sub_1398_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_1398_add_2_3 (.A0(wave[1]), .B0(sss[1]), .C0(GND_net), .D0(GND_net), 
          .A1(wave[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8392), 
          .COUT(n8393));
    defparam sub_1398_add_2_3.INIT0 = 16'h5999;
    defparam sub_1398_add_2_3.INIT1 = 16'h5aaa;
    defparam sub_1398_add_2_3.INJECT1_0 = "NO";
    defparam sub_1398_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_1398_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(wave[0]), .B1(sss[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n8392));
    defparam sub_1398_add_2_1.INIT0 = 16'h0000;
    defparam sub_1398_add_2_1.INIT1 = 16'h5999;
    defparam sub_1398_add_2_1.INJECT1_0 = "NO";
    defparam sub_1398_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_1399_add_2_9 (.A0(wave_adj_441[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(wave_adj_441[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8330), .COUT(n8331));
    defparam sub_1399_add_2_9.INIT0 = 16'h5aaa;
    defparam sub_1399_add_2_9.INIT1 = 16'h5aaa;
    defparam sub_1399_add_2_9.INJECT1_0 = "NO";
    defparam sub_1399_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_1399_add_2_3 (.A0(wave_adj_441[1]), .B0(sss_adj_444[1]), .C0(GND_net), 
          .D0(GND_net), .A1(wave_adj_441[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8327), .COUT(n8328));
    defparam sub_1399_add_2_3.INIT0 = 16'h5999;
    defparam sub_1399_add_2_3.INIT1 = 16'h5aaa;
    defparam sub_1399_add_2_3.INJECT1_0 = "NO";
    defparam sub_1399_add_2_3.INJECT1_1 = "NO";
    LUT4 idle_11__bdd_4_lut_9048 (.A(n10095), .B(n10114), .C(n10113), 
         .D(n10100), .Z(n9784)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A !(B (C+!(D))+!B (C)))) */ ;
    defparam idle_11__bdd_4_lut_9048.init = 16'h505c;
    CCU2D sub_1399_add_2_11 (.A0(wave_adj_441[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8331), .S1(n1859));
    defparam sub_1399_add_2_11.INIT0 = 16'h5aaa;
    defparam sub_1399_add_2_11.INIT1 = 16'h0000;
    defparam sub_1399_add_2_11.INJECT1_0 = "NO";
    defparam sub_1399_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_1399_add_2_7 (.A0(wave_adj_441[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(wave_adj_441[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8329), .COUT(n8330));
    defparam sub_1399_add_2_7.INIT0 = 16'h5555;
    defparam sub_1399_add_2_7.INIT1 = 16'h5555;
    defparam sub_1399_add_2_7.INJECT1_0 = "NO";
    defparam sub_1399_add_2_7.INJECT1_1 = "NO";
    LUT4 i7655_1_lut (.A(d[0]), .Z(n20)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(134[10:18])
    defparam i7655_1_lut.init = 16'h5555;
    PFUMX i8968 (.BLUT(n9824), .ALUT(n10111), .C0(n10101), .Z(n9825));
    CCU2D sub_1399_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(wave_adj_441[0]), .B1(sss_adj_444[0]), .C1(GND_net), 
          .D1(GND_net), .COUT(n8327));
    defparam sub_1399_add_2_1.INIT0 = 16'h0000;
    defparam sub_1399_add_2_1.INIT1 = 16'h5999;
    defparam sub_1399_add_2_1.INJECT1_0 = "NO";
    defparam sub_1399_add_2_1.INJECT1_1 = "NO";
    PFUMX i8966 (.BLUT(n9822), .ALUT(n10100), .C0(n10082), .Z(n9823));
    LUT4 n6487_bdd_2_lut_8985 (.A(n6433), .B(n924), .Z(n9795)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n6487_bdd_2_lut_8985.init = 16'h2222;
    LUT4 n6487_bdd_4_lut_8960 (.A(n10089), .B(n10105), .C(n768), .D(n924), 
         .Z(n9794)) /* synthesis lut_function=(!(A (B+(C))+!A (B (D)+!B (C)))) */ ;
    defparam n6487_bdd_4_lut_8960.init = 16'h0347;
    PLL_block PLL (.clk_c(clk_c), .clk_20MHz(clk_20MHz), .VDAC_clk_c(VDAC_clk_c), 
            .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(126[11] 130[2])
    DSI_Slave_U2 DSI_BUS1N (.n2817(n2817), .VDAC_clk_c(VDAC_clk_c), .DAC_6_c(DAC_6_c), 
            .n2815(n2815), .n2816(n2816), .n2818(n2818), .n2819(n2819), 
            .n2820(n2820), .levelN({levelN}), .stateN({stateN})) /* synthesis syn_module_defined=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(104[11] 110[2])
    DSI_Protocol_U1 DSI_control_N (.GND_net(GND_net), .\idle_start[14] (idle_start_adj_443[14]), 
            .\idle_start[2] (idle_start_adj_443[2]), .VDAC_clk_c(VDAC_clk_c), 
            .VDAC_clk_c_enable_147(VDAC_clk_c_enable_147), .\wave[9] (wave_adj_441[9]), 
            .\idle_start[3] (idle_start_adj_443[3]), .rst_d(rst_d), .rst_d_N_267_c(rst_d_N_267_c), 
            .\idle_start[11] (idle_start_adj_443[11]), .\idle_start[12] (idle_start_adj_443[12]), 
            .\idle_start[4] (idle_start_adj_443[4]), .n10131(n10131), .n10097(n10097), 
            .\wave[6] (wave_adj_441[6]), .\wave[5] (wave_adj_441[5]), .\wave[4] (wave_adj_441[4]), 
            .stateN({stateN}), .VDAC_clk_c_enable_30(VDAC_clk_c_enable_30), 
            .n4451(n4451), .n10435(n10435), .n9245(n9245), .\idle_start[5] (idle_start_adj_443[5]), 
            .init(init), .VDAC_clk_c_enable_122(VDAC_clk_c_enable_122), 
            .n10573(n10573), .\sss[0] (sss_adj_444[0]), .VDAC_clk_c_enable_43(VDAC_clk_c_enable_43), 
            .MIPI_clkN_c(MIPI_clkN_c), .VDAC_clk_c_enable_42(VDAC_clk_c_enable_42), 
            .\lvld[1] (lvld_adj_439[1]), .\sss[1] (sss_adj_444[1]), .n10577(n10577), 
            .\idle_start[8] (idle_start_adj_443[8]), .levelN({levelN}), 
            .VDAC_clk_c_enable_52(VDAC_clk_c_enable_52), .RGB_1__N_6({Open_10, 
            RGB_1__N_6_adj_602[0]}), .n9793(n9793), .DAC_4_c_1(DAC_4_c_1), 
            .VDAC_clk_c_enable_58(VDAC_clk_c_enable_58), .\idle_start[17] (idle_start_adj_443[17]), 
            .\idle_start[18] (idle_start_adj_443[18]), .\wave[7] (wave_adj_441[7]), 
            .\wave[8] (wave_adj_441[8]), .\idle_start[1] (idle_start_adj_443[1]), 
            .\idle_start[0] (idle_start_adj_443[0]), .n33(n33), .n10108(n10108), 
            .idle({idle_adj_442[11], Open_11, Open_12, Open_13, Open_14, 
            Open_15, Open_16, Open_17, Open_18, Open_19, Open_20, 
            Open_21}), .\idle_start[22] (idle_start_adj_443[22]), .\idle_start[23] (idle_start_adj_443[23]), 
            .\wave[1] (wave_adj_441[1]), .\wave[2] (wave_adj_441[2]), .\idle_start[15] (idle_start_adj_443[15]), 
            .\wave[3] (wave_adj_441[3]), .\idle_start[16] (idle_start_adj_443[16]), 
            .n10105(n10105), .n10089(n10089), .n924(n924), .VDAC_clk_c_enable_138(VDAC_clk_c_enable_138), 
            .n768(n768), .n10109(n10109), .\idle[1] (idle_adj_442[1]), 
            .n7378(n7378), .\idle[2] (idle_adj_442[2]), .n1792(n1792), 
            .n1722(n1722), .n10074(n10074), .\idle[8] (idle_adj_442[8]), 
            .n16(n16), .\idle[10] (idle_adj_442[10]), .n6433(n6433), .n9312(n9312), 
            .n6503(n6503), .n9296(n9296), .VDAC_clk_c_enable_140(VDAC_clk_c_enable_140), 
            .n7376(n7376), .n9319(n9319), .n939(n939), .n10077(n10077), 
            .n6575(n6575), .n10151(n10151), .n9553(n9553), .n10071(n10071), 
            .SerialN_c(SerialN_c), .n1000(n1000), .n6571(n6571), .\wave[0] (wave_adj_441[0]), 
            .n10132(n10132), .n9796(n9796), .n10073(n10073), .n9797(n9797), 
            .n8501(n8501), .n10124(n10124), .\idle_start[21] (idle_start_adj_443[21]), 
            .n10092(n10092), .n36(n36), .n3549(n3549), .Button_c_0(Button_c_0), 
            .n10069(n10069), .n936(n936), .Button_c_1(Button_c_1), .n9284(n9284), 
            .n10107(n10107), .n4(n4), .n10145(n10145), .n3851(n3851), 
            .n32(n32), .n1859(n1859), .n9839(n9839), .n10088(n10088), 
            .n10079(n10079), .n1755(n1755), .n9815(n9815), .n29(n29), 
            .n34(n34), .n30(n30), .n47(n47), .n10103(n10103)) /* synthesis syn_module_defined=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(62[14] 75[2])
    DSI_Slave DSI_BUS1P (.n2813(n2813), .VDAC_clk_c(VDAC_clk_c), .stateP({stateP}), 
            .DAC_5_c(DAC_5_c), .n2808(n2808), .n2809(n2809), .n2811(n2811), 
            .n2812(n2812), .n2810(n2810), .levelP({levelP})) /* synthesis syn_module_defined=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(97[11] 103[2])
    Serial_Protocol_U0 Serial_busN (.rst_d(rst_d_adj_432), .clk_20MHz(clk_20MHz), 
            .rst_d_N_267_c(rst_d_N_267_c), .SerialN_c(SerialN_c), .clk_20MHz_enable_5(clk_20MHz_enable_5), 
            .tx_N_291(tx_N_291), .clk_20MHz_enable_17(clk_20MHz_enable_17), 
            .n4005(n4005), .\pars[0] (pars_adj_633[0]), .\tx_N_297[5] (tx_N_297_adj_637[5]), 
            .GND_net(GND_net), .\tx_N_297[4] (tx_N_297_adj_637[4]), .tx_N_296(tx_N_296), 
            .tx_N_304(tx_N_304), .State_w(State_w), .tx_N_295(tx_N_295), 
            .n9206(n9206), .\tx_N_297[3] (tx_N_297_adj_637[3]), .\tx_N_297[1] (tx_N_297_adj_637[1]), 
            .\tx_N_297[2] (tx_N_297_adj_637[2]), .\tx_N_297[6] (tx_N_297_adj_637[6])) /* synthesis syn_module_defined=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(87[17] 95[2])
    LUT4 m1_lut (.Z(n10577)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    TSALL TSALL_INST (.TSALL(GND_net));
    
endmodule
//
// Verilog Description of module Serial_Protocol
//

module Serial_Protocol (clk_20MHz, clk_20MHz_enable_17, eoco_c, SerialP_c, 
            clk_20MHz_enable_5, rst_d, Start_w, rst_d_N_267_c, n9206, 
            n4005, State_w, GND_net, tx_N_295, tx_N_291) /* synthesis syn_module_defined=1 */ ;
    input clk_20MHz;
    output clk_20MHz_enable_17;
    output eoco_c;
    output SerialP_c;
    output clk_20MHz_enable_5;
    input rst_d;
    input Start_w;
    input rst_d_N_267_c;
    input n9206;
    output n4005;
    input State_w;
    input GND_net;
    input tx_N_295;
    output tx_N_291;
    
    wire clk_20MHz /* synthesis SET_AS_NETWORK=clk_20MHz, is_clock=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(40[7:16])
    wire [6:0]pars;   // c:/users/roman perez/desktop/lattice_projects/test/serial_protocol.v(18[11:15])
    
    wire n3990;
    wire [6:0]n33;
    
    wire clk_20MHz_enable_2, eoc_N_314, tx_N_291_c, n10155, n10106, 
        n10159, n10158, n3357, n10571, n15, n9454, n10142, n4, 
        n10156, n10087;
    wire [7:0]tx_N_297;
    
    wire n10160, n63, n9493, n63_adj_415, n126, n9494, n15_adj_416, 
        n31, n9471, n9303, n10143, n125, n9467, n10144, n8696, 
        n10120, n93, n31_adj_417, tx_N_306, n10102, n8556, n94, 
        n10157, n8386, n8385, n8384, n10117;
    
    FD1P3IX pars_1717__i5 (.D(n33[5]), .SP(clk_20MHz_enable_17), .CD(n3990), 
            .CK(clk_20MHz), .Q(pars[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/serial_protocol.v(55[12:18])
    defparam pars_1717__i5.GSR = "ENABLED";
    FD1P3AX eocd_43 (.D(eoc_N_314), .SP(clk_20MHz_enable_2), .CK(clk_20MHz), 
            .Q(eoco_c)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=85 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/serial_protocol.v(24[7] 71[4])
    defparam eocd_43.GSR = "ENABLED";
    FD1P3IX pars_1717__i3 (.D(n33[3]), .SP(clk_20MHz_enable_17), .CD(n3990), 
            .CK(clk_20MHz), .Q(pars[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/serial_protocol.v(55[12:18])
    defparam pars_1717__i3.GSR = "ENABLED";
    FD1P3AY o_42 (.D(tx_N_291_c), .SP(clk_20MHz_enable_5), .CK(clk_20MHz), 
            .Q(SerialP_c)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=85 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/serial_protocol.v(24[7] 71[4])
    defparam o_42.GSR = "ENABLED";
    LUT4 i2_3_lut_4_lut_else_4_lut (.A(pars[0]), .B(pars[2]), .C(pars[1]), 
         .D(pars[3]), .Z(n10155)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i2_3_lut_4_lut_else_4_lut.init = 16'h1000;
    FD1P3IX pars_1717__i6 (.D(n33[6]), .SP(clk_20MHz_enable_17), .CD(n3990), 
            .CK(clk_20MHz), .Q(pars[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/serial_protocol.v(55[12:18])
    defparam pars_1717__i6.GSR = "ENABLED";
    FD1P3IX pars_1717__i4 (.D(n33[4]), .SP(clk_20MHz_enable_17), .CD(n3990), 
            .CK(clk_20MHz), .Q(pars[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/serial_protocol.v(55[12:18])
    defparam pars_1717__i4.GSR = "ENABLED";
    FD1P3IX pars_1717__i1 (.D(n33[1]), .SP(clk_20MHz_enable_17), .CD(n3990), 
            .CK(clk_20MHz), .Q(pars[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/serial_protocol.v(55[12:18])
    defparam pars_1717__i1.GSR = "ENABLED";
    FD1P3IX pars_1717__i2 (.D(n33[2]), .SP(clk_20MHz_enable_17), .CD(n3990), 
            .CK(clk_20MHz), .Q(pars[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/serial_protocol.v(55[12:18])
    defparam pars_1717__i2.GSR = "ENABLED";
    LUT4 mux_45_Mux_1_i94_then_4_lut (.A(n10106), .B(pars[0]), .C(pars[2]), 
         .D(pars[3]), .Z(n10159)) /* synthesis lut_function=(!(A ((D)+!B)+!A (B+(C+!(D))))) */ ;
    defparam mux_45_Mux_1_i94_then_4_lut.init = 16'h0188;
    LUT4 mux_45_Mux_1_i94_else_4_lut (.A(n10106), .B(pars[0]), .C(pars[2]), 
         .D(pars[3]), .Z(n10158)) /* synthesis lut_function=(!(A ((C (D)+!C !(D))+!B)+!A (((D)+!C)+!B))) */ ;
    defparam mux_45_Mux_1_i94_else_4_lut.init = 16'h08c0;
    LUT4 i1489_3_lut_rep_166 (.A(rst_d), .B(Start_w), .C(rst_d_N_267_c), 
         .Z(clk_20MHz_enable_17)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/serial_protocol.v(36[2] 70[5])
    defparam i1489_3_lut_rep_166.init = 16'hcaca;
    LUT4 i3377_3_lut_4_lut_4_lut (.A(rst_d), .B(Start_w), .C(rst_d_N_267_c), 
         .D(n3357), .Z(n3990)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/serial_protocol.v(36[2] 70[5])
    defparam i3377_3_lut_4_lut_4_lut.init = 16'h0aca;
    LUT4 i3383_3_lut_4_lut_4_lut (.A(rst_d), .B(Start_w), .C(rst_d_N_267_c), 
         .D(n9206), .Z(n4005)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/serial_protocol.v(36[2] 70[5])
    defparam i3383_3_lut_4_lut_4_lut.init = 16'h0aca;
    LUT4 i1_2_lut_rep_163 (.A(pars[1]), .B(pars[0]), .C(pars[3]), .D(pars[2]), 
         .Z(n10571)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C)))) */ ;
    defparam i1_2_lut_rep_163.init = 16'h1ef0;
    FD1P3IX pars_1717__i0 (.D(n33[0]), .SP(clk_20MHz_enable_17), .CD(n3990), 
            .CK(clk_20MHz), .Q(pars[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/serial_protocol.v(55[12:18])
    defparam pars_1717__i0.GSR = "ENABLED";
    LUT4 mux_45_Mux_0_i15_4_lut_4_lut_4_lut_4_lut (.A(pars[1]), .B(pars[0]), 
         .C(pars[3]), .D(pars[2]), .Z(n15)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (B (C+(D))+!B (C (D)+!C !(D))))) */ ;
    defparam mux_45_Mux_0_i15_4_lut_4_lut_4_lut_4_lut.init = 16'h013e;
    LUT4 i4_4_lut (.A(pars[4]), .B(n9454), .C(pars[3]), .D(n10142), 
         .Z(n3357)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/serial_protocol.v(58[7:18])
    defparam i4_4_lut.init = 16'hfffb;
    LUT4 i8711_3_lut (.A(pars[2]), .B(pars[6]), .C(pars[5]), .Z(n9454)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i8711_3_lut.init = 16'h8080;
    LUT4 i1_4_lut_4_lut_4_lut_4_lut_4_lut (.A(pars[1]), .B(pars[0]), .C(pars[3]), 
         .D(pars[2]), .Z(n4)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B+(C))) */ ;
    defparam i1_4_lut_4_lut_4_lut_4_lut_4_lut.init = 16'hfede;
    LUT4 i2_3_lut_4_lut_then_4_lut (.A(pars[0]), .B(pars[2]), .C(pars[1]), 
         .D(pars[3]), .Z(n10156)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i2_3_lut_4_lut_then_4_lut.init = 16'h0010;
    LUT4 i8748_4_lut_4_lut (.A(n10087), .B(tx_N_297[6]), .C(n10160), .D(n63), 
         .Z(n9493)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;
    defparam i8748_4_lut_4_lut.init = 16'h7340;
    LUT4 i1_2_lut (.A(rst_d), .B(rst_d_N_267_c), .Z(clk_20MHz_enable_5)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    L6MUX21 i8749 (.D0(n63_adj_415), .D1(n126), .SD(tx_N_297[6]), .Z(n9494));
    PFUMX mux_45_Mux_1_i63 (.BLUT(n15_adj_416), .ALUT(n31), .C0(n9471), 
          .Z(n63)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=85 */ ;
    LUT4 i3_4_lut_4_lut_4_lut_4_lut (.A(pars[1]), .B(pars[0]), .C(pars[3]), 
         .D(pars[2]), .Z(n9303)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i3_4_lut_4_lut_4_lut_4_lut.init = 16'hfeff;
    LUT4 i5639_2_lut_3_lut_4_lut (.A(pars[3]), .B(n10143), .C(n9303), 
         .D(pars[4]), .Z(n125)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B (C+(D))))) */ ;
    defparam i5639_2_lut_3_lut_4_lut.init = 16'h0e01;
    LUT4 i1_2_lut_rep_95_3_lut_4_lut (.A(pars[3]), .B(n10143), .C(pars[5]), 
         .D(pars[4]), .Z(n10087)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)+!C !(D)))) */ ;
    defparam i1_2_lut_rep_95_3_lut_4_lut.init = 16'hf0e1;
    LUT4 i8912_2_lut_3_lut_4_lut_3_lut_4_lut (.A(pars[3]), .B(n10143), .C(pars[5]), 
         .D(pars[4]), .Z(n9471)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B ((D)+!C))) */ ;
    defparam i8912_2_lut_3_lut_4_lut_3_lut_4_lut.init = 16'hf1ef;
    LUT4 i8914_2_lut_3_lut_3_lut_4_lut_3_lut_4_lut (.A(pars[3]), .B(n10143), 
         .C(pars[5]), .D(pars[4]), .Z(n9467)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C+!(D)))) */ ;
    defparam i8914_2_lut_3_lut_3_lut_4_lut_3_lut_4_lut.init = 16'hfef1;
    LUT4 i2_3_lut_4_lut (.A(pars[3]), .B(n10143), .C(n10144), .D(pars[0]), 
         .Z(n8696)) /* synthesis lut_function=(A (B (C (D)))+!A !(B+!(C (D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h9000;
    LUT4 mux_45_Mux_0_i93_4_lut_4_lut (.A(pars[0]), .B(n10144), .C(n10120), 
         .D(n10571), .Z(n93)) /* synthesis lut_function=(!(A (C+(D))+!A (B+!(D)))) */ ;
    defparam mux_45_Mux_0_i93_4_lut_4_lut.init = 16'h110a;
    LUT4 mux_45_Mux_1_i15_3_lut_4_lut_4_lut (.A(pars[0]), .B(n10144), .C(n10143), 
         .D(pars[3]), .Z(n15_adj_416)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))) */ ;
    defparam mux_45_Mux_1_i15_3_lut_4_lut_4_lut.init = 16'hc11c;
    PFUMX mux_45_Mux_0_i63 (.BLUT(n15), .ALUT(n31_adj_417), .C0(n9471), 
          .Z(n63_adj_415)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=85 */ ;
    LUT4 i8750_3_lut (.A(n9493), .B(n9494), .C(State_w), .Z(tx_N_306)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i8750_3_lut.init = 16'hcaca;
    LUT4 n3357_bdd_4_lut (.A(n3357), .B(Start_w), .C(rst_d), .D(rst_d_N_267_c), 
         .Z(clk_20MHz_enable_2)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam n3357_bdd_4_lut.init = 16'h77f0;
    LUT4 i5750_2_lut_rep_110_3_lut_4_lut (.A(pars[2]), .B(n10142), .C(pars[4]), 
         .D(pars[3]), .Z(n10102)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;
    defparam i5750_2_lut_rep_110_3_lut_4_lut.init = 16'hfff8;
    LUT4 i1_2_lut_rep_114_3_lut_4_lut (.A(pars[2]), .B(n10142), .C(pars[4]), 
         .D(pars[3]), .Z(n10106)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)+!C !(D)))+!A (C (D)+!C !(D)))) */ ;
    defparam i1_2_lut_rep_114_3_lut_4_lut.init = 16'h0f78;
    LUT4 i8758_3_lut_4_lut (.A(pars[5]), .B(n10102), .C(n125), .D(n8556), 
         .Z(n94)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (D)+!B (C))) */ ;
    defparam i8758_3_lut_4_lut.init = 16'hf690;
    LUT4 i8760_3_lut_4_lut (.A(pars[5]), .B(n10102), .C(n10157), .D(n8696), 
         .Z(n31_adj_417)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (D)+!B (C))) */ ;
    defparam i8760_3_lut_4_lut.init = 16'hf690;
    CCU2D pars_1717_add_4_7 (.A0(pars[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pars[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8386), .S0(n33[5]), .S1(n33[6]));   // c:/users/roman perez/desktop/lattice_projects/test/serial_protocol.v(55[12:18])
    defparam pars_1717_add_4_7.INIT0 = 16'hfaaa;
    defparam pars_1717_add_4_7.INIT1 = 16'hfaaa;
    defparam pars_1717_add_4_7.INJECT1_0 = "NO";
    defparam pars_1717_add_4_7.INJECT1_1 = "NO";
    PFUMX mux_45_Mux_0_i126 (.BLUT(n93), .ALUT(n94), .C0(n9467), .Z(n126)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=85 */ ;
    CCU2D pars_1717_add_4_5 (.A0(pars[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pars[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8385), .COUT(n8386), .S0(n33[3]), .S1(n33[4]));   // c:/users/roman perez/desktop/lattice_projects/test/serial_protocol.v(55[12:18])
    defparam pars_1717_add_4_5.INIT0 = 16'hfaaa;
    defparam pars_1717_add_4_5.INIT1 = 16'hfaaa;
    defparam pars_1717_add_4_5.INJECT1_0 = "NO";
    defparam pars_1717_add_4_5.INJECT1_1 = "NO";
    LUT4 mux_45_Mux_1_i31_4_lut_4_lut (.A(n10106), .B(n4), .C(n10087), 
         .D(n9303), .Z(n31)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+!(D)))+!A (C+(D)))) */ ;
    defparam mux_45_Mux_1_i31_4_lut_4_lut.init = 16'h202f;
    CCU2D pars_1717_add_4_3 (.A0(pars[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pars[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8384), .COUT(n8385), .S0(n33[1]), .S1(n33[2]));   // c:/users/roman perez/desktop/lattice_projects/test/serial_protocol.v(55[12:18])
    defparam pars_1717_add_4_3.INIT0 = 16'hfaaa;
    defparam pars_1717_add_4_3.INIT1 = 16'hfaaa;
    defparam pars_1717_add_4_3.INJECT1_0 = "NO";
    defparam pars_1717_add_4_3.INJECT1_1 = "NO";
    CCU2D pars_1717_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pars[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n8384), .S1(n33[0]));   // c:/users/roman perez/desktop/lattice_projects/test/serial_protocol.v(55[12:18])
    defparam pars_1717_add_4_1.INIT0 = 16'hF000;
    defparam pars_1717_add_4_1.INIT1 = 16'h0555;
    defparam pars_1717_add_4_1.INJECT1_0 = "NO";
    defparam pars_1717_add_4_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut (.A(rst_d_N_267_c), .B(Start_w), .C(n3357), .Z(eoc_N_314)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut.init = 16'h0808;
    LUT4 i2_3_lut_4_lut_adj_124 (.A(rst_d_N_267_c), .B(Start_w), .C(n3357), 
         .D(tx_N_306), .Z(tx_N_291_c)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i2_3_lut_4_lut_adj_124.init = 16'hff7f;
    LUT4 i2_3_lut_4_lut_adj_125 (.A(rst_d_N_267_c), .B(Start_w), .C(n9206), 
         .D(tx_N_295), .Z(tx_N_291)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i2_3_lut_4_lut_adj_125.init = 16'hff7f;
    LUT4 i5395_2_lut_rep_150 (.A(pars[1]), .B(pars[0]), .Z(n10142)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5395_2_lut_rep_150.init = 16'heeee;
    LUT4 i5674_2_lut_rep_125_3_lut_4_lut (.A(pars[1]), .B(pars[0]), .C(pars[3]), 
         .D(pars[2]), .Z(n10117)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i5674_2_lut_rep_125_3_lut_4_lut.init = 16'hfef0;
    LUT4 i2441_2_lut_rep_128_3_lut_4_lut_3_lut (.A(pars[1]), .B(pars[0]), 
         .C(pars[2]), .Z(n10120)) /* synthesis lut_function=(A ((C)+!B)+!A (B+!(C))) */ ;
    defparam i2441_2_lut_rep_128_3_lut_4_lut_3_lut.init = 16'he7e7;
    LUT4 i5534_2_lut_rep_151 (.A(pars[1]), .B(pars[0]), .C(pars[2]), .Z(n10143)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i5534_2_lut_rep_151.init = 16'he0e0;
    LUT4 i1_2_lut_rep_152 (.A(pars[1]), .B(pars[0]), .C(pars[2]), .Z(n10144)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !(C)))) */ ;
    defparam i1_2_lut_rep_152.init = 16'h1e1e;
    LUT4 i1_3_lut_4_lut (.A(pars[4]), .B(n10117), .C(pars[5]), .D(pars[6]), 
         .Z(tx_N_297[6])) /* synthesis lut_function=(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D))) */ ;
    defparam i1_3_lut_4_lut.init = 16'he01f;
    LUT4 i2_3_lut_4_lut_4_lut (.A(pars[1]), .B(pars[0]), .C(pars[2]), 
         .D(pars[3]), .Z(n8556)) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;
    defparam i2_3_lut_4_lut_4_lut.init = 16'h0440;
    PFUMX i9081 (.BLUT(n10158), .ALUT(n10159), .C0(pars[1]), .Z(n10160));
    PFUMX i9079 (.BLUT(n10155), .ALUT(n10156), .C0(pars[4]), .Z(n10157));
    
endmodule
//
// Verilog Description of module DSI_Protocol
//

module DSI_Protocol (wave, VDAC_clk_c, n10113, n10114, GND_net, \wave[3] , 
            \sss[0] , MIPI_clkP_c, \sss[1] , n10577, \wave[5] , rst_d_N_267_c, 
            init, n10151, \wave[6] , n924, n1755, n10100, n9798, 
            n1722, \idle[11] , n9815, n9319, n7376, \wave[0] , Start_w, 
            State_w, n10132, n4451, stateP, levelP, DAC_3_c_3, n10573, 
            DAC_3_c_1, rst_d, n3851, VDAC_clk_c_enable_52, \RGB_1__N_6[0] , 
            SerialP_c, VDAC_clk_c_enable_58, n9553, VDAC_clk_c_enable_140, 
            VDAC_clk_c_enable_122, n36, VDAC_clk_c_enable_30, \wave[1] , 
            \wave[7] , \wave[8] , n10095, n10435, \idle[8] , \idle[10] , 
            \idle[1] , \idle[2] , n10108, n8501, n936, n1792, n10071, 
            n10089, n10105, n10109, Button_c_0, n10101, n10111, 
            n9782, n9284, eoco_c, n6523, n10073, n10069, \idle[11]_adj_1 , 
            n6503, n10088, n10103, n9245, n1000, n6575, n10097, 
            n4, n939, n6433, n10092, n10074, n10124, n10079, n10145, 
            VDAC_clk_c_enable_147, n1847, n9785, n9786, n9823, n9824, 
            n9296, n16, n9312, n10082, n9839, n9825, n9787, VDAC_clk_c_enable_43, 
            n10107, VDAC_clk_c_enable_138, n7378, \idle_start[0] , \idle_start[1] , 
            \idle_start[5] , \idle_start[21] , n29, \idle_start[3] , 
            \idle_start[8] , n34, \idle_start[4] , \idle_start[22] , 
            \idle_start[15] , \idle_start[11] , n30, \idle_start[17] , 
            \idle_start[16] , \idle_start[14] , \idle_start[2] , \idle_start[18] , 
            \idle_start[12] , \idle_start[23] , n10131, n3549, n6571, 
            n10077, n47, n32, \lvld[1] , n33, VDAC_clk_c_enable_42) /* synthesis syn_module_defined=1 */ ;
    output [12:0]wave;
    input VDAC_clk_c;
    output n10113;
    output n10114;
    input GND_net;
    output \wave[3] ;
    output \sss[0] ;
    output MIPI_clkP_c;
    output \sss[1] ;
    input n10577;
    output \wave[5] ;
    input rst_d_N_267_c;
    input init;
    output n10151;
    output \wave[6] ;
    input n924;
    output n1755;
    output n10100;
    input n9798;
    output n1722;
    output \idle[11] ;
    input n9815;
    input n9319;
    output n7376;
    output \wave[0] ;
    output Start_w;
    output State_w;
    output n10132;
    output n4451;
    output [1:0]stateP;
    output [1:0]levelP;
    output DAC_3_c_3;
    input n10573;
    output DAC_3_c_1;
    input rst_d;
    input n3851;
    output VDAC_clk_c_enable_52;
    output \RGB_1__N_6[0] ;
    input SerialP_c;
    output VDAC_clk_c_enable_58;
    input n9553;
    output VDAC_clk_c_enable_140;
    output VDAC_clk_c_enable_122;
    input n36;
    output VDAC_clk_c_enable_30;
    output \wave[1] ;
    output \wave[7] ;
    output \wave[8] ;
    output n10095;
    output n10435;
    input \idle[8] ;
    input \idle[10] ;
    input \idle[1] ;
    input \idle[2] ;
    input n10108;
    input n8501;
    input n936;
    output n1792;
    input n10071;
    input n10089;
    input n10105;
    input n10109;
    input Button_c_0;
    output n10101;
    output n10111;
    output n9782;
    input n9284;
    input eoco_c;
    output n6523;
    input n10073;
    output n10069;
    input \idle[11]_adj_1 ;
    input n6503;
    output n10088;
    input n10103;
    output n9245;
    input n1000;
    input n6575;
    input n10097;
    output n4;
    input n939;
    input n6433;
    input n10092;
    output n10074;
    input n10124;
    output n10079;
    input n10145;
    output VDAC_clk_c_enable_147;
    input n1847;
    input n9785;
    output n9786;
    input n9823;
    output n9824;
    input n9296;
    input n16;
    input n9312;
    output n10082;
    input n9839;
    input n9825;
    input n9787;
    output VDAC_clk_c_enable_43;
    output n10107;
    input VDAC_clk_c_enable_138;
    output n7378;
    input \idle_start[0] ;
    input \idle_start[1] ;
    input \idle_start[5] ;
    input \idle_start[21] ;
    output n29;
    input \idle_start[3] ;
    input \idle_start[8] ;
    output n34;
    input \idle_start[4] ;
    input \idle_start[22] ;
    input \idle_start[15] ;
    input \idle_start[11] ;
    output n30;
    input \idle_start[17] ;
    input \idle_start[16] ;
    input \idle_start[14] ;
    input \idle_start[2] ;
    input \idle_start[18] ;
    input \idle_start[12] ;
    input \idle_start[23] ;
    input n10131;
    input n3549;
    output n6571;
    input n10077;
    input n47;
    input n32;
    input \lvld[1] ;
    output n33;
    output VDAC_clk_c_enable_42;
    
    wire VDAC_clk_c /* synthesis SET_AS_NETWORK=VDAC_clk_c, is_clock=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(16[14:22])
    
    wire VDAC_clk_c_enable_152, n3973;
    wire [12:0]n1605;
    wire [24:0]idle_start;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(27[12:22])
    
    wire VDAC_clk_c_enable_139, n3985;
    wire [24:0]n105;
    wire [12:0]wave_c;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(25[12:16])
    
    wire n7372;
    wire [12:0]n839;
    
    wire n3582, n2382, n8382;
    wire [11:0]idle;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(26[12:16])
    
    wire VDAC_clk_c_enable_39, n4330;
    wire [11:0]n1666;
    
    wire n8403;
    wire [7:0]iter;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(35[11:15])
    wire [7:0]n37;
    
    wire n8404, n7361;
    wire [11:0]n926;
    
    wire VDAC_clk_c_enable_153, n10122;
    wire [1:0]lvld;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(23[11:15])
    
    wire VDAC_clk_c_enable_68;
    wire [1:0]lvld_1__N_18;
    
    wire VDAC_clk_c_enable_18, n10153, n8337, n8, n9257, n9322, 
        n2, n3950, init_adj_363, n1639, n8381, n8402, n8380, VDAC_clk_c_enable_55, 
        n2970, VDAC_clk_c_enable_59, n9238, VDAC_clk_c_enable_76, n4322, 
        n8739, n8401, n8379, n8378, n9243, n26, n27, n9491, 
        n52, VDAC_clk_c_enable_148;
    wire [1:0]RGB_1__N_6;
    
    wire VDAC_clk_c_enable_88, n607, n8336, n9344, n9840, n2188;
    wire [1:0]n1320;
    
    wire n73, n9230, n66, n1604;
    wire [1:0]n1108;
    wire [1:0]n1141;
    
    wire n55;
    wire [1:0]n1062;
    wire [1:0]n834;
    
    wire init_N_264, n6419, n6610, n10162, n10161, n10094, n925, 
        n9195, n10, n10133, n10_adj_364, n10154, n3617, n10575, 
        n6475, n6595, n9327, n9278, n6471, n10_adj_365, n6407, 
        n3588, n14, n10080, n6, n6_adj_366, n9452, n10_adj_367, 
        n10096, n891, n10433, n9197, n6_adj_368, n9, n10127, n9863, 
        n10072, n3519, n10135, n9621;
    wire [1:0]n627;
    
    wire n61, n10085, n10136, n20, n125_adj_373, n4_c, n8335, 
        n47_c, n10081, n10075, n10070, n9240, n10110, n9837, n14_adj_374, 
        n9838, n8377, n10_adj_376, n12, n8334, n3667, n9378, n9371, 
        n9214, n8376, n8375, n3442, n7, n9424, n49, n6553, n10137, 
        n62, n13, n9386, n14_adj_378, n9273, n8333, n9161, n13_adj_379, 
        n12_adj_380, n6493, n78, n9190, n8374, n8373, n10083, 
        n5, n8372, n8555, n8371, n116_adj_383, n10125, n8344, 
        n10139, n7_adj_384, n4_adj_385, n3505, n10098, n40_adj_386, 
        n9239, n10134, n5_adj_387, n10140, n9251, n10084, n8343, 
        n8342, n64, n9374, n10099, n8332, n8341, n15, n14_adj_388, 
        n9550, n8340, n10093, n8_adj_389, n8431, n8339, n5_adj_390, 
        n22, n9252, n6473, n4_adj_391, n9325, n3599, n9326, n9458, 
        n12_adj_392, n6_adj_393, n8497, n9237, n9432, n11, n27_adj_394, 
        n31, n28, n10163, n6_adj_412;
    
    FD1P3JX wave_i0_i2 (.D(n1605[2]), .SP(VDAC_clk_c_enable_152), .PD(n3973), 
            .CK(VDAC_clk_c), .Q(wave[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=60 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam wave_i0_i2.GSR = "ENABLED";
    FD1P3JX wave_i0_i4 (.D(n1605[4]), .SP(VDAC_clk_c_enable_152), .PD(n3973), 
            .CK(VDAC_clk_c), .Q(wave[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=60 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam wave_i0_i4.GSR = "ENABLED";
    FD1P3IX idle_start_1714__i24 (.D(n105[24]), .SP(VDAC_clk_c_enable_139), 
            .CD(n3985), .CK(VDAC_clk_c), .Q(idle_start[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1714__i24.GSR = "ENABLED";
    FD1P3IX idle_start_1714__i23 (.D(n105[23]), .SP(VDAC_clk_c_enable_139), 
            .CD(n3985), .CK(VDAC_clk_c), .Q(idle_start[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1714__i23.GSR = "ENABLED";
    FD1P3JX wave_i0_i9 (.D(n1605[9]), .SP(VDAC_clk_c_enable_152), .PD(n3973), 
            .CK(VDAC_clk_c), .Q(wave[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=60 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam wave_i0_i9.GSR = "ENABLED";
    FD1P3IX wave_i0_i10 (.D(n839[10]), .SP(VDAC_clk_c_enable_152), .CD(n7372), 
            .CK(VDAC_clk_c), .Q(wave_c[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=60 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam wave_i0_i10.GSR = "ENABLED";
    FD1P3IX wave_i0_i11 (.D(n839[11]), .SP(VDAC_clk_c_enable_152), .CD(n7372), 
            .CK(VDAC_clk_c), .Q(wave_c[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=60 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam wave_i0_i11.GSR = "ENABLED";
    FD1P3IX wave_i0_i12 (.D(n839[12]), .SP(VDAC_clk_c_enable_152), .CD(n7372), 
            .CK(VDAC_clk_c), .Q(wave_c[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=60 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam wave_i0_i12.GSR = "ENABLED";
    LUT4 i1480_3_lut_4_lut (.A(n3582), .B(wave_c[12]), .C(n10113), .D(n10114), 
         .Z(n2382)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i1480_3_lut_4_lut.init = 16'h8f80;
    CCU2D idle_start_1714_add_4_25 (.A0(idle_start[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(idle_start[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8382), .S0(n105[23]), .S1(n105[24]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1714_add_4_25.INIT0 = 16'hfaaa;
    defparam idle_start_1714_add_4_25.INIT1 = 16'hfaaa;
    defparam idle_start_1714_add_4_25.INJECT1_0 = "NO";
    defparam idle_start_1714_add_4_25.INJECT1_1 = "NO";
    FD1P3IX wave_i0_i3 (.D(n839[3]), .SP(VDAC_clk_c_enable_152), .CD(n7372), 
            .CK(VDAC_clk_c), .Q(\wave[3] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=60 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam wave_i0_i3.GSR = "ENABLED";
    FD1P3JX idle_i0_i0 (.D(n1666[0]), .SP(VDAC_clk_c_enable_39), .PD(n4330), 
            .CK(VDAC_clk_c), .Q(idle[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=60 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam idle_i0_i0.GSR = "ENABLED";
    CCU2D iter_1713_add_4_7 (.A0(iter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(iter[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8403), .COUT(n8404), .S0(n37[5]), .S1(n37[6]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(133[15:23])
    defparam iter_1713_add_4_7.INIT0 = 16'hfaaa;
    defparam iter_1713_add_4_7.INIT1 = 16'hfaaa;
    defparam iter_1713_add_4_7.INJECT1_0 = "NO";
    defparam iter_1713_add_4_7.INJECT1_1 = "NO";
    FD1P3IX idle_i0_i1 (.D(n926[1]), .SP(VDAC_clk_c_enable_39), .CD(n7361), 
            .CK(VDAC_clk_c), .Q(idle[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=60 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam idle_i0_i1.GSR = "ENABLED";
    FD1P3AY sss_i0 (.D(n10122), .SP(VDAC_clk_c_enable_153), .CK(VDAC_clk_c), 
            .Q(\sss[0] )) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=60 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam sss_i0.GSR = "ENABLED";
    FD1P3AY lvld_i0 (.D(lvld_1__N_18[0]), .SP(VDAC_clk_c_enable_68), .CK(VDAC_clk_c), 
            .Q(lvld[0])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=60 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam lvld_i0.GSR = "ENABLED";
    FD1P3AX MIPI_clk_d_265 (.D(n10153), .SP(VDAC_clk_c_enable_18), .CK(VDAC_clk_c), 
            .Q(MIPI_clkP_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=60 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam MIPI_clk_d_265.GSR = "ENABLED";
    FD1P3AX sss_i1 (.D(n10577), .SP(VDAC_clk_c_enable_153), .CK(VDAC_clk_c), 
            .Q(\sss[1] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=60 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam sss_i1.GSR = "ENABLED";
    CCU2D add_136_13 (.A0(wave_c[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(wave_c[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8337), .S0(n839[11]), .S1(n839[12]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(218[13:24])
    defparam add_136_13.INIT0 = 16'h5aaa;
    defparam add_136_13.INIT1 = 16'h5aaa;
    defparam add_136_13.INJECT1_0 = "NO";
    defparam add_136_13.INJECT1_1 = "NO";
    FD1P3JX idle_i0_i2 (.D(n1666[2]), .SP(VDAC_clk_c_enable_39), .PD(n4330), 
            .CK(VDAC_clk_c), .Q(idle[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=60 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam idle_i0_i2.GSR = "ENABLED";
    FD1P3IX idle_i0_i3 (.D(n926[3]), .SP(VDAC_clk_c_enable_39), .CD(n7361), 
            .CK(VDAC_clk_c), .Q(idle[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=60 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam idle_i0_i3.GSR = "ENABLED";
    FD1P3JX wave_i0_i5 (.D(n1605[5]), .SP(VDAC_clk_c_enable_152), .PD(n3973), 
            .CK(VDAC_clk_c), .Q(\wave[5] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=60 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam wave_i0_i5.GSR = "ENABLED";
    FD1P3IX idle_i0_i4 (.D(n926[4]), .SP(VDAC_clk_c_enable_39), .CD(n7361), 
            .CK(VDAC_clk_c), .Q(idle[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=60 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam idle_i0_i4.GSR = "ENABLED";
    FD1P3JX idle_i0_i5 (.D(n1666[5]), .SP(VDAC_clk_c_enable_39), .PD(n4330), 
            .CK(VDAC_clk_c), .Q(idle[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=60 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam idle_i0_i5.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_159 (.A(rst_d_N_267_c), .B(init), .Z(n10151)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(32[5:10])
    defparam i1_2_lut_rep_159.init = 16'h8888;
    FD1P3IX idle_i0_i6 (.D(n926[6]), .SP(VDAC_clk_c_enable_39), .CD(n7361), 
            .CK(VDAC_clk_c), .Q(idle[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=60 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam idle_i0_i6.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(n8), .B(n9257), .C(n9322), .D(idle[4]), .Z(n2)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i1_4_lut.init = 16'hc8c0;
    FD1P3IX iter_1713__i2 (.D(n37[2]), .SP(VDAC_clk_c_enable_153), .CD(n3950), 
            .CK(VDAC_clk_c), .Q(iter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(133[15:23])
    defparam iter_1713__i2.GSR = "ENABLED";
    FD1P3JX wave_i0_i6 (.D(n1605[6]), .SP(VDAC_clk_c_enable_152), .PD(n3973), 
            .CK(VDAC_clk_c), .Q(\wave[6] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=60 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam wave_i0_i6.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut (.A(rst_d_N_267_c), .B(init), .C(n924), .Z(n1755)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(32[5:10])
    defparam i1_2_lut_3_lut.init = 16'h0808;
    LUT4 i1_2_lut_3_lut_adj_57 (.A(rst_d_N_267_c), .B(init_adj_363), .C(n10100), 
         .Z(n1639)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(15[14:17])
    defparam i1_2_lut_3_lut_adj_57.init = 16'h0808;
    FD1P3IX idle_i0_i7 (.D(n926[7]), .SP(VDAC_clk_c_enable_39), .CD(n7361), 
            .CK(VDAC_clk_c), .Q(idle[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=60 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam idle_i0_i7.GSR = "ENABLED";
    FD1P3JX idle_i0_i8 (.D(n1666[8]), .SP(VDAC_clk_c_enable_39), .PD(n4330), 
            .CK(VDAC_clk_c), .Q(idle[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=60 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam idle_i0_i8.GSR = "ENABLED";
    LUT4 VDAC_sync_c_bdd_2_lut_8953_3_lut (.A(rst_d_N_267_c), .B(init), 
         .C(n9798), .Z(n1722)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(32[5:10])
    defparam VDAC_sync_c_bdd_2_lut_8953_3_lut.init = 16'h8080;
    FD1P3IX idle_i0_i9 (.D(n926[9]), .SP(VDAC_clk_c_enable_39), .CD(n7361), 
            .CK(VDAC_clk_c), .Q(idle[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=60 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam idle_i0_i9.GSR = "ENABLED";
    CCU2D idle_start_1714_add_4_23 (.A0(idle_start[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(idle_start[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8381), .COUT(n8382), .S0(n105[21]), .S1(n105[22]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1714_add_4_23.INIT0 = 16'hfaaa;
    defparam idle_start_1714_add_4_23.INIT1 = 16'hfaaa;
    defparam idle_start_1714_add_4_23.INJECT1_0 = "NO";
    defparam idle_start_1714_add_4_23.INJECT1_1 = "NO";
    CCU2D iter_1713_add_4_5 (.A0(iter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(iter[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8402), .COUT(n8403), .S0(n37[3]), .S1(n37[4]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(133[15:23])
    defparam iter_1713_add_4_5.INIT0 = 16'hfaaa;
    defparam iter_1713_add_4_5.INIT1 = 16'hfaaa;
    defparam iter_1713_add_4_5.INJECT1_0 = "NO";
    defparam iter_1713_add_4_5.INJECT1_1 = "NO";
    FD1P3JX idle_i0_i10 (.D(n1666[10]), .SP(VDAC_clk_c_enable_39), .PD(n4330), 
            .CK(VDAC_clk_c), .Q(idle[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=60 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam idle_i0_i10.GSR = "ENABLED";
    FD1P3IX idle_i0_i11 (.D(n926[11]), .SP(VDAC_clk_c_enable_39), .CD(n7361), 
            .CK(VDAC_clk_c), .Q(\idle[11] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=60 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam idle_i0_i11.GSR = "ENABLED";
    LUT4 i2_3_lut_4_lut (.A(rst_d_N_267_c), .B(init), .C(n9815), .D(n9319), 
         .Z(n7376)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(32[5:10])
    defparam i2_3_lut_4_lut.init = 16'hff7f;
    FD1P3IX iter_1713__i1 (.D(n37[1]), .SP(VDAC_clk_c_enable_153), .CD(n3950), 
            .CK(VDAC_clk_c), .Q(iter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(133[15:23])
    defparam iter_1713__i1.GSR = "ENABLED";
    FD1P3JX wave_i0_i0 (.D(n1605[0]), .SP(VDAC_clk_c_enable_152), .PD(n3973), 
            .CK(VDAC_clk_c), .Q(\wave[0] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=60 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam wave_i0_i0.GSR = "ENABLED";
    CCU2D idle_start_1714_add_4_21 (.A0(idle_start[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(idle_start[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8380), .COUT(n8381), .S0(n105[19]), .S1(n105[20]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1714_add_4_21.INIT0 = 16'hfaaa;
    defparam idle_start_1714_add_4_21.INIT1 = 16'hfaaa;
    defparam idle_start_1714_add_4_21.INJECT1_0 = "NO";
    defparam idle_start_1714_add_4_21.INJECT1_1 = "NO";
    FD1P3AX Start_sd_262 (.D(n2970), .SP(VDAC_clk_c_enable_55), .CK(VDAC_clk_c), 
            .Q(Start_w)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=60 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam Start_sd_262.GSR = "ENABLED";
    FD1P3AX State_sd_263 (.D(n9238), .SP(VDAC_clk_c_enable_59), .CK(VDAC_clk_c), 
            .Q(State_w)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=60 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam State_sd_263.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_58 (.A(rst_d_N_267_c), .B(init), .C(n10132), 
         .Z(n4451)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(32[5:10])
    defparam i1_2_lut_3_lut_adj_58.init = 16'h8080;
    LUT4 i1932_2_lut (.A(idle[2]), .B(idle[3]), .Z(n8)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1932_2_lut.init = 16'heeee;
    FD1P3AX lvld_i1 (.D(lvld_1__N_18[1]), .SP(VDAC_clk_c_enable_68), .CK(VDAC_clk_c), 
            .Q(lvld[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=60 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam lvld_i1.GSR = "ENABLED";
    FD1P3JX stateq_i1 (.D(n8739), .SP(VDAC_clk_c_enable_76), .PD(n4322), 
            .CK(VDAC_clk_c), .Q(stateP[1])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=60 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam stateq_i1.GSR = "ENABLED";
    CCU2D iter_1713_add_4_3 (.A0(iter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(iter[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8401), .COUT(n8402), .S0(n37[1]), .S1(n37[2]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(133[15:23])
    defparam iter_1713_add_4_3.INIT0 = 16'hfaaa;
    defparam iter_1713_add_4_3.INIT1 = 16'hfaaa;
    defparam iter_1713_add_4_3.INJECT1_0 = "NO";
    defparam iter_1713_add_4_3.INJECT1_1 = "NO";
    CCU2D iter_1713_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(iter[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n8401), .S1(n37[0]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(133[15:23])
    defparam iter_1713_add_4_1.INIT0 = 16'hF000;
    defparam iter_1713_add_4_1.INIT1 = 16'h0555;
    defparam iter_1713_add_4_1.INJECT1_0 = "NO";
    defparam iter_1713_add_4_1.INJECT1_1 = "NO";
    CCU2D idle_start_1714_add_4_19 (.A0(idle_start[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(idle_start[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8379), .COUT(n8380), .S0(n105[17]), .S1(n105[18]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1714_add_4_19.INIT0 = 16'hfaaa;
    defparam idle_start_1714_add_4_19.INIT1 = 16'hfaaa;
    defparam idle_start_1714_add_4_19.INJECT1_0 = "NO";
    defparam idle_start_1714_add_4_19.INJECT1_1 = "NO";
    FD1P3IX iter_1713__i3 (.D(n37[3]), .SP(VDAC_clk_c_enable_153), .CD(n3950), 
            .CK(VDAC_clk_c), .Q(iter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(133[15:23])
    defparam iter_1713__i3.GSR = "ENABLED";
    FD1P3IX iter_1713__i4 (.D(n37[4]), .SP(VDAC_clk_c_enable_153), .CD(n3950), 
            .CK(VDAC_clk_c), .Q(iter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(133[15:23])
    defparam iter_1713__i4.GSR = "ENABLED";
    CCU2D idle_start_1714_add_4_17 (.A0(idle_start[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(idle_start[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8378), .COUT(n8379), .S0(n105[15]), .S1(n105[16]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1714_add_4_17.INIT0 = 16'hfaaa;
    defparam idle_start_1714_add_4_17.INIT1 = 16'hfaaa;
    defparam idle_start_1714_add_4_17.INJECT1_0 = "NO";
    defparam idle_start_1714_add_4_17.INJECT1_1 = "NO";
    FD1P3JX stateq_i0 (.D(n9243), .SP(VDAC_clk_c_enable_76), .PD(n4322), 
            .CK(VDAC_clk_c), .Q(stateP[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=60 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam stateq_i0.GSR = "ENABLED";
    FD1P3IX idle_start_1714__i19 (.D(n105[19]), .SP(VDAC_clk_c_enable_139), 
            .CD(n3985), .CK(VDAC_clk_c), .Q(idle_start[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1714__i19.GSR = "ENABLED";
    FD1P3IX idle_start_1714__i20 (.D(n105[20]), .SP(VDAC_clk_c_enable_139), 
            .CD(n3985), .CK(VDAC_clk_c), .Q(idle_start[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1714__i20.GSR = "ENABLED";
    FD1P3IX idle_start_1714__i21 (.D(n105[21]), .SP(VDAC_clk_c_enable_139), 
            .CD(n3985), .CK(VDAC_clk_c), .Q(idle_start[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1714__i21.GSR = "ENABLED";
    FD1P3IX idle_start_1714__i22 (.D(n105[22]), .SP(VDAC_clk_c_enable_139), 
            .CD(n3985), .CK(VDAC_clk_c), .Q(idle_start[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1714__i22.GSR = "ENABLED";
    FD1P3IX idle_start_1714__i18 (.D(n105[18]), .SP(VDAC_clk_c_enable_139), 
            .CD(n3985), .CK(VDAC_clk_c), .Q(idle_start[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1714__i18.GSR = "ENABLED";
    L6MUX21 i51 (.D0(n26), .D1(n27), .SD(n9491), .Z(n52));
    FD1P3AX lvlq_i1 (.D(RGB_1__N_6[1]), .SP(VDAC_clk_c_enable_148), .CK(VDAC_clk_c), 
            .Q(levelP[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=60 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam lvlq_i1.GSR = "ENABLED";
    FD1P3IX idle_start_1714__i16 (.D(n105[16]), .SP(VDAC_clk_c_enable_139), 
            .CD(n3985), .CK(VDAC_clk_c), .Q(idle_start[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1714__i16.GSR = "ENABLED";
    FD1P3IX idle_start_1714__i17 (.D(n105[17]), .SP(VDAC_clk_c_enable_139), 
            .CD(n3985), .CK(VDAC_clk_c), .Q(idle_start[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1714__i17.GSR = "ENABLED";
    FD1P3IX idle_start_1714__i14 (.D(n105[14]), .SP(VDAC_clk_c_enable_139), 
            .CD(n3985), .CK(VDAC_clk_c), .Q(idle_start[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1714__i14.GSR = "ENABLED";
    FD1P3IX idle_start_1714__i15 (.D(n105[15]), .SP(VDAC_clk_c_enable_139), 
            .CD(n3985), .CK(VDAC_clk_c), .Q(idle_start[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1714__i15.GSR = "ENABLED";
    FD1P3IX MIPI_clk_DAC_d__i4 (.D(n607), .SP(VDAC_clk_c_enable_88), .CD(n10573), 
            .CK(VDAC_clk_c), .Q(DAC_3_c_3)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=60 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam MIPI_clk_DAC_d__i4.GSR = "ENABLED";
    FD1P3IX MIPI_clk_DAC_d__i2 (.D(n10577), .SP(VDAC_clk_c_enable_88), .CD(n10573), 
            .CK(VDAC_clk_c), .Q(DAC_3_c_1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=60 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam MIPI_clk_DAC_d__i2.GSR = "ENABLED";
    FD1P3IX idle_start_1714__i12 (.D(n105[12]), .SP(VDAC_clk_c_enable_139), 
            .CD(n3985), .CK(VDAC_clk_c), .Q(idle_start[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1714__i12.GSR = "ENABLED";
    FD1P3IX idle_start_1714__i13 (.D(n105[13]), .SP(VDAC_clk_c_enable_139), 
            .CD(n3985), .CK(VDAC_clk_c), .Q(idle_start[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1714__i13.GSR = "ENABLED";
    FD1P3IX idle_start_1714__i10 (.D(n105[10]), .SP(VDAC_clk_c_enable_139), 
            .CD(n3985), .CK(VDAC_clk_c), .Q(idle_start[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1714__i10.GSR = "ENABLED";
    FD1P3IX idle_start_1714__i11 (.D(n105[11]), .SP(VDAC_clk_c_enable_139), 
            .CD(n3985), .CK(VDAC_clk_c), .Q(idle_start[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1714__i11.GSR = "ENABLED";
    FD1P3IX idle_start_1714__i8 (.D(n105[8]), .SP(VDAC_clk_c_enable_139), 
            .CD(n3985), .CK(VDAC_clk_c), .Q(idle_start[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1714__i8.GSR = "ENABLED";
    FD1P3IX idle_start_1714__i9 (.D(n105[9]), .SP(VDAC_clk_c_enable_139), 
            .CD(n3985), .CK(VDAC_clk_c), .Q(idle_start[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1714__i9.GSR = "ENABLED";
    FD1P3IX idle_start_1714__i5 (.D(n105[5]), .SP(VDAC_clk_c_enable_139), 
            .CD(n3985), .CK(VDAC_clk_c), .Q(idle_start[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1714__i5.GSR = "ENABLED";
    FD1P3IX idle_start_1714__i6 (.D(n105[6]), .SP(VDAC_clk_c_enable_139), 
            .CD(n3985), .CK(VDAC_clk_c), .Q(idle_start[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1714__i6.GSR = "ENABLED";
    FD1P3IX idle_start_1714__i7 (.D(n105[7]), .SP(VDAC_clk_c_enable_139), 
            .CD(n3985), .CK(VDAC_clk_c), .Q(idle_start[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1714__i7.GSR = "ENABLED";
    FD1P3IX idle_start_1714__i1 (.D(n105[1]), .SP(VDAC_clk_c_enable_139), 
            .CD(n3985), .CK(VDAC_clk_c), .Q(idle_start[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1714__i1.GSR = "ENABLED";
    FD1P3IX idle_start_1714__i2 (.D(n105[2]), .SP(VDAC_clk_c_enable_139), 
            .CD(n3985), .CK(VDAC_clk_c), .Q(idle_start[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1714__i2.GSR = "ENABLED";
    FD1P3IX idle_start_1714__i3 (.D(n105[3]), .SP(VDAC_clk_c_enable_139), 
            .CD(n3985), .CK(VDAC_clk_c), .Q(idle_start[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1714__i3.GSR = "ENABLED";
    FD1P3IX idle_start_1714__i4 (.D(n105[4]), .SP(VDAC_clk_c_enable_139), 
            .CD(n3985), .CK(VDAC_clk_c), .Q(idle_start[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1714__i4.GSR = "ENABLED";
    CCU2D add_136_11 (.A0(wave[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(wave_c[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8336), .COUT(n8337), .S0(n839[9]), .S1(n839[10]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(218[13:24])
    defparam add_136_11.INIT0 = 16'h5aaa;
    defparam add_136_11.INIT1 = 16'h5aaa;
    defparam add_136_11.INJECT1_0 = "NO";
    defparam add_136_11.INJECT1_1 = "NO";
    LUT4 i8803_2_lut_3_lut_4_lut_4_lut (.A(rst_d_N_267_c), .B(rst_d), .C(n3851), 
         .D(init), .Z(VDAC_clk_c_enable_52)) /* synthesis lut_function=(!(A (C (D))+!A !(B))) */ ;
    defparam i8803_2_lut_3_lut_4_lut_4_lut.init = 16'h4eee;
    LUT4 i8603_2_lut (.A(\idle[11] ), .B(n10100), .Z(n9344)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i8603_2_lut.init = 16'heeee;
    LUT4 VDAC_blank_c_bdd_2_lut_8984_3_lut_4_lut (.A(rst_d_N_267_c), .B(init), 
         .C(n9840), .D(n3851), .Z(\RGB_1__N_6[0] )) /* synthesis lut_function=(!(A (B ((D)+!C)))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(32[5:10])
    defparam VDAC_blank_c_bdd_2_lut_8984_3_lut_4_lut.init = 16'h77f7;
    LUT4 i8809_2_lut_3_lut_4_lut_4_lut (.A(rst_d_N_267_c), .B(rst_d), .C(n2188), 
         .D(init_adj_363), .Z(VDAC_clk_c_enable_148)) /* synthesis lut_function=(!(A (C (D))+!A !(B))) */ ;
    defparam i8809_2_lut_3_lut_4_lut_4_lut.init = 16'h4eee;
    LUT4 i5481_4_lut (.A(SerialP_c), .B(rst_d_N_267_c), .C(n1320[1]), 
         .D(init_adj_363), .Z(RGB_1__N_6[1])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(60[2] 262[5])
    defparam i5481_4_lut.init = 16'hc088;
    PFUMX i107 (.BLUT(n73), .ALUT(n9230), .C0(n10113), .Z(n66));
    LUT4 i8844_3_lut_4_lut_4_lut (.A(rst_d_N_267_c), .B(rst_d), .C(n10132), 
         .D(init), .Z(VDAC_clk_c_enable_58)) /* synthesis lut_function=(A (C+!(D))+!A (B)) */ ;
    defparam i8844_3_lut_4_lut_4_lut.init = 16'he4ee;
    LUT4 i5580_2_lut (.A(n839[2]), .B(n1604), .Z(n1605[2])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(60[2] 262[5])
    defparam i5580_2_lut.init = 16'h8888;
    LUT4 i8831_2_lut_3_lut (.A(rst_d_N_267_c), .B(rst_d), .C(n9553), .Z(VDAC_clk_c_enable_140)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i8831_2_lut_3_lut.init = 16'he0e0;
    L6MUX21 i54 (.D0(n1108[1]), .D1(n1141[1]), .SD(n9491), .Z(n55));
    PFUMX i22 (.BLUT(n1062[0]), .ALUT(n834[0]), .C0(n10113), .Z(n26));
    FD1P3IX init_261 (.D(init_N_264), .SP(VDAC_clk_c_enable_122), .CD(n10573), 
            .CK(VDAC_clk_c), .Q(init_adj_363)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=60 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam init_261.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(n2188), .B(n55), .Z(n1320[1])) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut.init = 16'h4444;
    LUT4 i8875_4_lut_4_lut_4_lut_4_lut (.A(rst_d), .B(rst_d_N_267_c), .C(n10132), 
         .D(n36), .Z(VDAC_clk_c_enable_30)) /* synthesis lut_function=(A ((C+!(D))+!B)+!A (B (C+!(D)))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(15[14:17])
    defparam i8875_4_lut_4_lut_4_lut_4_lut.init = 16'he2ee;
    LUT4 i1_2_lut_rep_161 (.A(rst_d_N_267_c), .B(init_adj_363), .Z(n10153)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(15[14:17])
    defparam i1_2_lut_rep_161.init = 16'h2222;
    LUT4 i3_4_lut_then_4_lut (.A(idle[9]), .B(n6419), .C(n6610), .D(init_adj_363), 
         .Z(n10162)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam i3_4_lut_then_4_lut.init = 16'h0100;
    LUT4 i3_4_lut_else_4_lut (.A(idle[9]), .B(n6419), .C(rst_d), .Z(n10161)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam i3_4_lut_else_4_lut.init = 16'h1010;
    LUT4 i3_4_lut (.A(n10094), .B(n6610), .C(n925), .D(n9195), .Z(n2188)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i3_4_lut.init = 16'hfffd;
    LUT4 i1978_2_lut_3_lut_4_lut (.A(\wave[1] ), .B(wave[2]), .C(wave[4]), 
         .D(\wave[3] ), .Z(n10)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;
    defparam i1978_2_lut_3_lut_4_lut.init = 16'hfff8;
    LUT4 i1947_2_lut_rep_141_3_lut (.A(\wave[1] ), .B(wave[2]), .C(\wave[3] ), 
         .Z(n10133)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam i1947_2_lut_rep_141_3_lut.init = 16'hf8f8;
    LUT4 i1970_3_lut_4_lut (.A(\wave[1] ), .B(wave[2]), .C(\wave[3] ), 
         .D(wave[4]), .Z(n10_adj_364)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (D)) */ ;
    defparam i1970_3_lut_4_lut.init = 16'hff80;
    LUT4 i1_2_lut_rep_162 (.A(\wave[7] ), .B(\wave[8] ), .Z(n10154)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam i1_2_lut_rep_162.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_adj_59 (.A(\wave[7] ), .B(\wave[8] ), .C(wave[9]), 
         .Z(n3617)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam i1_2_lut_3_lut_adj_59.init = 16'hfefe;
    LUT4 i83_2_lut_3_lut_3_lut_rep_167 (.A(rst_d_N_267_c), .B(init_adj_363), 
         .C(rst_d), .Z(n10575)) /* synthesis lut_function=(!(A (B)+!A (C))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(15[14:17])
    defparam i83_2_lut_3_lut_3_lut_rep_167.init = 16'h2727;
    LUT4 i1_2_lut_2_lut_3_lut_2_lut (.A(rst_d_N_267_c), .B(rst_d), .Z(n4330)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(15[14:17])
    defparam i1_2_lut_2_lut_3_lut_2_lut.init = 16'h4444;
    LUT4 i1_4_lut_adj_60 (.A(n6475), .B(n9257), .C(n9322), .D(idle[4]), 
         .Z(n6595)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i1_4_lut_adj_60.init = 16'hc8c0;
    LUT4 i1_2_lut_adj_61 (.A(idle[5]), .B(idle[7]), .Z(n9322)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(26[12:16])
    defparam i1_2_lut_adj_61.init = 16'heeee;
    LUT4 i1_4_lut_adj_62 (.A(idle[1]), .B(n9257), .C(n9327), .D(n9278), 
         .Z(n6471)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i1_4_lut_adj_62.init = 16'hc8c0;
    LUT4 i5746_4_lut (.A(n10_adj_365), .B(\wave[7] ), .C(\wave[6] ), .D(\wave[5] ), 
         .Z(n6407)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i5746_4_lut.init = 16'hfcec;
    LUT4 i1_2_lut_adj_63 (.A(\wave[3] ), .B(wave[2]), .Z(n3588)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_63.init = 16'heeee;
    LUT4 i1908_4_lut (.A(n10133), .B(\wave[6] ), .C(\wave[5] ), .D(wave[4]), 
         .Z(n14)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i1908_4_lut.init = 16'hc8c0;
    LUT4 i2_4_lut (.A(wave_c[12]), .B(n10080), .C(n6), .D(\wave[6] ), 
         .Z(n6_adj_366)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i2_4_lut.init = 16'h0040;
    LUT4 i2_4_lut_adj_64 (.A(n3617), .B(\idle[11] ), .C(n9452), .D(n10_adj_367), 
         .Z(n6)) /* synthesis lut_function=(!(A+(B (C)+!B (C+!(D))))) */ ;
    defparam i2_4_lut_adj_64.init = 16'h0504;
    LUT4 i8709_4_lut (.A(wave[2]), .B(\wave[3] ), .C(wave[4]), .D(\wave[5] ), 
         .Z(n9452)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i8709_4_lut.init = 16'h8000;
    LUT4 i668_3_lut_4_lut (.A(n10095), .B(n10113), .C(n2382), .D(n10096), 
         .Z(n891)) /* synthesis lut_function=(!(A (B (D)+!B !(C+!(D)))+!A !(C+!(D)))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(120[9] 259[7])
    defparam i668_3_lut_4_lut.init = 16'h70ff;
    LUT4 rst_d_bdd_3_lut_4_lut (.A(n10433), .B(init), .C(rst_d_N_267_c), 
         .D(rst_d), .Z(n10435)) /* synthesis lut_function=(A (C+(D))+!A !(B (C+!(D))+!B !(C+(D)))) */ ;
    defparam rst_d_bdd_3_lut_4_lut.init = 16'hbfb0;
    LUT4 i4_4_lut (.A(n3588), .B(n9197), .C(\wave[1] ), .D(n6_adj_368), 
         .Z(n9)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_65 (.A(\wave[0] ), .B(n10127), .C(n3617), .D(\wave[6] ), 
         .Z(n9197)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1_4_lut_adj_65.init = 16'hfffd;
    LUT4 i1_2_lut_adj_66 (.A(wave[4]), .B(\wave[5] ), .Z(n6_adj_368)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_66.init = 16'heeee;
    LUT4 i8909_2_lut_3_lut_4_lut (.A(n9863), .B(n10072), .C(VDAC_clk_c_enable_152), 
         .D(n1604), .Z(n7372)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam i8909_2_lut_3_lut_4_lut.init = 16'h80f0;
    LUT4 i1_4_lut_adj_67 (.A(n3519), .B(n10135), .C(wave[9]), .D(n10154), 
         .Z(n3582)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_67.init = 16'hfcec;
    FD1P3IX iter_1713__i7 (.D(n37[7]), .SP(VDAC_clk_c_enable_153), .CD(n3950), 
            .CK(VDAC_clk_c), .Q(iter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(133[15:23])
    defparam iter_1713__i7.GSR = "ENABLED";
    FD1P3IX iter_1713__i5 (.D(n37[5]), .SP(VDAC_clk_c_enable_153), .CD(n3950), 
            .CK(VDAC_clk_c), .Q(iter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(133[15:23])
    defparam iter_1713__i5.GSR = "ENABLED";
    LUT4 i8898_4_lut (.A(\idle[8] ), .B(\idle[10] ), .C(\idle[1] ), .D(\idle[2] ), 
         .Z(n9621)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i8898_4_lut.init = 16'h0001;
    PFUMX i23 (.BLUT(n627[0]), .ALUT(n61), .C0(n10085), .Z(n27));
    LUT4 i1973_4_lut (.A(n10), .B(wave[9]), .C(n10154), .D(n10136), 
         .Z(n20)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i1973_4_lut.init = 16'hc8c0;
    LUT4 i1_2_lut_adj_68 (.A(n125_adj_373), .B(wave_c[12]), .Z(n4_c)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(32[13:19])
    defparam i1_2_lut_adj_68.init = 16'heeee;
    CCU2D add_136_9 (.A0(\wave[7] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\wave[8] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8335), .COUT(n8336), .S0(n839[7]), .S1(n839[8]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(218[13:24])
    defparam add_136_9.INIT0 = 16'h5aaa;
    defparam add_136_9.INIT1 = 16'h5aaa;
    defparam add_136_9.INJECT1_0 = "NO";
    defparam add_136_9.INJECT1_1 = "NO";
    FD1P3IX idle_start_1714__i0 (.D(n105[0]), .SP(VDAC_clk_c_enable_139), 
            .CD(n3985), .CK(VDAC_clk_c), .Q(idle_start[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1714__i0.GSR = "ENABLED";
    LUT4 n10108_bdd_4_lut (.A(n10108), .B(n10132), .C(n47_c), .D(n8501), 
         .Z(n10433)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam n10108_bdd_4_lut.init = 16'h0200;
    LUT4 i538_2_lut_rep_76_4_lut (.A(init_adj_363), .B(n10081), .C(n10075), 
         .D(rst_d_N_267_c), .Z(VDAC_clk_c_enable_153)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(106[8] 261[6])
    defparam i538_2_lut_rep_76_4_lut.init = 16'h0800;
    FD1P3JX wave_i0_i1 (.D(n1605[1]), .SP(VDAC_clk_c_enable_152), .PD(n3973), 
            .CK(VDAC_clk_c), .Q(\wave[1] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=60 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam wave_i0_i1.GSR = "ENABLED";
    FD1P3IX wave_i0_i7 (.D(n839[7]), .SP(VDAC_clk_c_enable_152), .CD(n7372), 
            .CK(VDAC_clk_c), .Q(\wave[7] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=60 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam wave_i0_i7.GSR = "ENABLED";
    LUT4 i3287_2_lut_3_lut_3_lut (.A(n10122), .B(rst_d_N_267_c), .C(n10070), 
         .Z(n3950)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(134[10:18])
    defparam i3287_2_lut_3_lut_3_lut.init = 16'h4040;
    LUT4 i1_4_lut_adj_69 (.A(n9240), .B(n10575), .C(n10573), .D(n10110), 
         .Z(n7361)) /* synthesis lut_function=(!(A (B)+!A (B+!(C+(D))))) */ ;
    defparam i1_4_lut_adj_69.init = 16'h3332;
    LUT4 i1_2_lut_adj_70 (.A(n7376), .B(n936), .Z(n1792)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_70.init = 16'h4444;
    LUT4 i5581_2_lut (.A(n839[4]), .B(n1604), .Z(n1605[4])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(60[2] 262[5])
    defparam i5581_2_lut.init = 16'h8888;
    LUT4 i1483_3_lut (.A(rst_d), .B(init_adj_363), .C(rst_d_N_267_c), 
         .Z(VDAC_clk_c_enable_139)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(60[2] 262[5])
    defparam i1483_3_lut.init = 16'h3a3a;
    LUT4 n3527_bdd_4_lut (.A(n10071), .B(n10089), .C(n10105), .D(n10109), 
         .Z(n9837)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam n3527_bdd_4_lut.init = 16'h1000;
    LUT4 n9837_bdd_2_lut (.A(n9837), .B(n14_adj_374), .Z(n9838)) /* synthesis lut_function=(A+(B)) */ ;
    defparam n9837_bdd_2_lut.init = 16'heeee;
    LUT4 i5579_2_lut (.A(n839[1]), .B(n1604), .Z(n1605[1])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(60[2] 262[5])
    defparam i5579_2_lut.init = 16'h8888;
    CCU2D idle_start_1714_add_4_15 (.A0(idle_start[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(idle_start[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8377), .COUT(n8378), .S0(n105[13]), .S1(n105[14]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1714_add_4_15.INIT0 = 16'hfaaa;
    defparam idle_start_1714_add_4_15.INIT1 = 16'hfaaa;
    defparam idle_start_1714_add_4_15.INJECT1_0 = "NO";
    defparam idle_start_1714_add_4_15.INJECT1_1 = "NO";
    LUT4 i2_4_lut_adj_71 (.A(init_adj_363), .B(n2188), .C(rst_d_N_267_c), 
         .D(n52), .Z(RGB_1__N_6[0])) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C)))) */ ;
    defparam i2_4_lut_adj_71.init = 16'h7f5f;
    LUT4 i1_2_lut_rep_160 (.A(rst_d_N_267_c), .B(rst_d), .Z(VDAC_clk_c_enable_122)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_160.init = 16'heeee;
    FD1P3AX lvlq_i0 (.D(RGB_1__N_6[0]), .SP(VDAC_clk_c_enable_148), .CK(VDAC_clk_c), 
            .Q(levelP[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=60 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam lvlq_i0.GSR = "ENABLED";
    LUT4 i5_4_lut (.A(iter[0]), .B(n10_adj_376), .C(iter[4]), .D(iter[1]), 
         .Z(n12)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;
    defparam i5_4_lut.init = 16'hfefc;
    LUT4 i3_2_lut (.A(iter[5]), .B(iter[7]), .Z(n10_adj_376)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3_2_lut.init = 16'heeee;
    FD1P3IX iter_1713__i0 (.D(n37[0]), .SP(VDAC_clk_c_enable_153), .CD(n3950), 
            .CK(VDAC_clk_c), .Q(iter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(133[15:23])
    defparam iter_1713__i0.GSR = "ENABLED";
    CCU2D add_136_7 (.A0(\wave[5] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\wave[6] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8334), .COUT(n8335), .S0(n839[5]), .S1(n839[6]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(218[13:24])
    defparam add_136_7.INIT0 = 16'h5aaa;
    defparam add_136_7.INIT1 = 16'h5aaa;
    defparam add_136_7.INJECT1_0 = "NO";
    defparam add_136_7.INJECT1_1 = "NO";
    LUT4 i5623_2_lut_rep_118 (.A(n2), .B(\idle[11] ), .Z(n10110)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5623_2_lut_rep_118.init = 16'heeee;
    LUT4 i5584_2_lut (.A(n839[8]), .B(n1604), .Z(n1605[8])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(60[2] 262[5])
    defparam i5584_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n2), .B(\idle[11] ), .C(n926[5]), .D(n3667), 
         .Z(n1666[5])) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_72 (.A(n2), .B(\idle[11] ), .C(n926[0]), 
         .D(n3667), .Z(n1666[0])) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_72.init = 16'h1000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_73 (.A(n2), .B(\idle[11] ), .C(n926[8]), 
         .D(n3667), .Z(n1666[8])) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_73.init = 16'h1000;
    LUT4 i5318_3_lut (.A(Button_c_0), .B(rst_d_N_267_c), .C(n10070), .Z(lvld_1__N_18[0])) /* synthesis lut_function=(A ((C)+!B)+!A !(B)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(60[2] 262[5])
    defparam i5318_3_lut.init = 16'hb3b3;
    LUT4 i2_3_lut_4_lut_4_lut (.A(n10085), .B(n9378), .C(n9371), .D(n10101), 
         .Z(n9214)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i2_3_lut_4_lut_4_lut.init = 16'h0004;
    CCU2D idle_start_1714_add_4_13 (.A0(idle_start[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(idle_start[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8376), .COUT(n8377), .S0(n105[11]), .S1(n105[12]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1714_add_4_13.INIT0 = 16'hfaaa;
    defparam idle_start_1714_add_4_13.INIT1 = 16'hfaaa;
    defparam idle_start_1714_add_4_13.INJECT1_0 = "NO";
    defparam idle_start_1714_add_4_13.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut_adj_74 (.A(n2), .B(\idle[11] ), .C(n926[2]), 
         .D(n3667), .Z(n1666[2])) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_74.init = 16'h1000;
    CCU2D idle_start_1714_add_4_11 (.A0(idle_start[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(idle_start[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8375), .COUT(n8376), .S0(n105[9]), .S1(n105[10]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1714_add_4_11.INIT0 = 16'hfaaa;
    defparam idle_start_1714_add_4_11.INIT1 = 16'hfaaa;
    defparam idle_start_1714_add_4_11.INJECT1_0 = "NO";
    defparam idle_start_1714_add_4_11.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_75 (.A(rst_d_N_267_c), .B(rst_d), .C(n10101), .D(init_adj_363), 
         .Z(VDAC_clk_c_enable_18)) /* synthesis lut_function=(A (C+!(D))+!A (B)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(32[5:10])
    defparam i1_4_lut_adj_75.init = 16'he4ee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_76 (.A(n2), .B(\idle[11] ), .C(n926[10]), 
         .D(n3667), .Z(n1666[10])) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_76.init = 16'h1000;
    LUT4 i1_4_lut_rep_119 (.A(n14), .B(n10127), .C(wave[9]), .D(n10154), 
         .Z(n10111)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut_rep_119.init = 16'hfcec;
    LUT4 n3464_bdd_1_lut_8945_4_lut (.A(n14), .B(n10127), .C(wave[9]), 
         .D(n10154), .Z(n9782)) /* synthesis lut_function=(!(A (B+(C))+!A (B+(C (D))))) */ ;
    defparam n3464_bdd_1_lut_8945_4_lut.init = 16'h0313;
    LUT4 i5_4_lut_adj_77 (.A(n3442), .B(n7), .C(idle_start[14]), .D(n9424), 
         .Z(n49)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(90[12:34])
    defparam i5_4_lut_adj_77.init = 16'hfeff;
    LUT4 i5582_2_lut (.A(n839[5]), .B(n1604), .Z(n1605[5])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(60[2] 262[5])
    defparam i5582_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_4_lut (.A(init_adj_363), .B(n10081), .C(n10075), .D(n9284), 
         .Z(lvld_1__N_18[1])) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(106[8] 261[6])
    defparam i1_2_lut_4_lut.init = 16'h0800;
    LUT4 i8842_2_lut_rep_121 (.A(n6471), .B(\idle[11] ), .Z(n10113)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i8842_2_lut_rep_121.init = 16'h1111;
    LUT4 i3353_3_lut_4_lut (.A(eoco_c), .B(n49), .C(n10573), .D(VDAC_clk_c_enable_139), 
         .Z(n3985)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (D))) */ ;
    defparam i3353_3_lut_4_lut.init = 16'hf100;
    LUT4 i1_3_lut_4_lut_4_lut (.A(n6471), .B(\idle[11] ), .C(n6553), .D(n10095), 
         .Z(n925)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_3_lut_4_lut_4_lut.init = 16'h1000;
    LUT4 i5430_2_lut_3_lut (.A(eoco_c), .B(n49), .C(init_adj_363), .Z(init_N_264)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i5430_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i8836_2_lut_rep_122 (.A(n6595), .B(\idle[11] ), .Z(n10114)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i8836_2_lut_rep_122.init = 16'h1111;
    LUT4 i1_2_lut_adj_78 (.A(idle_start[11]), .B(idle_start[12]), .Z(n7)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(90[12:34])
    defparam i1_2_lut_adj_78.init = 16'heeee;
    LUT4 i8887_2_lut_rep_88_2_lut_3_lut (.A(n6595), .B(\idle[11] ), .C(n10100), 
         .Z(n10080)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i8887_2_lut_rep_88_2_lut_3_lut.init = 16'h0101;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(n10127), .B(lvld[1]), .C(n10137), 
         .D(n6407), .Z(n62)) /* synthesis lut_function=(!(A+((C (D))+!B))) */ ;
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'h0444;
    LUT4 i8682_3_lut (.A(idle_start[10]), .B(idle_start[19]), .C(idle_start[24]), 
         .Z(n9424)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i8682_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_79 (.A(n10127), .B(lvld[0]), .C(n10137), 
         .D(n6407), .Z(n61)) /* synthesis lut_function=(!(A+((C (D))+!B))) */ ;
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_79.init = 16'h0444;
    FD1P3JX wave_i0_i8 (.D(n1605[8]), .SP(VDAC_clk_c_enable_152), .PD(n3973), 
            .CK(VDAC_clk_c), .Q(\wave[8] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=60 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam wave_i0_i8.GSR = "ENABLED";
    FD1P3IX iter_1713__i6 (.D(n37[6]), .SP(VDAC_clk_c_enable_153), .CD(n3950), 
            .CK(VDAC_clk_c), .Q(iter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(133[15:23])
    defparam iter_1713__i6.GSR = "ENABLED";
    LUT4 i3_4_lut_adj_80 (.A(n13), .B(n9386), .C(idle_start[9]), .D(n14_adj_378), 
         .Z(n3442)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;
    defparam i3_4_lut_adj_80.init = 16'hffbf;
    LUT4 i8838_3_lut_3_lut (.A(rst_d_N_267_c), .B(rst_d), .C(n10070), 
         .Z(VDAC_clk_c_enable_68)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam i8838_3_lut_3_lut.init = 16'he4e4;
    LUT4 i5_4_lut_adj_81 (.A(idle_start[21]), .B(idle_start[8]), .C(idle_start[23]), 
         .D(idle_start[16]), .Z(n13)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(90[12:34])
    defparam i5_4_lut_adj_81.init = 16'hfffe;
    PFUMX mux_178_i2 (.BLUT(n9273), .ALUT(n834[1]), .C0(n10113), .Z(n1108[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=60 */ ;
    LUT4 i8644_2_lut (.A(idle_start[6]), .B(idle_start[13]), .Z(n9386)) /* synthesis lut_function=(A (B)) */ ;
    defparam i8644_2_lut.init = 16'h8888;
    CCU2D add_136_5 (.A0(\wave[3] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(wave[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8333), 
          .COUT(n8334), .S0(n839[3]), .S1(n839[4]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(218[13:24])
    defparam add_136_5.INIT0 = 16'h5aaa;
    defparam add_136_5.INIT1 = 16'h5aaa;
    defparam add_136_5.INJECT1_0 = "NO";
    defparam add_136_5.INJECT1_1 = "NO";
    LUT4 i6_4_lut (.A(idle_start[5]), .B(idle_start[4]), .C(idle_start[18]), 
         .D(n9161), .Z(n14_adj_378)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(90[12:34])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i7_4_lut (.A(n13_adj_379), .B(idle_start[2]), .C(n12_adj_380), 
         .D(idle_start[0]), .Z(n9161)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(100[13:34])
    defparam i7_4_lut.init = 16'hfffe;
    LUT4 n4_bdd_4_lut_8990 (.A(\idle[11] ), .B(n6523), .C(n1639), .D(n6493), 
         .Z(n9863)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam n4_bdd_4_lut_8990.init = 16'h0010;
    LUT4 i2_3_lut_rep_77_4_lut_4_lut (.A(n10132), .B(init), .C(n10073), 
         .D(n10108), .Z(n10069)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i2_3_lut_rep_77_4_lut_4_lut.init = 16'h0004;
    LUT4 i5_4_lut_adj_82 (.A(idle_start[1]), .B(idle_start[15]), .C(idle_start[22]), 
         .D(idle_start[17]), .Z(n13_adj_379)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(100[13:34])
    defparam i5_4_lut_adj_82.init = 16'hfffe;
    LUT4 i1_2_lut_rep_96_3_lut_3_lut (.A(n10132), .B(\idle[11]_adj_1 ), 
         .C(n6503), .Z(n10088)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i1_2_lut_rep_96_3_lut_3_lut.init = 16'h0101;
    LUT4 i3_3_lut_3_lut (.A(n10132), .B(n78), .C(n47_c), .Z(n9190)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i3_3_lut_3_lut.init = 16'h0404;
    CCU2D idle_start_1714_add_4_9 (.A0(idle_start[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(idle_start[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8374), .COUT(n8375), .S0(n105[7]), .S1(n105[8]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1714_add_4_9.INIT0 = 16'hfaaa;
    defparam idle_start_1714_add_4_9.INIT1 = 16'hfaaa;
    defparam idle_start_1714_add_4_9.INJECT1_0 = "NO";
    defparam idle_start_1714_add_4_9.INJECT1_1 = "NO";
    LUT4 i4_3_lut (.A(idle_start[3]), .B(idle_start[7]), .C(idle_start[20]), 
         .Z(n12_adj_380)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(100[13:34])
    defparam i4_3_lut.init = 16'hbfbf;
    CCU2D idle_start_1714_add_4_7 (.A0(idle_start[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(idle_start[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8373), .COUT(n8374), .S0(n105[5]), .S1(n105[6]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1714_add_4_7.INIT0 = 16'hfaaa;
    defparam idle_start_1714_add_4_7.INIT1 = 16'hfaaa;
    defparam idle_start_1714_add_4_7.INJECT1_0 = "NO";
    defparam idle_start_1714_add_4_7.INJECT1_1 = "NO";
    LUT4 i1_4_lut_4_lut (.A(n10083), .B(n10085), .C(n6_adj_366), .D(n5), 
         .Z(n9195)) /* synthesis lut_function=(A (C (D))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut_4_lut.init = 16'hf444;
    LUT4 i3_4_lut_adj_83 (.A(n10103), .B(n9190), .C(n10108), .D(n10151), 
         .Z(n9245)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(32[5:10])
    defparam i3_4_lut_adj_83.init = 16'h0800;
    CCU2D idle_start_1714_add_4_5 (.A0(idle_start[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(idle_start[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8372), .COUT(n8373), .S0(n105[3]), .S1(n105[4]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1714_add_4_5.INIT0 = 16'hfaaa;
    defparam idle_start_1714_add_4_5.INIT1 = 16'hfaaa;
    defparam idle_start_1714_add_4_5.INJECT1_0 = "NO";
    defparam idle_start_1714_add_4_5.INJECT1_1 = "NO";
    LUT4 i5583_2_lut (.A(n839[6]), .B(n1604), .Z(n1605[6])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(60[2] 262[5])
    defparam i5583_2_lut.init = 16'h8888;
    LUT4 i5585_2_lut (.A(n839[9]), .B(n1604), .Z(n1605[9])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(60[2] 262[5])
    defparam i5585_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_4_lut_adj_84 (.A(n10132), .B(n8555), .C(n1000), .D(n6575), 
         .Z(n47_c)) /* synthesis lut_function=(A (B+(D))+!A (B+(C+(D)))) */ ;
    defparam i1_4_lut_4_lut_adj_84.init = 16'hffdc;
    LUT4 i8856_4_lut_rep_130 (.A(iter[3]), .B(n12), .C(iter[2]), .D(iter[6]), 
         .Z(n10122)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(134[10:18])
    defparam i8856_4_lut_rep_130.init = 16'h0001;
    CCU2D idle_start_1714_add_4_3 (.A0(idle_start[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(idle_start[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8371), .COUT(n8372), .S0(n105[1]), .S1(n105[2]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1714_add_4_3.INIT0 = 16'hfaaa;
    defparam idle_start_1714_add_4_3.INIT1 = 16'hfaaa;
    defparam idle_start_1714_add_4_3.INJECT1_0 = "NO";
    defparam idle_start_1714_add_4_3.INJECT1_1 = "NO";
    CCU2D idle_start_1714_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(idle_start[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n8371), .S1(n105[0]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1714_add_4_1.INIT0 = 16'hF000;
    defparam idle_start_1714_add_4_1.INIT1 = 16'h0555;
    defparam idle_start_1714_add_4_1.INJECT1_0 = "NO";
    defparam idle_start_1714_add_4_1.INJECT1_1 = "NO";
    LUT4 i1_4_lut_4_lut_adj_85 (.A(n10132), .B(n10073), .C(n10097), .D(n10088), 
         .Z(n4)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_4_lut_adj_85.init = 16'hce0a;
    LUT4 i1_2_lut_rep_133 (.A(levelP[0]), .B(n116_adj_383), .Z(n10125)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_133.init = 16'h2222;
    LUT4 i1_2_lut_3_lut_4_lut_adj_86 (.A(levelP[0]), .B(n116_adj_383), .C(n125_adj_373), 
         .D(n10100), .Z(n627[0])) /* synthesis lut_function=(A ((C+(D))+!B)+!A (C+(D))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_86.init = 16'hfff2;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_87 (.A(n10132), .B(n939), .C(n10108), 
         .D(n10109), .Z(n8555)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_87.init = 16'h0010;
    CCU2D add_155_13 (.A0(\idle[11] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8344), 
          .S0(n926[11]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(249[15:26])
    defparam add_155_13.INIT0 = 16'h5aaa;
    defparam add_155_13.INIT1 = 16'h0000;
    defparam add_155_13.INJECT1_0 = "NO";
    defparam add_155_13.INJECT1_1 = "NO";
    LUT4 i4_4_lut_4_lut (.A(n10101), .B(n6610), .C(n10139), .D(n7_adj_384), 
         .Z(n9243)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i4_4_lut_4_lut.init = 16'h1000;
    LUT4 i2_3_lut_rep_82_4_lut_4_lut (.A(n10132), .B(n6433), .C(n1755), 
         .D(n10092), .Z(n10074)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i2_3_lut_rep_82_4_lut_4_lut.init = 16'h0010;
    LUT4 i1_2_lut_rep_87_3_lut_4_lut_4_lut_4_lut (.A(n10132), .B(n6503), 
         .C(\idle[11]_adj_1 ), .D(n10124), .Z(n10079)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_2_lut_rep_87_3_lut_4_lut_4_lut_4_lut.init = 16'h0004;
    LUT4 i5762_4_lut_4_lut (.A(n10132), .B(n6575), .C(n10145), .D(n10573), 
         .Z(VDAC_clk_c_enable_147)) /* synthesis lut_function=(A (C)+!A (B (C (D))+!B (C))) */ ;
    defparam i5762_4_lut_4_lut.init = 16'hf0b0;
    LUT4 i2_2_lut_4_lut_4_lut (.A(n10127), .B(n10081), .C(n1847), .D(n4_adj_385), 
         .Z(n3505)) /* synthesis lut_function=(!(A+((C (D))+!B))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(128[10] 147[8])
    defparam i2_2_lut_4_lut_4_lut.init = 16'h0444;
    LUT4 i8792_3_lut_rep_83_4_lut_4_lut (.A(n10127), .B(n1847), .C(n10137), 
         .D(n6407), .Z(n10075)) /* synthesis lut_function=(!(A+(B (C (D))))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(128[10] 147[8])
    defparam i8792_3_lut_rep_83_4_lut_4_lut.init = 16'h1555;
    LUT4 i1_2_lut_rep_106 (.A(n116_adj_383), .B(n125_adj_373), .Z(n10098)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_106.init = 16'heeee;
    LUT4 i1_4_lut_4_lut_adj_88 (.A(n10101), .B(n10111), .C(n40_adj_386), 
         .D(n3505), .Z(n9239)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A ((D)+!C))) */ ;
    defparam i1_4_lut_4_lut_adj_88.init = 16'h00d0;
    LUT4 i1_4_lut_adj_89 (.A(n10134), .B(n9257), .C(n9327), .D(n9278), 
         .Z(n6493)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i1_4_lut_adj_89.init = 16'hc8c0;
    LUT4 i5862_3_lut (.A(n6419), .B(idle[10]), .C(idle[9]), .Z(n6523)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i5862_3_lut.init = 16'hc8c8;
    LUT4 i1_4_lut_rep_74 (.A(n10575), .B(n5_adj_387), .C(n10573), .D(\idle[11] ), 
         .Z(VDAC_clk_c_enable_39)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;
    defparam i1_4_lut_rep_74.init = 16'h5554;
    LUT4 i5758_4_lut (.A(idle[3]), .B(idle[8]), .C(n10140), .D(n9251), 
         .Z(n6419)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i5758_4_lut.init = 16'hc8c0;
    LUT4 i5495_2_lut (.A(n839[0]), .B(n1604), .Z(n1605[0])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(60[2] 262[5])
    defparam i5495_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_rep_92_3_lut_4_lut (.A(n10135), .B(wave_c[12]), .C(n125_adj_373), 
         .D(n116_adj_383), .Z(n10084)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam i1_2_lut_rep_92_3_lut_4_lut.init = 16'hfffe;
    LUT4 i8850_2_lut_rep_91_3_lut_3_lut_4_lut (.A(n10135), .B(wave_c[12]), 
         .C(n6407), .D(n10137), .Z(n10083)) /* synthesis lut_function=(!(A+(B+(C (D))))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam i8850_2_lut_rep_91_3_lut_3_lut_4_lut.init = 16'h0111;
    LUT4 i5511_2_lut_3_lut_3_lut_4_lut (.A(n10098), .B(n10127), .C(levelP[1]), 
         .D(n10095), .Z(n834[1])) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B ((D)+!C)))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam i5511_2_lut_3_lut_3_lut_4_lut.init = 16'h00fe;
    CCU2D add_155_11 (.A0(idle[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(idle[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8343), 
          .COUT(n8344), .S0(n926[9]), .S1(n926[10]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(249[15:26])
    defparam add_155_11.INIT0 = 16'h5aaa;
    defparam add_155_11.INIT1 = 16'h5aaa;
    defparam add_155_11.INJECT1_0 = "NO";
    defparam add_155_11.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_90 (.A(idle[4]), .B(idle[5]), .Z(n9251)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_90.init = 16'h8888;
    CCU2D add_155_9 (.A0(idle[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(idle[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8342), 
          .COUT(n8343), .S0(n926[7]), .S1(n926[8]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(249[15:26])
    defparam add_155_9.INIT0 = 16'h5aaa;
    defparam add_155_9.INIT1 = 16'h5aaa;
    defparam add_155_9.INJECT1_0 = "NO";
    defparam add_155_9.INJECT1_1 = "NO";
    LUT4 i64_4_lut_4_lut (.A(n10113), .B(n10095), .C(n10084), .D(n10096), 
         .Z(n64)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A ((D)+!C))) */ ;
    defparam i64_4_lut_4_lut.init = 16'h20f0;
    LUT4 i8632_4_lut_4_lut (.A(n10114), .B(n10113), .C(n10095), .D(n10096), 
         .Z(n9374)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C (D))+!B (D))) */ ;
    defparam i8632_4_lut_4_lut.init = 16'hd100;
    LUT4 n9785_bdd_3_lut_4_lut (.A(n10099), .B(\idle[11] ), .C(n10075), 
         .D(n9785), .Z(n9786)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam n9785_bdd_3_lut_4_lut.init = 16'hfe10;
    LUT4 n9823_bdd_3_lut_3_lut_4_lut (.A(n10099), .B(\idle[11] ), .C(n9823), 
         .D(n10075), .Z(n9824)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(D))) */ ;
    defparam n9823_bdd_3_lut_3_lut_4_lut.init = 16'he0f1;
    LUT4 i8796_4_lut_4_lut (.A(n10101), .B(n10573), .C(n10575), .D(n6610), 
         .Z(VDAC_clk_c_enable_152)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C+(D))))) */ ;
    defparam i8796_4_lut_4_lut.init = 16'h0e0f;
    LUT4 i1_4_lut_4_lut_4_lut (.A(n10135), .B(n4_c), .C(n10125), .D(n10095), 
         .Z(n834[0])) /* synthesis lut_function=(!(A ((D)+!B)+!A (B (D)+!B ((D)+!C)))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam i1_4_lut_4_lut_4_lut.init = 16'h00dc;
    CCU2D add_136_3 (.A0(\wave[1] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(wave[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8332), 
          .COUT(n8333), .S0(n839[1]), .S1(n839[2]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(218[13:24])
    defparam add_136_3.INIT0 = 16'h5aaa;
    defparam add_136_3.INIT1 = 16'h5aaa;
    defparam add_136_3.INJECT1_0 = "NO";
    defparam add_136_3.INJECT1_1 = "NO";
    CCU2D add_155_7 (.A0(idle[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(idle[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8341), 
          .COUT(n8342), .S0(n926[5]), .S1(n926[6]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(249[15:26])
    defparam add_155_7.INIT0 = 16'h5aaa;
    defparam add_155_7.INIT1 = 16'h5aaa;
    defparam add_155_7.INJECT1_0 = "NO";
    defparam add_155_7.INJECT1_1 = "NO";
    LUT4 i8827_4_lut (.A(n15), .B(idle[9]), .C(n14_adj_388), .D(idle[10]), 
         .Z(n9550)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i8827_4_lut.init = 16'h0001;
    LUT4 i6_4_lut_adj_91 (.A(\idle[11] ), .B(idle[2]), .C(idle[3]), .D(idle[1]), 
         .Z(n15)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut_adj_91.init = 16'hfffe;
    CCU2D add_155_5 (.A0(idle[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(idle[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8340), 
          .COUT(n8341), .S0(n926[3]), .S1(n926[4]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(249[15:26])
    defparam add_155_5.INIT0 = 16'h5aaa;
    defparam add_155_5.INIT1 = 16'h5aaa;
    defparam add_155_5.INJECT1_0 = "NO";
    defparam add_155_5.INJECT1_1 = "NO";
    LUT4 i8900_4_lut_rep_140 (.A(n9621), .B(n9296), .C(n16), .D(n9312), 
         .Z(n10132)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i8900_4_lut_rep_140.init = 16'h0002;
    LUT4 i1_4_lut_adj_92 (.A(n10114), .B(n9), .C(n10093), .D(n116_adj_383), 
         .Z(n1062[0])) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))) */ ;
    defparam i1_4_lut_adj_92.init = 16'ha0a2;
    LUT4 i1_4_lut_adj_93 (.A(wave_c[12]), .B(n20), .C(n3582), .D(n10135), 
         .Z(n9230)) /* synthesis lut_function=(!((B (C)+!B (C+!(D)))+!A)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam i1_4_lut_adj_93.init = 16'h0a08;
    LUT4 i1_4_lut_adj_94 (.A(n10114), .B(n9), .C(n116_adj_383), .D(n10093), 
         .Z(n73)) /* synthesis lut_function=(A ((C+(D))+!B)) */ ;
    defparam i1_4_lut_adj_94.init = 16'haaa2;
    LUT4 i1_2_lut_3_lut_adj_95 (.A(idle[4]), .B(idle[5]), .C(idle[7]), 
         .Z(n9327)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut_adj_95.init = 16'hfefe;
    LUT4 i5_3_lut_4_lut (.A(idle[4]), .B(idle[5]), .C(idle[8]), .D(idle[0]), 
         .Z(n14_adj_388)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_3_lut_4_lut.init = 16'hfffe;
    LUT4 i5646_2_lut_rep_142 (.A(idle[0]), .B(idle[1]), .Z(n10134)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5646_2_lut_rep_142.init = 16'heeee;
    LUT4 i5814_3_lut_4_lut (.A(idle[0]), .B(idle[1]), .C(idle[2]), .D(idle[3]), 
         .Z(n6475)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i5814_3_lut_4_lut.init = 16'hffe0;
    LUT4 i1_2_lut_rep_143 (.A(wave_c[11]), .B(wave_c[10]), .Z(n10135)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam i1_2_lut_rep_143.init = 16'heeee;
    LUT4 i1_2_lut_rep_135_3_lut (.A(wave_c[11]), .B(wave_c[10]), .C(wave_c[12]), 
         .Z(n10127)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam i1_2_lut_rep_135_3_lut.init = 16'hfefe;
    LUT4 i5512_2_lut_3_lut_4_lut_4_lut (.A(n10100), .B(levelP[1]), .C(n10127), 
         .D(n10098), .Z(n627[1])) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;
    defparam i5512_2_lut_3_lut_4_lut_4_lut.init = 16'h5554;
    LUT4 i1_2_lut_3_lut_adj_96 (.A(wave_c[11]), .B(wave_c[10]), .C(n9), 
         .Z(n5)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam i1_2_lut_3_lut_adj_96.init = 16'h1010;
    LUT4 i8879_1_lut_rep_90_2_lut (.A(n6493), .B(\idle[11] ), .Z(n10082)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i8879_1_lut_rep_90_2_lut.init = 16'h1111;
    LUT4 i1946_3_lut_4_lut (.A(\wave[0] ), .B(\wave[1] ), .C(wave[2]), 
         .D(\wave[3] ), .Z(n8_adj_389)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (D)) */ ;
    defparam i1946_3_lut_4_lut.init = 16'hff80;
    LUT4 i1912_3_lut_4_lut (.A(\wave[0] ), .B(\wave[1] ), .C(n3588), .D(wave[4]), 
         .Z(n10_adj_365)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (C (D))) */ ;
    defparam i1912_3_lut_4_lut.init = 16'hf800;
    LUT4 i1_2_lut_rep_144 (.A(\wave[6] ), .B(\wave[5] ), .Z(n10136)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_144.init = 16'h8888;
    LUT4 i2_3_lut_4_lut_adj_97 (.A(\wave[6] ), .B(\wave[5] ), .C(n8_adj_389), 
         .D(wave[4]), .Z(n8431)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut_adj_97.init = 16'h8000;
    LUT4 i1_3_lut_4_lut (.A(\wave[6] ), .B(\wave[5] ), .C(wave[4]), .D(n8_adj_389), 
         .Z(n3519)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h8880;
    LUT4 i1_2_lut_rep_145 (.A(\wave[8] ), .B(wave[9]), .Z(n10137)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam i1_2_lut_rep_145.init = 16'h8888;
    LUT4 i1_2_lut_rep_101 (.A(n10100), .B(n125_adj_373), .Z(n10093)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(25[12:16])
    defparam i1_2_lut_rep_101.init = 16'heeee;
    PFUMX i8972 (.BLUT(n9839), .ALUT(n9838), .C0(n10108), .Z(n9840));
    LUT4 i2225_3_lut_4_lut (.A(init_adj_363), .B(n10101), .C(rst_d_N_267_c), 
         .D(rst_d), .Z(VDAC_clk_c_enable_88)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (C+(D))) */ ;
    defparam i2225_3_lut_4_lut.init = 16'hdfd0;
    LUT4 i3005_2_lut_3_lut (.A(rst_d_N_267_c), .B(init_adj_363), .C(n9825), 
         .Z(n3667)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(15[14:17])
    defparam i3005_2_lut_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_rep_147 (.A(rst_d_N_267_c), .B(init_adj_363), .Z(n10139)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(15[14:17])
    defparam i1_2_lut_rep_147.init = 16'h8888;
    LUT4 i2_3_lut_4_lut_4_lut_adj_98 (.A(rst_d_N_267_c), .B(init_adj_363), 
         .C(n10140), .D(n9550), .Z(n4322)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(15[14:17])
    defparam i2_3_lut_4_lut_4_lut_adj_98.init = 16'h0800;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut (.A(n116_adj_383), .B(n125_adj_373), 
         .C(n10114), .D(n10100), .Z(n9273)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;
    defparam i1_2_lut_3_lut_3_lut_4_lut.init = 16'h00e0;
    CCU2D add_136_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\wave[0] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n8332), .S1(n839[0]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(218[13:24])
    defparam add_136_1.INIT0 = 16'hF000;
    defparam add_136_1.INIT1 = 16'h5555;
    defparam add_136_1.INJECT1_0 = "NO";
    defparam add_136_1.INJECT1_1 = "NO";
    CCU2D add_155_3 (.A0(idle[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(idle[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8339), 
          .COUT(n8340), .S0(n926[1]), .S1(n926[2]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(249[15:26])
    defparam add_155_3.INIT0 = 16'h5aaa;
    defparam add_155_3.INIT1 = 16'h5aaa;
    defparam add_155_3.INJECT1_0 = "NO";
    defparam add_155_3.INJECT1_1 = "NO";
    CCU2D add_155_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(idle[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n8339), 
          .S1(n926[0]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(249[15:26])
    defparam add_155_1.INIT0 = 16'hF000;
    defparam add_155_1.INIT1 = 16'h5555;
    defparam add_155_1.INJECT1_0 = "NO";
    defparam add_155_1.INJECT1_1 = "NO";
    LUT4 i1_3_lut (.A(eoco_c), .B(n5_adj_390), .C(n49), .Z(n22)) /* synthesis lut_function=(!(A+!(B+!(C)))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(86[7:17])
    defparam i1_3_lut.init = 16'h4545;
    LUT4 i1_2_lut_rep_148 (.A(idle[7]), .B(idle[6]), .Z(n10140)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_148.init = 16'heeee;
    LUT4 i5812_4_lut (.A(n9252), .B(idle[9]), .C(idle[8]), .D(n10140), 
         .Z(n6473)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i5812_4_lut.init = 16'hfcec;
    LUT4 i5864_2_lut_rep_104 (.A(n6493), .B(\idle[11] ), .Z(n10096)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5864_2_lut_rep_104.init = 16'heeee;
    LUT4 VDAC_sync_c_bdd_2_lut_8952_3_lut (.A(rst_d_N_267_c), .B(init_adj_363), 
         .C(n9787), .Z(n1604)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(15[14:17])
    defparam VDAC_sync_c_bdd_2_lut_8952_3_lut.init = 16'h8080;
    LUT4 i1_4_lut_adj_99 (.A(idle[2]), .B(n9251), .C(idle[3]), .D(n4_adj_391), 
         .Z(n9252)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i1_4_lut_adj_99.init = 16'hc8c0;
    CCU2D iter_1713_add_4_9 (.A0(iter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8404), .S0(n37[7]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(133[15:23])
    defparam iter_1713_add_4_9.INIT0 = 16'hfaaa;
    defparam iter_1713_add_4_9.INIT1 = 16'h0000;
    defparam iter_1713_add_4_9.INJECT1_0 = "NO";
    defparam iter_1713_add_4_9.INJECT1_1 = "NO";
    LUT4 i5848_2_lut_rep_107 (.A(n6473), .B(idle[10]), .Z(n10099)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5848_2_lut_rep_107.init = 16'h8888;
    LUT4 i8829_2_lut_rep_109_3_lut (.A(idle[7]), .B(idle[6]), .C(n9550), 
         .Z(n10101)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i8829_2_lut_rep_109_3_lut.init = 16'h1010;
    LUT4 i1_2_lut_rep_80_2_lut_3_lut_4_lut (.A(n6473), .B(idle[10]), .C(n10101), 
         .D(\idle[11] ), .Z(n10072)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A (C+!(D)))) */ ;
    defparam i1_2_lut_rep_80_2_lut_3_lut_4_lut.init = 16'h0f08;
    LUT4 i1_2_lut_adj_100 (.A(rst_d_N_267_c), .B(eoco_c), .Z(n2970)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(15[14:17])
    defparam i1_2_lut_adj_100.init = 16'h2222;
    LUT4 i2_3_lut_4_lut_adj_101 (.A(n6473), .B(idle[10]), .C(n6471), .D(n6493), 
         .Z(n10_adj_367)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut_adj_101.init = 16'h8000;
    LUT4 i1_4_lut_adj_102 (.A(n9325), .B(n3599), .C(idle_start[10]), .D(n3442), 
         .Z(n5_adj_390)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_102.init = 16'hccc8;
    LUT4 i5891_2_lut_3_lut (.A(n6473), .B(idle[10]), .C(n6493), .Z(n6553)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i5891_2_lut_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_adj_103 (.A(idle[0]), .B(idle[1]), .Z(n4_adj_391)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_103.init = 16'h8888;
    LUT4 i1_4_lut_adj_104 (.A(n9326), .B(idle_start[16]), .C(n9458), .D(idle_start[5]), 
         .Z(n3599)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(100[13:34])
    defparam i1_4_lut_adj_104.init = 16'hbfff;
    LUT4 i6_4_lut_adj_105 (.A(n9325), .B(n12_adj_392), .C(idle_start[9]), 
         .D(idle_start[6]), .Z(n9326)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(100[13:34])
    defparam i6_4_lut_adj_105.init = 16'hfffe;
    LUT4 i5657_2_lut_rep_102_3_lut_4_lut (.A(idle[7]), .B(idle[6]), .C(init_adj_363), 
         .D(n9550), .Z(n10094)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !((D)+!C))) */ ;
    defparam i5657_2_lut_rep_102_3_lut_4_lut.init = 16'he0f0;
    LUT4 i8714_4_lut (.A(idle_start[18]), .B(idle_start[21]), .C(idle_start[8]), 
         .D(idle_start[4]), .Z(n9458)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i8714_4_lut.init = 16'h8000;
    LUT4 i5_4_lut_adj_106 (.A(idle_start[13]), .B(idle_start[10]), .C(idle_start[23]), 
         .D(n9161), .Z(n12_adj_392)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(100[13:34])
    defparam i5_4_lut_adj_106.init = 16'hffbf;
    LUT4 i8880_2_lut_2_lut_3_lut_3_lut_4_lut (.A(n6473), .B(idle[10]), .C(\idle[11] ), 
         .D(n6493), .Z(n9491)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C))+!A (C))) */ ;
    defparam i8880_2_lut_2_lut_3_lut_3_lut_4_lut.init = 16'h070f;
    LUT4 i8807_2_lut_3_lut_4_lut (.A(idle[7]), .B(idle[6]), .C(init_adj_363), 
         .D(n9550), .Z(n607)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i8807_2_lut_3_lut_4_lut.init = 16'hefff;
    LUT4 i8816_2_lut_rep_93_3_lut (.A(n6473), .B(idle[10]), .C(\idle[11] ), 
         .Z(n10085)) /* synthesis lut_function=(!(A (B+(C))+!A (C))) */ ;
    defparam i8816_2_lut_rep_93_3_lut.init = 16'h0707;
    LUT4 i1_4_lut_adj_107 (.A(n10140), .B(idle[8]), .C(idle[9]), .D(idle[10]), 
         .Z(n9257)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_107.init = 16'h8000;
    LUT4 i4_4_lut_adj_108 (.A(idle_start[11]), .B(idle_start[12]), .C(idle_start[14]), 
         .D(n6_adj_393), .Z(n9325)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(100[13:34])
    defparam i4_4_lut_adj_108.init = 16'hff7f;
    LUT4 i1_2_lut_adj_109 (.A(idle_start[24]), .B(idle_start[19]), .Z(n6_adj_393)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(100[13:34])
    defparam i1_2_lut_adj_109.init = 16'heeee;
    LUT4 i1_2_lut_adj_110 (.A(idle[3]), .B(idle[2]), .Z(n9278)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_110.init = 16'h8888;
    LUT4 i8846_3_lut_3_lut (.A(rst_d_N_267_c), .B(rst_d), .C(n10069), 
         .Z(VDAC_clk_c_enable_43)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam i8846_3_lut_3_lut.init = 16'he4e4;
    LUT4 i2_3_lut (.A(init_adj_363), .B(eoco_c), .C(n49), .Z(n8497)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam i2_3_lut.init = 16'hefef;
    LUT4 i3_4_lut_adj_111 (.A(rst_d_N_267_c), .B(idle_start[14]), .C(idle_start[10]), 
         .D(n9237), .Z(n9238)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam i3_4_lut_adj_111.init = 16'h0800;
    LUT4 i4_4_lut_adj_112 (.A(idle_start[11]), .B(idle_start[12]), .C(idle_start[24]), 
         .D(n9432), .Z(n9237)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam i4_4_lut_adj_112.init = 16'h0008;
    LUT4 i8689_2_lut (.A(idle_start[19]), .B(n3442), .Z(n9432)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i8689_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_rep_115_3_lut (.A(rst_d), .B(rst_d_N_267_c), .C(n9319), 
         .Z(n10107)) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(15[14:17])
    defparam i1_2_lut_rep_115_3_lut.init = 16'hf2f2;
    LUT4 i1_2_lut_rep_89_3_lut_3_lut_4_lut (.A(n6473), .B(idle[10]), .C(\idle[11] ), 
         .D(n10101), .Z(n10081)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (C+(D)))) */ ;
    defparam i1_2_lut_rep_89_3_lut_3_lut_4_lut.init = 16'h0007;
    LUT4 i1_3_lut_4_lut_adj_113 (.A(rst_d), .B(rst_d_N_267_c), .C(n3667), 
         .D(n9239), .Z(n9240)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A (C+!(D)))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(15[14:17])
    defparam i1_3_lut_4_lut_adj_113.init = 16'h2f00;
    LUT4 i1_4_lut_rep_108 (.A(n10127), .B(n8431), .C(n10137), .D(\wave[7] ), 
         .Z(n10100)) /* synthesis lut_function=(A+(B (C)+!B (C (D)))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam i1_4_lut_rep_108.init = 16'hfaea;
    LUT4 i1_3_lut_4_lut_adj_114 (.A(rst_d), .B(rst_d_N_267_c), .C(n7376), 
         .D(VDAC_clk_c_enable_138), .Z(n7378)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (C (D))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(15[14:17])
    defparam i1_3_lut_4_lut_adj_114.init = 16'hf200;
    LUT4 i8798_4_lut_4_lut (.A(rst_d_N_267_c), .B(rst_d), .C(n8497), .D(n5_adj_390), 
         .Z(VDAC_clk_c_enable_59)) /* synthesis lut_function=(!(A (C+(D))+!A !(B))) */ ;
    defparam i8798_4_lut_4_lut.init = 16'h444e;
    LUT4 i6_4_lut_adj_115 (.A(n11), .B(n9344), .C(n10101), .D(idle[10]), 
         .Z(n3973)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam i6_4_lut_adj_115.init = 16'h0200;
    LUT4 i39_4_lut (.A(rst_d), .B(init_adj_363), .C(rst_d_N_267_c), .D(n27_adj_394), 
         .Z(VDAC_clk_c_enable_76)) /* synthesis lut_function=(!(A (B (C (D)))+!A (B ((D)+!C)+!B !(C)))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(32[5:10])
    defparam i39_4_lut.init = 16'h3afa;
    LUT4 i2_4_lut_adj_116 (.A(n9378), .B(n9371), .C(n9374), .D(n10072), 
         .Z(n27_adj_394)) /* synthesis lut_function=(A (B)+!A (B+!(C+!(D)))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(32[5:10])
    defparam i2_4_lut_adj_116.init = 16'hcdcc;
    LUT4 i11_4_lut (.A(\idle_start[0] ), .B(\idle_start[1] ), .C(\idle_start[5] ), 
         .D(\idle_start[21] ), .Z(n29)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i11_4_lut.init = 16'hfffe;
    LUT4 i16_4_lut (.A(n31), .B(\idle_start[3] ), .C(n28), .D(\idle_start[8] ), 
         .Z(n34)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i16_4_lut.init = 16'hfffe;
    LUT4 i12_4_lut (.A(\idle_start[4] ), .B(\idle_start[22] ), .C(\idle_start[15] ), 
         .D(\idle_start[11] ), .Z(n30)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_rep_78_4_lut_4_lut (.A(n10101), .B(init_adj_363), .C(n10075), 
         .D(n10085), .Z(n10070)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i2_3_lut_rep_78_4_lut_4_lut.init = 16'h0400;
    LUT4 i13_4_lut (.A(\idle_start[17] ), .B(\idle_start[16] ), .C(\idle_start[14] ), 
         .D(\idle_start[2] ), .Z(n31)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13_4_lut.init = 16'hfffe;
    LUT4 i10_4_lut (.A(eoco_c), .B(\idle_start[18] ), .C(\idle_start[12] ), 
         .D(\idle_start[23] ), .Z(n28)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i10_4_lut.init = 16'hfffe;
    LUT4 i31_4_lut (.A(rst_d), .B(init_adj_363), .C(rst_d_N_267_c), .D(n9214), 
         .Z(n8739)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (B (C (D))+!B (C))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(32[5:10])
    defparam i31_4_lut.init = 16'hfa3a;
    LUT4 i8629_3_lut_3_lut_4_lut (.A(n9550), .B(n10140), .C(n925), .D(n6610), 
         .Z(n9371)) /* synthesis lut_function=(A (B (C+(D)))+!A (C+(D))) */ ;
    defparam i8629_3_lut_3_lut_4_lut.init = 16'hddd0;
    LUT4 i8636_4_lut (.A(n66), .B(n64), .C(n10100), .D(n10096), .Z(n9378)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+!((D)+!C))) */ ;
    defparam i8636_4_lut.init = 16'heefc;
    LUT4 i5940_4_lut (.A(\idle[11] ), .B(n6471), .C(n6595), .D(n6553), 
         .Z(n6610)) /* synthesis lut_function=(A+(B (C (D)))) */ ;
    defparam i5940_4_lut.init = 16'heaaa;
    LUT4 i1771_2_lut_rep_103 (.A(n3582), .B(wave_c[12]), .Z(n10095)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1771_2_lut_rep_103.init = 16'h8888;
    LUT4 i4_4_lut_adj_117 (.A(n10163), .B(rst_d_N_267_c), .C(n6473), .D(init_adj_363), 
         .Z(n11)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam i4_4_lut_adj_117.init = 16'h8000;
    LUT4 i1_4_lut_adj_118 (.A(\wave[6] ), .B(wave[2]), .C(n6_adj_412), 
         .D(wave[4]), .Z(n116_adj_383)) /* synthesis lut_function=(A+(B (C (D)))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(25[12:16])
    defparam i1_4_lut_adj_118.init = 16'heaaa;
    PFUMX mux_182_i2 (.BLUT(n627[1]), .ALUT(n62), .C0(n10085), .Z(n1141[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=60 */ ;
    LUT4 i8800_4_lut_4_lut (.A(rst_d_N_267_c), .B(rst_d), .C(n22), .D(init_adj_363), 
         .Z(VDAC_clk_c_enable_55)) /* synthesis lut_function=(!(A (C+(D))+!A !(B))) */ ;
    defparam i8800_4_lut_4_lut.init = 16'h444e;
    LUT4 i1_2_lut_adj_119 (.A(n2), .B(n9239), .Z(n5_adj_387)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_119.init = 16'heeee;
    LUT4 i2_2_lut (.A(\wave[5] ), .B(\wave[3] ), .Z(n6_adj_412)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut.init = 16'h8888;
    LUT4 i2_4_lut_adj_120 (.A(n10135), .B(n3617), .C(n10_adj_364), .D(n10136), 
         .Z(n125_adj_373)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i2_4_lut_adj_120.init = 16'hfeee;
    LUT4 i1_4_lut_adj_121 (.A(n10072), .B(n2382), .C(n10100), .D(n891), 
         .Z(n40_adj_386)) /* synthesis lut_function=((B (C+!(D))+!B (C (D)))+!A) */ ;
    defparam i1_4_lut_adj_121.init = 16'hf5dd;
    LUT4 i5907_2_lut_3_lut_4_lut (.A(n10131), .B(n3549), .C(n6575), .D(n10108), 
         .Z(n6571)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B (C)))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(32[5:10])
    defparam i5907_2_lut_3_lut_4_lut.init = 16'h0f01;
    LUT4 i34_4_lut (.A(n10105), .B(n10077), .C(n10109), .D(n47), .Z(n14_adj_374)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;
    defparam i34_4_lut.init = 16'h5c0c;
    LUT4 i2_3_lut_3_lut_4_lut (.A(n10131), .B(n3549), .C(n32), .D(\lvld[1] ), 
         .Z(n33)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(32[5:10])
    defparam i2_3_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 i2_4_lut_adj_122 (.A(n10085), .B(n925), .C(n4_adj_385), .D(n10127), 
         .Z(n7_adj_384)) /* synthesis lut_function=(!((B+!(C+(D)))+!A)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(13[14:22])
    defparam i2_4_lut_adj_122.init = 16'h2220;
    LUT4 i7426_3_lut_4_lut (.A(n10131), .B(n3549), .C(n10108), .D(n8501), 
         .Z(n78)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(32[5:10])
    defparam i7426_3_lut_4_lut.init = 16'hfe0e;
    LUT4 i2_3_lut_adj_123 (.A(\wave[8] ), .B(wave[9]), .C(n6407), .Z(n4_adj_385)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(13[14:22])
    defparam i2_3_lut_adj_123.init = 16'h8080;
    PFUMX i9083 (.BLUT(n10161), .ALUT(n10162), .C0(rst_d_N_267_c), .Z(n10163));
    LUT4 i8877_3_lut_4_lut_4_lut (.A(rst_d_N_267_c), .B(rst_d), .C(init), 
         .D(n10132), .Z(VDAC_clk_c_enable_42)) /* synthesis lut_function=(A ((D)+!C)+!A (B)) */ ;
    defparam i8877_3_lut_4_lut_4_lut.init = 16'hee4e;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PLL_block
//

module PLL_block (clk_c, clk_20MHz, VDAC_clk_c, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input clk_c;
    output clk_20MHz;
    output VDAC_clk_c;
    input GND_net;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(14[14:17])
    wire clk_20MHz /* synthesis SET_AS_NETWORK=clk_20MHz, is_clock=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(40[7:16])
    wire VDAC_clk_c /* synthesis SET_AS_NETWORK=VDAC_clk_c, is_clock=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(16[14:22])
    
    EHXPLLJ PLLInst_0 (.CLKI(clk_c), .CLKFB(VDAC_clk_c), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .LOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(GND_net), .RESETC(GND_net), .RESETD(GND_net), .RESETM(GND_net), 
            .ENCLKOP(GND_net), .ENCLKOS(GND_net), .ENCLKOS2(GND_net), 
            .ENCLKOS3(GND_net), .PLLCLK(GND_net), .PLLRST(GND_net), .PLLSTB(GND_net), 
            .PLLWE(GND_net), .PLLDATI0(GND_net), .PLLDATI1(GND_net), .PLLDATI2(GND_net), 
            .PLLDATI3(GND_net), .PLLDATI4(GND_net), .PLLDATI5(GND_net), 
            .PLLDATI6(GND_net), .PLLDATI7(GND_net), .PLLADDR0(GND_net), 
            .PLLADDR1(GND_net), .PLLADDR2(GND_net), .PLLADDR3(GND_net), 
            .PLLADDR4(GND_net), .CLKOP(clk_20MHz), .CLKOS(VDAC_clk_c)) /* synthesis FREQUENCY_PIN_CLKOS="20.000000", FREQUENCY_PIN_CLKOP="40.000000", FREQUENCY_PIN_CLKI="20.000000", ICP_CURRENT="6", LPF_RESISTOR="68", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=126, LSE_RLINE=130 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(126[11] 130[2])
    defparam PLLInst_0.CLKI_DIV = 1;
    defparam PLLInst_0.CLKFB_DIV = 1;
    defparam PLLInst_0.CLKOP_DIV = 5;
    defparam PLLInst_0.CLKOS_DIV = 10;
    defparam PLLInst_0.CLKOS2_DIV = 1;
    defparam PLLInst_0.CLKOS3_DIV = 1;
    defparam PLLInst_0.CLKOP_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS2_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS3_ENABLE = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_A0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_B0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_C0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_D0 = "DISABLED";
    defparam PLLInst_0.CLKOP_CPHASE = 4;
    defparam PLLInst_0.CLKOS_CPHASE = 9;
    defparam PLLInst_0.CLKOS2_CPHASE = 0;
    defparam PLLInst_0.CLKOS3_CPHASE = 0;
    defparam PLLInst_0.CLKOP_FPHASE = 0;
    defparam PLLInst_0.CLKOS_FPHASE = 0;
    defparam PLLInst_0.CLKOS2_FPHASE = 0;
    defparam PLLInst_0.CLKOS3_FPHASE = 0;
    defparam PLLInst_0.FEEDBK_PATH = "CLKOS";
    defparam PLLInst_0.FRACN_ENABLE = "DISABLED";
    defparam PLLInst_0.FRACN_DIV = 0;
    defparam PLLInst_0.CLKOP_TRIM_POL = "RISING";
    defparam PLLInst_0.CLKOP_TRIM_DELAY = 2;
    defparam PLLInst_0.CLKOS_TRIM_POL = "RISING";
    defparam PLLInst_0.CLKOS_TRIM_DELAY = 2;
    defparam PLLInst_0.PLL_USE_WB = "DISABLED";
    defparam PLLInst_0.PREDIVIDER_MUXA1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXB1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXC1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXD1 = 0;
    defparam PLLInst_0.OUTDIVIDER_MUXA2 = "DIVA";
    defparam PLLInst_0.OUTDIVIDER_MUXB2 = "DIVB";
    defparam PLLInst_0.OUTDIVIDER_MUXC2 = "DIVC";
    defparam PLLInst_0.OUTDIVIDER_MUXD2 = "DIVD";
    defparam PLLInst_0.PLL_LOCK_MODE = 0;
    defparam PLLInst_0.STDBY_ENABLE = "DISABLED";
    defparam PLLInst_0.DPHASE_SOURCE = "DISABLED";
    defparam PLLInst_0.PLLRST_ENA = "DISABLED";
    defparam PLLInst_0.MRST_ENA = "DISABLED";
    defparam PLLInst_0.DCRST_ENA = "DISABLED";
    defparam PLLInst_0.DDRST_ENA = "DISABLED";
    defparam PLLInst_0.INTFB_WAKE = "DISABLED";
    
endmodule
//
// Verilog Description of module DSI_Slave_U2
//

module DSI_Slave_U2 (n2817, VDAC_clk_c, DAC_6_c, n2815, n2816, n2818, 
            n2819, n2820, levelN, stateN) /* synthesis syn_module_defined=1 */ ;
    output n2817;
    input VDAC_clk_c;
    output DAC_6_c;
    output n2815;
    output n2816;
    output n2818;
    output n2819;
    output n2820;
    input [1:0]levelN;
    input [1:0]stateN;
    
    wire VDAC_clk_c /* synthesis SET_AS_NETWORK=VDAC_clk_c, is_clock=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(16[14:22])
    
    wire VDAC_clk_c_enable_64, n3942, n9159;
    wire [7:0]DAC_o_7__N_320;
    
    wire n2975;
    
    FD1P3IX DAC_i4 (.D(n9159), .SP(VDAC_clk_c_enable_64), .CD(n3942), 
            .CK(VDAC_clk_c), .Q(n2817)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=104, LSE_RLINE=110 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_slave.v(13[7] 79[4])
    defparam DAC_i4.GSR = "ENABLED";
    FD1P3AX DAC_i8 (.D(DAC_o_7__N_320[7]), .SP(VDAC_clk_c_enable_64), .CK(VDAC_clk_c), 
            .Q(DAC_6_c)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=104, LSE_RLINE=110 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_slave.v(13[7] 79[4])
    defparam DAC_i8.GSR = "ENABLED";
    FD1P3AX DAC_i6 (.D(DAC_o_7__N_320[5]), .SP(VDAC_clk_c_enable_64), .CK(VDAC_clk_c), 
            .Q(n2815)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=104, LSE_RLINE=110 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_slave.v(13[7] 79[4])
    defparam DAC_i6.GSR = "ENABLED";
    FD1P3AX DAC_i5 (.D(DAC_o_7__N_320[4]), .SP(VDAC_clk_c_enable_64), .CK(VDAC_clk_c), 
            .Q(n2816)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=104, LSE_RLINE=110 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_slave.v(13[7] 79[4])
    defparam DAC_i5.GSR = "ENABLED";
    FD1P3AX DAC_i3 (.D(DAC_o_7__N_320[2]), .SP(VDAC_clk_c_enable_64), .CK(VDAC_clk_c), 
            .Q(n2818)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=104, LSE_RLINE=110 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_slave.v(13[7] 79[4])
    defparam DAC_i3.GSR = "ENABLED";
    FD1P3AX DAC_i2 (.D(DAC_o_7__N_320[1]), .SP(VDAC_clk_c_enable_64), .CK(VDAC_clk_c), 
            .Q(n2819)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=104, LSE_RLINE=110 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_slave.v(13[7] 79[4])
    defparam DAC_i2.GSR = "ENABLED";
    FD1P3JX DAC_i1 (.D(n2975), .SP(VDAC_clk_c_enable_64), .PD(n3942), 
            .CK(VDAC_clk_c), .Q(n2820)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=104, LSE_RLINE=110 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_slave.v(13[7] 79[4])
    defparam DAC_i1.GSR = "ENABLED";
    LUT4 i12_3_lut (.A(levelN[1]), .B(stateN[1]), .C(levelN[0]), .Z(n9159)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_slave.v(49[3] 77[10])
    defparam i12_3_lut.init = 16'hc5c5;
    LUT4 i5493_2_lut (.A(stateN[0]), .B(stateN[1]), .Z(DAC_o_7__N_320[5])) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_slave.v(49[3] 77[10])
    defparam i5493_2_lut.init = 16'heeee;
    LUT4 i2_4_lut (.A(stateN[1]), .B(levelN[0]), .C(stateN[0]), .D(levelN[1]), 
         .Z(DAC_o_7__N_320[2])) /* synthesis lut_function=(A+(B (C+!(D))+!B (C+(D)))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_slave.v(49[3] 77[10])
    defparam i2_4_lut.init = 16'hfbfe;
    LUT4 mux_91_Mux_1_i15_4_lut (.A(levelN[1]), .B(levelN[0]), .C(stateN[1]), 
         .D(stateN[0]), .Z(DAC_o_7__N_320[1])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C+!(D)))+!A (C (D)))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_slave.v(49[3] 77[10])
    defparam mux_91_Mux_1_i15_4_lut.init = 16'h0fd5;
    LUT4 i1_3_lut_4_lut (.A(levelN[0]), .B(levelN[1]), .C(stateN[1]), 
         .D(stateN[0]), .Z(DAC_o_7__N_320[4])) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (C+(D)))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_slave.v(49[3] 77[10])
    defparam i1_3_lut_4_lut.init = 16'h008f;
    LUT4 i2336_3_lut_4_lut_3_lut (.A(levelN[0]), .B(levelN[1]), .C(stateN[1]), 
         .Z(n2975)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_slave.v(49[3] 77[10])
    defparam i2336_3_lut_4_lut_3_lut.init = 16'h8e8e;
    LUT4 i3274_2_lut_3_lut_4_lut_1_lut (.A(stateN[0]), .Z(n3942)) /* synthesis lut_function=(A) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_slave.v(49[3] 77[10])
    defparam i3274_2_lut_3_lut_4_lut_1_lut.init = 16'haaaa;
    LUT4 i1_2_lut_rep_138_3_lut_4_lut (.A(stateN[0]), .B(stateN[1]), .C(levelN[1]), 
         .D(levelN[0]), .Z(VDAC_clk_c_enable_64)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_slave.v(49[3] 77[10])
    defparam i1_2_lut_rep_138_3_lut_4_lut.init = 16'hfffb;
    LUT4 i1_2_lut_3_lut_4_lut (.A(stateN[0]), .B(stateN[1]), .C(levelN[1]), 
         .D(levelN[0]), .Z(DAC_o_7__N_320[7])) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_slave.v(49[3] 77[10])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h4000;
    
endmodule
//
// Verilog Description of module DSI_Protocol_U1
//

module DSI_Protocol_U1 (GND_net, \idle_start[14] , \idle_start[2] , VDAC_clk_c, 
            VDAC_clk_c_enable_147, \wave[9] , \idle_start[3] , rst_d, 
            rst_d_N_267_c, \idle_start[11] , \idle_start[12] , \idle_start[4] , 
            n10131, n10097, \wave[6] , \wave[5] , \wave[4] , stateN, 
            VDAC_clk_c_enable_30, n4451, n10435, n9245, \idle_start[5] , 
            init, VDAC_clk_c_enable_122, n10573, \sss[0] , VDAC_clk_c_enable_43, 
            MIPI_clkN_c, VDAC_clk_c_enable_42, \lvld[1] , \sss[1] , 
            n10577, \idle_start[8] , levelN, VDAC_clk_c_enable_52, RGB_1__N_6, 
            n9793, DAC_4_c_1, VDAC_clk_c_enable_58, \idle_start[17] , 
            \idle_start[18] , \wave[7] , \wave[8] , \idle_start[1] , 
            \idle_start[0] , n33, n10108, idle, \idle_start[22] , 
            \idle_start[23] , \wave[1] , \wave[2] , \idle_start[15] , 
            \wave[3] , \idle_start[16] , n10105, n10089, n924, VDAC_clk_c_enable_138, 
            n768, n10109, \idle[1] , n7378, \idle[2] , n1792, n1722, 
            n10074, \idle[8] , n16, \idle[10] , n6433, n9312, n6503, 
            n9296, VDAC_clk_c_enable_140, n7376, n9319, n939, n10077, 
            n6575, n10151, n9553, n10071, SerialN_c, n1000, n6571, 
            \wave[0] , n10132, n9796, n10073, n9797, n8501, n10124, 
            \idle_start[21] , n10092, n36, n3549, Button_c_0, n10069, 
            n936, Button_c_1, n9284, n10107, n4, n10145, n3851, 
            n32, n1859, n9839, n10088, n10079, n1755, n9815, n29, 
            n34, n30, n47, n10103) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output \idle_start[14] ;
    output \idle_start[2] ;
    input VDAC_clk_c;
    input VDAC_clk_c_enable_147;
    output \wave[9] ;
    output \idle_start[3] ;
    output rst_d;
    input rst_d_N_267_c;
    output \idle_start[11] ;
    output \idle_start[12] ;
    output \idle_start[4] ;
    output n10131;
    output n10097;
    output \wave[6] ;
    output \wave[5] ;
    output \wave[4] ;
    output [1:0]stateN;
    input VDAC_clk_c_enable_30;
    input n4451;
    input n10435;
    input n9245;
    output \idle_start[5] ;
    output init;
    input VDAC_clk_c_enable_122;
    output n10573;
    output \sss[0] ;
    input VDAC_clk_c_enable_43;
    output MIPI_clkN_c;
    input VDAC_clk_c_enable_42;
    output \lvld[1] ;
    output \sss[1] ;
    input n10577;
    output \idle_start[8] ;
    output [1:0]levelN;
    input VDAC_clk_c_enable_52;
    input [1:0]RGB_1__N_6;
    output n9793;
    output DAC_4_c_1;
    input VDAC_clk_c_enable_58;
    output \idle_start[17] ;
    output \idle_start[18] ;
    output \wave[7] ;
    output \wave[8] ;
    output \idle_start[1] ;
    output \idle_start[0] ;
    input n33;
    output n10108;
    output [11:0]idle;
    output \idle_start[22] ;
    output \idle_start[23] ;
    output \wave[1] ;
    output \wave[2] ;
    output \idle_start[15] ;
    output \wave[3] ;
    output \idle_start[16] ;
    output n10105;
    output n10089;
    output n924;
    output VDAC_clk_c_enable_138;
    output n768;
    output n10109;
    output \idle[1] ;
    input n7378;
    output \idle[2] ;
    input n1792;
    input n1722;
    input n10074;
    output \idle[8] ;
    output n16;
    output \idle[10] ;
    output n6433;
    output n9312;
    output n6503;
    output n9296;
    input VDAC_clk_c_enable_140;
    input n7376;
    output n9319;
    output n939;
    output n10077;
    output n6575;
    input n10151;
    output n9553;
    output n10071;
    input SerialN_c;
    output n1000;
    input n6571;
    output \wave[0] ;
    input n10132;
    input n9796;
    output n10073;
    output n9797;
    output n8501;
    output n10124;
    output \idle_start[21] ;
    output n10092;
    output n36;
    output n3549;
    input Button_c_0;
    input n10069;
    output n936;
    input Button_c_1;
    output n9284;
    input n10107;
    input n4;
    output n10145;
    output n3851;
    output n32;
    input n1859;
    output n9839;
    input n10088;
    input n10079;
    input n1755;
    output n9815;
    input n29;
    input n34;
    input n30;
    output n47;
    output n10103;
    
    wire VDAC_clk_c /* synthesis SET_AS_NETWORK=VDAC_clk_c, is_clock=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(16[14:22])
    
    wire n8364;
    wire [24:0]idle_start;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(27[12:22])
    wire [24:0]n105;
    
    wire n8365, VDAC_clk_c_enable_155, n3914;
    wire [12:0]wave;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(25[12:16])
    
    wire n4002;
    wire [12:0]n839;
    
    wire n8349, n8350, n8363, n8362, n14, n3591, n8, init_N_263, 
        VDAC_clk_c_enable_106, n10118;
    wire [1:0]lvld;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(23[11:15])
    wire [1:0]lvld_1__N_18;
    wire [7:0]MIPI_clk_DAC_7__N_10;
    
    wire n8361;
    wire [7:0]iter;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(35[11:15])
    
    wire n4016;
    wire [7:0]n37;
    
    wire n8360, n8348, n8359, n8358, n8400, n8399, n8398, n8397, 
        n8347, n40_adj_345, n38_adj_346, n8357;
    wire [11:0]n926;
    
    wire n4006;
    wire [12:0]n1723;
    
    wire n6447, n10076, n9180, n6443, n6519;
    wire [11:0]idle_c;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(26[12:16])
    wire [11:0]n1782;
    
    wire n9400, n9811, n35, n752, n6427, n9248, n10091, n8445, 
        n3115, n9315, n8457, n10147, n10146, n9266;
    wire [1:0]RGB_1__N_6_c;
    
    wire n54, n9420, n3887, n14_adj_347, n8_adj_348, n9267, n8606, 
        n6439, n6317, n9164, n9262, n4_c, n10086, n9216, n10116, 
        n9167, n9394, n9812, n9814, n4_adj_349, n66, n110_adj_350, 
        n41_adj_351, n8346, n10090, n10078, n73, n9224, n8356, 
        n9203, n4_adj_352, n10104, n9184, n4_adj_353, n3593, n10150, 
        n8_adj_354, n10149, n12, n10148, n3600, n4_adj_355, n12_adj_356, 
        n8345, n67, n10119, n8_adj_357, n8355, n8354, n8353, n8680, 
        n10, n8369, n8427, n8368, n8352, n10_adj_359, n8367, n4_adj_360, 
        n8366, n8409, n4_adj_361, n9446, n9362, n10_adj_362;
    
    CCU2D idle_start_1716_add_4_15 (.A0(idle_start[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\idle_start[14] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8364), .COUT(n8365), .S0(n105[13]), .S1(n105[14]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1716_add_4_15.INIT0 = 16'hfaaa;
    defparam idle_start_1716_add_4_15.INIT1 = 16'hfaaa;
    defparam idle_start_1716_add_4_15.INJECT1_0 = "NO";
    defparam idle_start_1716_add_4_15.INJECT1_1 = "NO";
    FD1P3IX idle_start_1716__i2 (.D(n105[2]), .SP(VDAC_clk_c_enable_155), 
            .CD(n3914), .CK(VDAC_clk_c), .Q(\idle_start[2] )) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1716__i2.GSR = "ENABLED";
    FD1P3IX wave_i0_i10 (.D(n839[10]), .SP(VDAC_clk_c_enable_147), .CD(n4002), 
            .CK(VDAC_clk_c), .Q(wave[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=75 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam wave_i0_i10.GSR = "ENABLED";
    CCU2D add_136_11 (.A0(\wave[9] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(wave[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8349), 
          .COUT(n8350), .S0(n839[9]), .S1(n839[10]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(218[13:24])
    defparam add_136_11.INIT0 = 16'h5aaa;
    defparam add_136_11.INIT1 = 16'h5aaa;
    defparam add_136_11.INJECT1_0 = "NO";
    defparam add_136_11.INJECT1_1 = "NO";
    FD1P3IX idle_start_1716__i3 (.D(n105[3]), .SP(VDAC_clk_c_enable_155), 
            .CD(n3914), .CK(VDAC_clk_c), .Q(\idle_start[3] )) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1716__i3.GSR = "ENABLED";
    FD1S3AX rst_d_264 (.D(rst_d_N_267_c), .CK(VDAC_clk_c), .Q(rst_d)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=60 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam rst_d_264.GSR = "ENABLED";
    CCU2D idle_start_1716_add_4_13 (.A0(\idle_start[11] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\idle_start[12] ), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n8363), .COUT(n8364), .S0(n105[11]), 
          .S1(n105[12]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1716_add_4_13.INIT0 = 16'hfaaa;
    defparam idle_start_1716_add_4_13.INIT1 = 16'hfaaa;
    defparam idle_start_1716_add_4_13.INJECT1_0 = "NO";
    defparam idle_start_1716_add_4_13.INJECT1_1 = "NO";
    FD1P3IX idle_start_1716__i4 (.D(n105[4]), .SP(VDAC_clk_c_enable_155), 
            .CD(n3914), .CK(VDAC_clk_c), .Q(\idle_start[4] )) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1716__i4.GSR = "ENABLED";
    CCU2D idle_start_1716_add_4_11 (.A0(idle_start[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(idle_start[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8362), .COUT(n8363), .S0(n105[9]), .S1(n105[10]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1716_add_4_11.INIT0 = 16'hfaaa;
    defparam idle_start_1716_add_4_11.INIT1 = 16'hfaaa;
    defparam idle_start_1716_add_4_11.INJECT1_0 = "NO";
    defparam idle_start_1716_add_4_11.INJECT1_1 = "NO";
    LUT4 i1_4_lut_rep_105 (.A(n14), .B(n10131), .C(\wave[9] ), .D(n3591), 
         .Z(n10097)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut_rep_105.init = 16'hfcec;
    LUT4 i1914_4_lut (.A(n8), .B(\wave[6] ), .C(\wave[5] ), .D(\wave[4] ), 
         .Z(n14)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i1914_4_lut.init = 16'hc8c0;
    FD1P3JX stateq_i1 (.D(n10435), .SP(VDAC_clk_c_enable_30), .PD(n4451), 
            .CK(VDAC_clk_c), .Q(stateN[1])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=75 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam stateq_i1.GSR = "ENABLED";
    FD1P3JX stateq_i0 (.D(n9245), .SP(VDAC_clk_c_enable_30), .PD(n4451), 
            .CK(VDAC_clk_c), .Q(stateN[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=75 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam stateq_i0.GSR = "ENABLED";
    FD1P3IX idle_start_1716__i5 (.D(n105[5]), .SP(VDAC_clk_c_enable_155), 
            .CD(n3914), .CK(VDAC_clk_c), .Q(\idle_start[5] )) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1716__i5.GSR = "ENABLED";
    FD1P3IX init_261 (.D(init_N_263), .SP(VDAC_clk_c_enable_122), .CD(n10573), 
            .CK(VDAC_clk_c), .Q(init)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=75 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam init_261.GSR = "ENABLED";
    FD1P3AY sss_i0 (.D(n10118), .SP(VDAC_clk_c_enable_106), .CK(VDAC_clk_c), 
            .Q(\sss[0] )) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=75 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam sss_i0.GSR = "ENABLED";
    FD1P3AY lvld_i0 (.D(lvld_1__N_18[0]), .SP(VDAC_clk_c_enable_43), .CK(VDAC_clk_c), 
            .Q(lvld[0])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=75 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam lvld_i0.GSR = "ENABLED";
    FD1P3AX MIPI_clk_d_265 (.D(MIPI_clk_DAC_7__N_10[0]), .SP(VDAC_clk_c_enable_42), 
            .CK(VDAC_clk_c), .Q(MIPI_clkN_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=75 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam MIPI_clk_d_265.GSR = "ENABLED";
    FD1P3AX lvld_i1 (.D(lvld_1__N_18[1]), .SP(VDAC_clk_c_enable_43), .CK(VDAC_clk_c), 
            .Q(\lvld[1] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=75 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam lvld_i1.GSR = "ENABLED";
    FD1P3AX sss_i1 (.D(n10577), .SP(VDAC_clk_c_enable_106), .CK(VDAC_clk_c), 
            .Q(\sss[1] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=75 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam sss_i1.GSR = "ENABLED";
    FD1P3IX idle_start_1716__i6 (.D(n105[6]), .SP(VDAC_clk_c_enable_155), 
            .CD(n3914), .CK(VDAC_clk_c), .Q(idle_start[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1716__i6.GSR = "ENABLED";
    CCU2D idle_start_1716_add_4_9 (.A0(idle_start[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\idle_start[8] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8361), .COUT(n8362), .S0(n105[7]), .S1(n105[8]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1716_add_4_9.INIT0 = 16'hfaaa;
    defparam idle_start_1716_add_4_9.INIT1 = 16'hfaaa;
    defparam idle_start_1716_add_4_9.INJECT1_0 = "NO";
    defparam idle_start_1716_add_4_9.INJECT1_1 = "NO";
    FD1P3AX lvlq_i0 (.D(RGB_1__N_6[0]), .SP(VDAC_clk_c_enable_52), .CK(VDAC_clk_c), 
            .Q(levelN[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=75 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam lvlq_i0.GSR = "ENABLED";
    FD1P3IX iter_1715__i7 (.D(n37[7]), .SP(VDAC_clk_c_enable_106), .CD(n4016), 
            .CK(VDAC_clk_c), .Q(iter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(133[15:23])
    defparam iter_1715__i7.GSR = "ENABLED";
    CCU2D idle_start_1716_add_4_7 (.A0(\idle_start[5] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(idle_start[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8360), .COUT(n8361), .S0(n105[5]), .S1(n105[6]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1716_add_4_7.INIT0 = 16'hfaaa;
    defparam idle_start_1716_add_4_7.INIT1 = 16'hfaaa;
    defparam idle_start_1716_add_4_7.INJECT1_0 = "NO";
    defparam idle_start_1716_add_4_7.INJECT1_1 = "NO";
    FD1P3IX iter_1715__i6 (.D(n37[6]), .SP(VDAC_clk_c_enable_106), .CD(n4016), 
            .CK(VDAC_clk_c), .Q(iter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(133[15:23])
    defparam iter_1715__i6.GSR = "ENABLED";
    FD1P3IX iter_1715__i5 (.D(n37[5]), .SP(VDAC_clk_c_enable_106), .CD(n4016), 
            .CK(VDAC_clk_c), .Q(iter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(133[15:23])
    defparam iter_1715__i5.GSR = "ENABLED";
    FD1P3IX iter_1715__i4 (.D(n37[4]), .SP(VDAC_clk_c_enable_106), .CD(n4016), 
            .CK(VDAC_clk_c), .Q(iter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(133[15:23])
    defparam iter_1715__i4.GSR = "ENABLED";
    LUT4 n3462_bdd_1_lut_8963_4_lut (.A(n14), .B(n10131), .C(\wave[9] ), 
         .D(n3591), .Z(n9793)) /* synthesis lut_function=(!(A (B+(C))+!A (B+(C (D))))) */ ;
    defparam n3462_bdd_1_lut_8963_4_lut.init = 16'h0313;
    FD1P3AX MIPI_clk_DAC_d_i2 (.D(MIPI_clk_DAC_7__N_10[2]), .SP(VDAC_clk_c_enable_58), 
            .CK(VDAC_clk_c), .Q(DAC_4_c_1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=75 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam MIPI_clk_DAC_d_i2.GSR = "ENABLED";
    FD1P3IX iter_1715__i3 (.D(n37[3]), .SP(VDAC_clk_c_enable_106), .CD(n4016), 
            .CK(VDAC_clk_c), .Q(iter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(133[15:23])
    defparam iter_1715__i3.GSR = "ENABLED";
    FD1P3IX iter_1715__i2 (.D(n37[2]), .SP(VDAC_clk_c_enable_106), .CD(n4016), 
            .CK(VDAC_clk_c), .Q(iter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(133[15:23])
    defparam iter_1715__i2.GSR = "ENABLED";
    FD1P3IX idle_start_1716__i17 (.D(n105[17]), .SP(VDAC_clk_c_enable_155), 
            .CD(n3914), .CK(VDAC_clk_c), .Q(\idle_start[17] )) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1716__i17.GSR = "ENABLED";
    FD1P3IX iter_1715__i1 (.D(n37[1]), .SP(VDAC_clk_c_enable_106), .CD(n4016), 
            .CK(VDAC_clk_c), .Q(iter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(133[15:23])
    defparam iter_1715__i1.GSR = "ENABLED";
    FD1P3IX idle_start_1716__i18 (.D(n105[18]), .SP(VDAC_clk_c_enable_155), 
            .CD(n3914), .CK(VDAC_clk_c), .Q(\idle_start[18] )) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1716__i18.GSR = "ENABLED";
    CCU2D add_136_9 (.A0(\wave[7] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\wave[8] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8348), .COUT(n8349), .S0(n839[7]), .S1(n839[8]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(218[13:24])
    defparam add_136_9.INIT0 = 16'h5aaa;
    defparam add_136_9.INIT1 = 16'h5aaa;
    defparam add_136_9.INJECT1_0 = "NO";
    defparam add_136_9.INJECT1_1 = "NO";
    CCU2D idle_start_1716_add_4_5 (.A0(\idle_start[3] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\idle_start[4] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8359), .COUT(n8360), .S0(n105[3]), .S1(n105[4]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1716_add_4_5.INIT0 = 16'hfaaa;
    defparam idle_start_1716_add_4_5.INIT1 = 16'hfaaa;
    defparam idle_start_1716_add_4_5.INJECT1_0 = "NO";
    defparam idle_start_1716_add_4_5.INJECT1_1 = "NO";
    CCU2D idle_start_1716_add_4_3 (.A0(\idle_start[1] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\idle_start[2] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8358), .COUT(n8359), .S0(n105[1]), .S1(n105[2]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1716_add_4_3.INIT0 = 16'hfaaa;
    defparam idle_start_1716_add_4_3.INIT1 = 16'hfaaa;
    defparam idle_start_1716_add_4_3.INJECT1_0 = "NO";
    defparam idle_start_1716_add_4_3.INJECT1_1 = "NO";
    CCU2D iter_1715_add_4_9 (.A0(iter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8400), .S0(n37[7]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(133[15:23])
    defparam iter_1715_add_4_9.INIT0 = 16'hfaaa;
    defparam iter_1715_add_4_9.INIT1 = 16'h0000;
    defparam iter_1715_add_4_9.INJECT1_0 = "NO";
    defparam iter_1715_add_4_9.INJECT1_1 = "NO";
    CCU2D iter_1715_add_4_7 (.A0(iter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(iter[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8399), .COUT(n8400), .S0(n37[5]), .S1(n37[6]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(133[15:23])
    defparam iter_1715_add_4_7.INIT0 = 16'hfaaa;
    defparam iter_1715_add_4_7.INIT1 = 16'hfaaa;
    defparam iter_1715_add_4_7.INJECT1_0 = "NO";
    defparam iter_1715_add_4_7.INJECT1_1 = "NO";
    FD1P3IX idle_start_1716__i7 (.D(n105[7]), .SP(VDAC_clk_c_enable_155), 
            .CD(n3914), .CK(VDAC_clk_c), .Q(idle_start[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1716__i7.GSR = "ENABLED";
    CCU2D iter_1715_add_4_5 (.A0(iter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(iter[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8398), .COUT(n8399), .S0(n37[3]), .S1(n37[4]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(133[15:23])
    defparam iter_1715_add_4_5.INIT0 = 16'hfaaa;
    defparam iter_1715_add_4_5.INIT1 = 16'hfaaa;
    defparam iter_1715_add_4_5.INJECT1_0 = "NO";
    defparam iter_1715_add_4_5.INJECT1_1 = "NO";
    CCU2D iter_1715_add_4_3 (.A0(iter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(iter[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8397), .COUT(n8398), .S0(n37[1]), .S1(n37[2]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(133[15:23])
    defparam iter_1715_add_4_3.INIT0 = 16'hfaaa;
    defparam iter_1715_add_4_3.INIT1 = 16'hfaaa;
    defparam iter_1715_add_4_3.INJECT1_0 = "NO";
    defparam iter_1715_add_4_3.INJECT1_1 = "NO";
    FD1P3IX idle_start_1716__i14 (.D(n105[14]), .SP(VDAC_clk_c_enable_155), 
            .CD(n3914), .CK(VDAC_clk_c), .Q(\idle_start[14] )) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1716__i14.GSR = "ENABLED";
    CCU2D idle_start_1716_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\idle_start[0] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n8358), .S1(n105[0]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1716_add_4_1.INIT0 = 16'hF000;
    defparam idle_start_1716_add_4_1.INIT1 = 16'h0555;
    defparam idle_start_1716_add_4_1.INJECT1_0 = "NO";
    defparam idle_start_1716_add_4_1.INJECT1_1 = "NO";
    CCU2D add_136_7 (.A0(\wave[5] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\wave[6] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8347), .COUT(n8348), .S0(n839[5]), .S1(n839[6]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(218[13:24])
    defparam add_136_7.INIT0 = 16'h5aaa;
    defparam add_136_7.INIT1 = 16'h5aaa;
    defparam add_136_7.INJECT1_0 = "NO";
    defparam add_136_7.INJECT1_1 = "NO";
    PFUMX i56 (.BLUT(n33), .ALUT(n40_adj_345), .C0(n10108), .Z(n38_adj_346));
    CCU2D add_155_13 (.A0(idle[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8357), 
          .S0(n926[11]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(249[15:26])
    defparam add_155_13.INIT0 = 16'h5aaa;
    defparam add_155_13.INIT1 = 16'h0000;
    defparam add_155_13.INJECT1_0 = "NO";
    defparam add_155_13.INJECT1_1 = "NO";
    FD1P3IX idle_start_1716__i11 (.D(n105[11]), .SP(VDAC_clk_c_enable_155), 
            .CD(n3914), .CK(VDAC_clk_c), .Q(\idle_start[11] )) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1716__i11.GSR = "ENABLED";
    FD1P3IX idle_start_1716__i22 (.D(n105[22]), .SP(VDAC_clk_c_enable_155), 
            .CD(n3914), .CK(VDAC_clk_c), .Q(\idle_start[22] )) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1716__i22.GSR = "ENABLED";
    FD1P3IX idle_start_1716__i23 (.D(n105[23]), .SP(VDAC_clk_c_enable_155), 
            .CD(n3914), .CK(VDAC_clk_c), .Q(\idle_start[23] )) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1716__i23.GSR = "ENABLED";
    FD1P3IX idle_start_1716__i24 (.D(n105[24]), .SP(VDAC_clk_c_enable_155), 
            .CD(n3914), .CK(VDAC_clk_c), .Q(idle_start[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1716__i24.GSR = "ENABLED";
    FD1P3IX iter_1715__i0 (.D(n37[0]), .SP(VDAC_clk_c_enable_106), .CD(n4016), 
            .CK(VDAC_clk_c), .Q(iter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(133[15:23])
    defparam iter_1715__i0.GSR = "ENABLED";
    FD1P3IX idle_start_1716__i19 (.D(n105[19]), .SP(VDAC_clk_c_enable_155), 
            .CD(n3914), .CK(VDAC_clk_c), .Q(idle_start[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1716__i19.GSR = "ENABLED";
    FD1P3JX wave_i0_i1 (.D(n1723[1]), .SP(VDAC_clk_c_enable_147), .PD(n4006), 
            .CK(VDAC_clk_c), .Q(\wave[1] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=75 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam wave_i0_i1.GSR = "ENABLED";
    FD1P3JX wave_i0_i2 (.D(n1723[2]), .SP(VDAC_clk_c_enable_147), .PD(n4006), 
            .CK(VDAC_clk_c), .Q(\wave[2] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=75 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam wave_i0_i2.GSR = "ENABLED";
    FD1P3JX wave_i0_i4 (.D(n1723[4]), .SP(VDAC_clk_c_enable_147), .PD(n4006), 
            .CK(VDAC_clk_c), .Q(\wave[4] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=75 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam wave_i0_i4.GSR = "ENABLED";
    FD1P3IX idle_start_1716__i15 (.D(n105[15]), .SP(VDAC_clk_c_enable_155), 
            .CD(n3914), .CK(VDAC_clk_c), .Q(\idle_start[15] )) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1716__i15.GSR = "ENABLED";
    FD1P3JX wave_i0_i6 (.D(n1723[6]), .SP(VDAC_clk_c_enable_147), .PD(n4006), 
            .CK(VDAC_clk_c), .Q(\wave[6] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=75 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam wave_i0_i6.GSR = "ENABLED";
    FD1P3JX wave_i0_i5 (.D(n1723[5]), .SP(VDAC_clk_c_enable_147), .PD(n4006), 
            .CK(VDAC_clk_c), .Q(\wave[5] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=75 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam wave_i0_i5.GSR = "ENABLED";
    FD1P3IX idle_start_1716__i20 (.D(n105[20]), .SP(VDAC_clk_c_enable_155), 
            .CD(n3914), .CK(VDAC_clk_c), .Q(idle_start[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1716__i20.GSR = "ENABLED";
    FD1P3IX wave_i0_i7 (.D(n839[7]), .SP(VDAC_clk_c_enable_147), .CD(n4002), 
            .CK(VDAC_clk_c), .Q(\wave[7] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=75 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam wave_i0_i7.GSR = "ENABLED";
    FD1P3IX wave_i0_i3 (.D(n839[3]), .SP(VDAC_clk_c_enable_147), .CD(n4002), 
            .CK(VDAC_clk_c), .Q(\wave[3] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=75 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam wave_i0_i3.GSR = "ENABLED";
    FD1P3JX wave_i0_i8 (.D(n1723[8]), .SP(VDAC_clk_c_enable_147), .PD(n4006), 
            .CK(VDAC_clk_c), .Q(\wave[8] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=75 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam wave_i0_i8.GSR = "ENABLED";
    CCU2D iter_1715_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(iter[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n8397), .S1(n37[0]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(133[15:23])
    defparam iter_1715_add_4_1.INIT0 = 16'hF000;
    defparam iter_1715_add_4_1.INIT1 = 16'h0555;
    defparam iter_1715_add_4_1.INJECT1_0 = "NO";
    defparam iter_1715_add_4_1.INJECT1_1 = "NO";
    FD1P3IX idle_start_1716__i12 (.D(n105[12]), .SP(VDAC_clk_c_enable_155), 
            .CD(n3914), .CK(VDAC_clk_c), .Q(\idle_start[12] )) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1716__i12.GSR = "ENABLED";
    FD1P3IX idle_start_1716__i16 (.D(n105[16]), .SP(VDAC_clk_c_enable_155), 
            .CD(n3914), .CK(VDAC_clk_c), .Q(\idle_start[16] )) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1716__i16.GSR = "ENABLED";
    LUT4 i5824_2_lut_rep_113 (.A(n6447), .B(idle[11]), .Z(n10105)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5824_2_lut_rep_113.init = 16'heeee;
    FD1P3JX wave_i0_i9 (.D(n1723[9]), .SP(VDAC_clk_c_enable_147), .PD(n4006), 
            .CK(VDAC_clk_c), .Q(\wave[9] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=75 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam wave_i0_i9.GSR = "ENABLED";
    FD1P3IX wave_i0_i11 (.D(n839[11]), .SP(VDAC_clk_c_enable_147), .CD(n4002), 
            .CK(VDAC_clk_c), .Q(wave[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=75 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam wave_i0_i11.GSR = "ENABLED";
    LUT4 i1_3_lut_rep_84_4_lut (.A(n6447), .B(idle[11]), .C(n10089), .D(n924), 
         .Z(n10076)) /* synthesis lut_function=(!(A (C+(D))+!A ((C+(D))+!B))) */ ;
    defparam i1_3_lut_rep_84_4_lut.init = 16'h000e;
    LUT4 i5858_2_lut_4_lut_4_lut (.A(n6447), .B(idle[11]), .C(n9180), 
         .D(n6443), .Z(n6519)) /* synthesis lut_function=((B+(C (D)))+!A) */ ;
    defparam i5858_2_lut_4_lut_4_lut.init = 16'hfddd;
    FD1P3JX idle_i0_i0 (.D(n1782[0]), .SP(VDAC_clk_c_enable_138), .PD(n10573), 
            .CK(VDAC_clk_c), .Q(idle_c[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=75 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam idle_i0_i0.GSR = "ENABLED";
    LUT4 i8658_3_lut_4_lut_4_lut (.A(n6447), .B(idle[11]), .C(n6443), 
         .D(n768), .Z(n9400)) /* synthesis lut_function=(A (C)+!A !(B+!(D))) */ ;
    defparam i8658_3_lut_4_lut_4_lut.init = 16'hb1a0;
    LUT4 n6487_bdd_4_lut_9022 (.A(n10089), .B(n10105), .C(n768), .D(n924), 
         .Z(n9811)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (D)+!B (C)))) */ ;
    defparam n6487_bdd_4_lut_9022.init = 16'h7430;
    FD1P3IX wave_i0_i12 (.D(n839[12]), .SP(VDAC_clk_c_enable_147), .CD(n4002), 
            .CK(VDAC_clk_c), .Q(wave[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=75 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam wave_i0_i12.GSR = "ENABLED";
    FD1P3IX idle_start_1716__i8 (.D(n105[8]), .SP(VDAC_clk_c_enable_155), 
            .CD(n3914), .CK(VDAC_clk_c), .Q(\idle_start[8] )) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1716__i8.GSR = "ENABLED";
    LUT4 i55_3_lut_4_lut (.A(n10105), .B(n924), .C(n10089), .D(n10109), 
         .Z(n35)) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B+(D)))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(120[9] 259[7])
    defparam i55_3_lut_4_lut.init = 16'h0233;
    FD1P3IX idle_i0_i1 (.D(n926[1]), .SP(VDAC_clk_c_enable_138), .CD(n7378), 
            .CK(VDAC_clk_c), .Q(\idle[1] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=75 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam idle_i0_i1.GSR = "ENABLED";
    FD1P3IX idle_i0_i3 (.D(n926[3]), .SP(VDAC_clk_c_enable_138), .CD(n7378), 
            .CK(VDAC_clk_c), .Q(idle_c[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=75 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam idle_i0_i3.GSR = "ENABLED";
    FD1P3JX idle_i0_i5 (.D(n1782[5]), .SP(VDAC_clk_c_enable_138), .PD(n10573), 
            .CK(VDAC_clk_c), .Q(idle_c[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=75 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam idle_i0_i5.GSR = "ENABLED";
    FD1P3JX idle_i0_i2 (.D(n1792), .SP(VDAC_clk_c_enable_138), .PD(n10573), 
            .CK(VDAC_clk_c), .Q(\idle[2] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=75 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam idle_i0_i2.GSR = "ENABLED";
    LUT4 i8852_2_lut_3_lut (.A(n1722), .B(n10074), .C(VDAC_clk_c_enable_147), 
         .Z(n4002)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i8852_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i5568_2_lut (.A(n839[1]), .B(n1722), .Z(n1723[1])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(60[2] 262[5])
    defparam i5568_2_lut.init = 16'h8888;
    LUT4 i5569_2_lut (.A(n839[2]), .B(n1722), .Z(n1723[2])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(60[2] 262[5])
    defparam i5569_2_lut.init = 16'h8888;
    FD1P3IX idle_i0_i4 (.D(n926[4]), .SP(VDAC_clk_c_enable_138), .CD(n7378), 
            .CK(VDAC_clk_c), .Q(idle_c[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=75 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam idle_i0_i4.GSR = "ENABLED";
    LUT4 i5570_2_lut (.A(n839[4]), .B(n1722), .Z(n1723[4])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(60[2] 262[5])
    defparam i5570_2_lut.init = 16'h8888;
    FD1P3IX idle_i0_i6 (.D(n926[6]), .SP(VDAC_clk_c_enable_138), .CD(n7378), 
            .CK(VDAC_clk_c), .Q(idle_c[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=75 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam idle_i0_i6.GSR = "ENABLED";
    LUT4 i5572_2_lut (.A(n839[6]), .B(n1722), .Z(n1723[6])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(60[2] 262[5])
    defparam i5572_2_lut.init = 16'h8888;
    LUT4 i5571_2_lut (.A(n839[5]), .B(n1722), .Z(n1723[5])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(60[2] 262[5])
    defparam i5571_2_lut.init = 16'h8888;
    LUT4 i5573_2_lut (.A(n839[8]), .B(n1722), .Z(n1723[8])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(60[2] 262[5])
    defparam i5573_2_lut.init = 16'h8888;
    FD1P3JX idle_i0_i8 (.D(n1782[8]), .SP(VDAC_clk_c_enable_138), .PD(n10573), 
            .CK(VDAC_clk_c), .Q(\idle[8] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=75 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam idle_i0_i8.GSR = "ENABLED";
    FD1P3IX idle_i0_i7 (.D(n926[7]), .SP(VDAC_clk_c_enable_138), .CD(n7378), 
            .CK(VDAC_clk_c), .Q(idle_c[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=75 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam idle_i0_i7.GSR = "ENABLED";
    LUT4 i5_1_lut_2_lut (.A(n6447), .B(idle[11]), .Z(n752)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i5_1_lut_2_lut.init = 16'h1111;
    LUT4 i6_4_lut (.A(idle_c[0]), .B(idle_c[3]), .C(idle[11]), .D(idle_c[9]), 
         .Z(n16)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i5772_4_lut (.A(n6427), .B(idle[11]), .C(\idle[10] ), .D(idle_c[9]), 
         .Z(n6433)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i5772_4_lut.init = 16'hfcec;
    LUT4 i5766_4_lut (.A(idle_c[3]), .B(\idle[8] ), .C(n9312), .D(n9248), 
         .Z(n6427)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i5766_4_lut.init = 16'hc8c0;
    LUT4 i1_2_lut_rep_99_3_lut (.A(n6447), .B(idle[11]), .C(n768), .Z(n10091)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_rep_99_3_lut.init = 16'h1010;
    LUT4 i1_4_lut (.A(n8445), .B(n10131), .C(n3115), .D(\wave[7] ), 
         .Z(n924)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut.init = 16'hfcec;
    LUT4 i2472_2_lut (.A(\wave[8] ), .B(\wave[9] ), .Z(n3115)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(123[8:19])
    defparam i2472_2_lut.init = 16'h8888;
    FD1P3IX idle_i0_i9 (.D(n926[9]), .SP(VDAC_clk_c_enable_138), .CD(n7378), 
            .CK(VDAC_clk_c), .Q(idle_c[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=75 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam idle_i0_i9.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(idle_c[6]), .B(idle_c[7]), .Z(n9312)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(120[12:24])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_adj_22 (.A(idle_c[4]), .B(idle_c[5]), .Z(n9248)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_22.init = 16'h8888;
    FD1P3JX idle_i0_i10 (.D(n1782[10]), .SP(VDAC_clk_c_enable_138), .PD(n10573), 
            .CK(VDAC_clk_c), .Q(\idle[10] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=75 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam idle_i0_i10.GSR = "ENABLED";
    LUT4 i5842_4_lut (.A(n9315), .B(\idle[10] ), .C(idle_c[9]), .D(\idle[8] ), 
         .Z(n6503)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i5842_4_lut.init = 16'hc8c0;
    LUT4 i1_4_lut_adj_23 (.A(n8457), .B(n9312), .C(n9248), .D(idle_c[3]), 
         .Z(n9315)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(120[12:24])
    defparam i1_4_lut_adj_23.init = 16'hfcec;
    LUT4 i5574_2_lut (.A(n839[9]), .B(n1722), .Z(n1723[9])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(60[2] 262[5])
    defparam i5574_2_lut.init = 16'h8888;
    LUT4 i2_3_lut (.A(\idle[2] ), .B(idle_c[0]), .C(\idle[1] ), .Z(n8457)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut.init = 16'h8080;
    LUT4 i2_3_lut_adj_24 (.A(\idle[8] ), .B(idle_c[9]), .C(\idle[10] ), 
         .Z(n9180)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_adj_24.init = 16'h8080;
    FD1P3IX idle_i0_i11 (.D(n926[11]), .SP(VDAC_clk_c_enable_138), .CD(n7378), 
            .CK(VDAC_clk_c), .Q(idle[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=75 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam idle_i0_i11.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_25 (.A(idle_c[6]), .B(n10147), .C(n9296), .D(n10146), 
         .Z(n9266)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_25.init = 16'ha8a0;
    FD1P3AX lvlq_i1 (.D(RGB_1__N_6_c[1]), .SP(VDAC_clk_c_enable_140), .CK(VDAC_clk_c), 
            .Q(levelN[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=75 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam lvlq_i1.GSR = "ENABLED";
    FD1P3IX idle_start_1716__i0 (.D(n105[0]), .SP(VDAC_clk_c_enable_155), 
            .CD(n3914), .CK(VDAC_clk_c), .Q(\idle_start[0] )) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1716__i0.GSR = "ENABLED";
    LUT4 i8678_2_lut_3_lut (.A(n6447), .B(idle[11]), .C(n54), .Z(n9420)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i8678_2_lut_3_lut.init = 16'hfefe;
    LUT4 i5482_2_lut (.A(n926[0]), .B(n7376), .Z(n1782[0])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(60[2] 262[5])
    defparam i5482_2_lut.init = 16'h2222;
    LUT4 i3132_4_lut (.A(n924), .B(n6519), .C(n10109), .D(n10091), .Z(n3887)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (B (C (D)))) */ ;
    defparam i3132_4_lut.init = 16'hea2a;
    LUT4 i1_4_lut_adj_26 (.A(idle[11]), .B(n14_adj_347), .C(n9180), .D(idle_c[7]), 
         .Z(n9319)) /* synthesis lut_function=(A+(B (C)+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_26.init = 16'hfaea;
    LUT4 i1870_4_lut (.A(n8_adj_348), .B(idle_c[6]), .C(idle_c[5]), .D(idle_c[4]), 
         .Z(n14_adj_347)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i1870_4_lut.init = 16'hc8c0;
    LUT4 i1865_2_lut (.A(\idle[2] ), .B(idle_c[3]), .Z(n8_adj_348)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1865_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_rep_85 (.A(n924), .B(n939), .Z(n10077)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_85.init = 16'heeee;
    LUT4 i1_2_lut_adj_27 (.A(idle_c[4]), .B(idle_c[5]), .Z(n9296)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_27.init = 16'heeee;
    LUT4 i5911_4_lut (.A(idle[11]), .B(n9180), .C(n9267), .D(idle_c[7]), 
         .Z(n6575)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;
    defparam i5911_4_lut.init = 16'heeea;
    LUT4 i2_3_lut_adj_28 (.A(n9266), .B(n8606), .C(n6439), .Z(n9267)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_adj_28.init = 16'h8080;
    LUT4 i5576_2_lut (.A(n926[5]), .B(n7376), .Z(n1782[5])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(60[2] 262[5])
    defparam i5576_2_lut.init = 16'h2222;
    LUT4 i5778_4_lut (.A(n6317), .B(idle_c[5]), .C(idle_c[4]), .D(idle_c[3]), 
         .Z(n6439)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i5778_4_lut.init = 16'hfcec;
    LUT4 i5577_2_lut (.A(n926[8]), .B(n7376), .Z(n1782[8])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(60[2] 262[5])
    defparam i5577_2_lut.init = 16'h2222;
    LUT4 i5578_2_lut (.A(n926[10]), .B(n7376), .Z(n1782[10])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(60[2] 262[5])
    defparam i5578_2_lut.init = 16'h2222;
    LUT4 i8830_4_lut (.A(n9164), .B(n10151), .C(n9262), .D(n4_c), .Z(n9553)) /* synthesis lut_function=(!(A (B)+!A (B (C (D))))) */ ;
    defparam i8830_4_lut.init = 16'h3777;
    LUT4 i1_2_lut_rep_79_3_lut (.A(n924), .B(n939), .C(n10086), .Z(n10071)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_rep_79_3_lut.init = 16'h1010;
    LUT4 i1_4_lut_adj_29 (.A(n9420), .B(n10086), .C(n10076), .D(n939), 
         .Z(n4_c)) /* synthesis lut_function=(!(A (((D)+!C)+!B))) */ ;
    defparam i1_4_lut_adj_29.init = 16'h55d5;
    LUT4 i5414_4_lut (.A(SerialN_c), .B(rst_d_N_267_c), .C(n9216), .D(init), 
         .Z(RGB_1__N_6_c[1])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(60[2] 262[5])
    defparam i5414_4_lut.init = 16'hc088;
    LUT4 i5878_2_lut_rep_116 (.A(n6503), .B(idle[11]), .Z(n10108)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5878_2_lut_rep_116.init = 16'heeee;
    FD1P3IX idle_start_1716__i9 (.D(n105[9]), .SP(VDAC_clk_c_enable_155), 
            .CD(n3914), .CK(VDAC_clk_c), .Q(idle_start[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1716__i9.GSR = "ENABLED";
    LUT4 i2_4_lut (.A(n1000), .B(n10116), .C(n38_adj_346), .D(n6571), 
         .Z(n9216)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(120[9] 259[7])
    defparam i2_4_lut.init = 16'h4000;
    FD1P3JX wave_i0_i0 (.D(n1723[0]), .SP(VDAC_clk_c_enable_147), .PD(n4006), 
            .CK(VDAC_clk_c), .Q(\wave[0] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=75 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam wave_i0_i0.GSR = "ENABLED";
    LUT4 i2_3_lut_3_lut_4_lut (.A(n6503), .B(idle[11]), .C(n3887), .D(n10132), 
         .Z(n9167)) /* synthesis lut_function=(A (C+(D))+!A ((C+(D))+!B)) */ ;
    defparam i2_3_lut_3_lut_4_lut.init = 16'hfff1;
    LUT4 n3462_bdd_3_lut_9038_4_lut (.A(n6503), .B(idle[11]), .C(n9796), 
         .D(n10073), .Z(n9797)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam n3462_bdd_3_lut_9038_4_lut.init = 16'hf1e0;
    LUT4 i8652_2_lut_3_lut (.A(n6503), .B(idle[11]), .C(n8501), .Z(n9394)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i8652_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i5474_2_lut (.A(n839[0]), .B(n1722), .Z(n1723[0])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(60[2] 262[5])
    defparam i5474_2_lut.init = 16'h8888;
    LUT4 n9813_bdd_3_lut_3_lut_4_lut (.A(n6503), .B(idle[11]), .C(n9812), 
         .D(n10073), .Z(n9814)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(D))) */ ;
    defparam n9813_bdd_3_lut_3_lut_4_lut.init = 16'he0f1;
    LUT4 i1_2_lut_3_lut (.A(n6503), .B(idle[11]), .C(n54), .Z(n4_adj_349)) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h0e0e;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(n10124), .B(idle[11]), .C(n768), 
         .D(n6447), .Z(n1000)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'h0020;
    LUT4 i110_3_lut_4_lut (.A(n10124), .B(idle[11]), .C(n939), .D(n66), 
         .Z(n110_adj_350)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam i110_3_lut_4_lut.init = 16'hfe10;
    LUT4 i61_4_lut_4_lut (.A(n10124), .B(idle[11]), .C(n9400), .D(n939), 
         .Z(n41_adj_351)) /* synthesis lut_function=(!(A (B+(C))+!A (B+!(D)))) */ ;
    defparam i61_4_lut_4_lut.init = 16'h1302;
    CCU2D add_136_5 (.A0(\wave[3] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\wave[4] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8346), .COUT(n8347), .S0(n839[3]), .S1(n839[4]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(218[13:24])
    defparam add_136_5.INIT0 = 16'h5aaa;
    defparam add_136_5.INIT1 = 16'h5aaa;
    defparam add_136_5.INJECT1_0 = "NO";
    defparam add_136_5.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_98_3_lut_3_lut (.A(n10124), .B(idle[11]), .C(n6447), 
         .Z(n10090)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i1_2_lut_rep_98_3_lut_3_lut.init = 16'h0202;
    LUT4 i1_2_lut_rep_86_3_lut_4_lut_4_lut (.A(n10124), .B(idle[11]), .C(n768), 
         .D(n6447), .Z(n10078)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_2_lut_rep_86_3_lut_4_lut_4_lut.init = 16'h0002;
    FD1P3IX idle_start_1716__i10 (.D(n105[10]), .SP(VDAC_clk_c_enable_155), 
            .CD(n3914), .CK(VDAC_clk_c), .Q(idle_start[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1716__i10.GSR = "ENABLED";
    FD1P3IX idle_start_1716__i21 (.D(n105[21]), .SP(VDAC_clk_c_enable_155), 
            .CD(n3914), .CK(VDAC_clk_c), .Q(\idle_start[21] )) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1716__i21.GSR = "ENABLED";
    LUT4 i5830_2_lut_rep_100_3_lut_3_lut (.A(n10124), .B(idle[11]), .C(n6503), 
         .Z(n10092)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i5830_2_lut_rep_100_3_lut_3_lut.init = 16'hefef;
    PFUMX i107 (.BLUT(n73), .ALUT(n9224), .C0(n752), .Z(n66));
    CCU2D add_155_11 (.A0(idle_c[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\idle[10] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8356), .COUT(n8357), .S0(n926[9]), .S1(n926[10]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(249[15:26])
    defparam add_155_11.INIT0 = 16'h5aaa;
    defparam add_155_11.INIT1 = 16'h5aaa;
    defparam add_155_11.INJECT1_0 = "NO";
    defparam add_155_11.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_30 (.A(rst_d_N_267_c), .B(init), .C(n9203), .D(n4_adj_352), 
         .Z(n36)) /* synthesis lut_function=((B (C+(D)))+!A) */ ;
    defparam i1_4_lut_adj_30.init = 16'hddd5;
    LUT4 i1_4_lut_adj_31 (.A(n10092), .B(n41_adj_351), .C(n939), .D(n9394), 
         .Z(n9203)) /* synthesis lut_function=(!(A ((D)+!B)+!A (B (C (D))+!B (C)))) */ ;
    defparam i1_4_lut_adj_31.init = 16'h05cd;
    LUT4 i5710_2_lut_rep_124 (.A(init), .B(n10132), .Z(n10116)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i5710_2_lut_rep_124.init = 16'h2222;
    LUT4 i1_2_lut_3_lut_adj_32 (.A(init), .B(n10132), .C(rst_d_N_267_c), 
         .Z(MIPI_clk_DAC_7__N_10[2])) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i1_2_lut_3_lut_adj_32.init = 16'hd0d0;
    LUT4 i1_4_lut_adj_33 (.A(\wave[2] ), .B(n10104), .C(n9184), .D(n4_adj_353), 
         .Z(n939)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam i1_4_lut_adj_33.init = 16'hfcec;
    FD1P3IX idle_start_1716__i13 (.D(n105[13]), .SP(VDAC_clk_c_enable_155), 
            .CD(n3914), .CK(VDAC_clk_c), .Q(idle_start[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1716__i13.GSR = "ENABLED";
    FD1P3IX idle_start_1716__i1 (.D(n105[1]), .SP(VDAC_clk_c_enable_155), 
            .CD(n3914), .CK(VDAC_clk_c), .Q(\idle_start[1] )) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1716__i1.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_34 (.A(\wave[1] ), .B(\wave[0] ), .Z(n4_adj_353)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_34.init = 16'heeee;
    LUT4 i1_4_lut_adj_35 (.A(wave[12]), .B(n3593), .C(n10150), .D(\wave[9] ), 
         .Z(n768)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam i1_4_lut_adj_35.init = 16'ha8a0;
    LUT4 i1_4_lut_adj_36 (.A(n8_adj_354), .B(n3591), .C(n10149), .D(\wave[4] ), 
         .Z(n3593)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_36.init = 16'hfcec;
    LUT4 i5786_4_lut (.A(n8606), .B(n9180), .C(idle_c[7]), .D(idle_c[6]), 
         .Z(n6447)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i5786_4_lut.init = 16'hc8c0;
    LUT4 i1_2_lut_adj_37 (.A(\wave[8] ), .B(\wave[7] ), .Z(n3591)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_37.init = 16'heeee;
    LUT4 i2_3_lut_adj_38 (.A(\wave[4] ), .B(\wave[3] ), .C(\wave[5] ), 
         .Z(n9184)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_adj_38.init = 16'h8080;
    LUT4 i1_4_lut_adj_39 (.A(\wave[7] ), .B(n3115), .C(n12), .D(\wave[6] ), 
         .Z(n3549)) /* synthesis lut_function=(A (B)+!A (B (C (D)))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(25[12:16])
    defparam i1_4_lut_adj_39.init = 16'hc888;
    LUT4 i1992_4_lut (.A(n10148), .B(\wave[5] ), .C(\wave[4] ), .D(n3600), 
         .Z(n12)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1992_4_lut.init = 16'hfcec;
    LUT4 i1_2_lut_adj_40 (.A(\wave[3] ), .B(\wave[2] ), .Z(n3600)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_40.init = 16'heeee;
    LUT4 i2_4_lut_adj_41 (.A(n939), .B(n4_adj_355), .C(n10089), .D(n10105), 
         .Z(n8501)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B)) */ ;
    defparam i2_4_lut_adj_41.init = 16'hcecc;
    LUT4 i1_4_lut_adj_42 (.A(n768), .B(n110_adj_350), .C(n10090), .D(n54), 
         .Z(n4_adj_355)) /* synthesis lut_function=(A (B)+!A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_42.init = 16'hdccc;
    LUT4 i8861_4_lut_rep_126 (.A(iter[3]), .B(n12_adj_356), .C(iter[2]), 
         .D(iter[6]), .Z(n10118)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(134[10:18])
    defparam i8861_4_lut_rep_126.init = 16'h0001;
    CCU2D add_136_3 (.A0(\wave[1] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\wave[2] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8345), .COUT(n8346), .S0(n839[1]), .S1(n839[2]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(218[13:24])
    defparam add_136_3.INIT0 = 16'h5aaa;
    defparam add_136_3.INIT1 = 16'h5aaa;
    defparam add_136_3.INJECT1_0 = "NO";
    defparam add_136_3.INJECT1_1 = "NO";
    LUT4 i2_4_lut_adj_43 (.A(n67), .B(\wave[2] ), .C(\wave[6] ), .D(n9184), 
         .Z(n54)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(25[12:16])
    defparam i2_4_lut_adj_43.init = 16'hfefa;
    LUT4 i1_4_lut_adj_44 (.A(n10149), .B(n10119), .C(n8_adj_357), .D(\wave[4] ), 
         .Z(n67)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(25[12:16])
    defparam i1_4_lut_adj_44.init = 16'heeec;
    CCU2D add_155_9 (.A0(idle_c[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\idle[8] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8355), .COUT(n8356), .S0(n926[7]), .S1(n926[8]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(249[15:26])
    defparam add_155_9.INIT0 = 16'h5aaa;
    defparam add_155_9.INIT1 = 16'h5aaa;
    defparam add_155_9.INJECT1_0 = "NO";
    defparam add_155_9.INJECT1_1 = "NO";
    LUT4 i1487_3_lut_rep_164 (.A(rst_d), .B(init), .C(rst_d_N_267_c), 
         .Z(VDAC_clk_c_enable_155)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(60[2] 262[5])
    defparam i1487_3_lut_rep_164.init = 16'h3a3a;
    CCU2D add_155_7 (.A0(idle_c[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(idle_c[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8354), .COUT(n8355), .S0(n926[5]), .S1(n926[6]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(249[15:26])
    defparam add_155_7.INIT0 = 16'h5aaa;
    defparam add_155_7.INIT1 = 16'h5aaa;
    defparam add_155_7.INJECT1_0 = "NO";
    defparam add_155_7.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_112_4_lut (.A(\wave[9] ), .B(n3591), .C(n10131), 
         .D(\wave[6] ), .Z(n10104)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam i1_2_lut_rep_112_4_lut.init = 16'hfffe;
    LUT4 i5782_3_lut (.A(n6439), .B(idle_c[7]), .C(idle_c[6]), .Z(n6443)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i5782_3_lut.init = 16'hecec;
    CCU2D add_155_5 (.A0(idle_c[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(idle_c[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8353), .COUT(n8354), .S0(n926[3]), .S1(n926[4]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(249[15:26])
    defparam add_155_5.INIT0 = 16'h5aaa;
    defparam add_155_5.INIT1 = 16'h5aaa;
    defparam add_155_5.INJECT1_0 = "NO";
    defparam add_155_5.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_45 (.A(init), .B(n8680), .Z(init_N_263)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_adj_45.init = 16'hbbbb;
    LUT4 i5_4_lut (.A(iter[0]), .B(n10), .C(iter[4]), .D(iter[1]), .Z(n12_adj_356)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;
    defparam i5_4_lut.init = 16'hfefc;
    LUT4 i3_2_lut (.A(iter[5]), .B(iter[7]), .Z(n10)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3_2_lut.init = 16'heeee;
    CCU2D idle_start_1716_add_4_25 (.A0(\idle_start[23] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(idle_start[24]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n8369), .S0(n105[23]), .S1(n105[24]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1716_add_4_25.INIT0 = 16'hfaaa;
    defparam idle_start_1716_add_4_25.INIT1 = 16'hfaaa;
    defparam idle_start_1716_add_4_25.INJECT1_0 = "NO";
    defparam idle_start_1716_add_4_25.INJECT1_1 = "NO";
    LUT4 i1_3_lut_rep_132 (.A(n9180), .B(idle_c[7]), .C(n9266), .Z(n10124)) /* synthesis lut_function=(A (B+(C))) */ ;
    defparam i1_3_lut_rep_132.init = 16'ha8a8;
    LUT4 i5822_2_lut_rep_117_4_lut (.A(n9180), .B(idle_c[7]), .C(n9266), 
         .D(idle[11]), .Z(n10109)) /* synthesis lut_function=(A (B+(C+(D)))+!A (D)) */ ;
    defparam i5822_2_lut_rep_117_4_lut.init = 16'hffa8;
    LUT4 i2_3_lut_4_lut (.A(n10086), .B(n10077), .C(n6519), .D(n9262), 
         .Z(n8427)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(253[11] 257[9])
    defparam i2_3_lut_4_lut.init = 16'h0200;
    LUT4 i5340_3_lut (.A(Button_c_0), .B(rst_d_N_267_c), .C(n10069), .Z(lvld_1__N_18[0])) /* synthesis lut_function=(A ((C)+!B)+!A !(B)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(60[2] 262[5])
    defparam i5340_3_lut.init = 16'hb3b3;
    CCU2D add_136_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\wave[0] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n8345), .S1(n839[0]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(218[13:24])
    defparam add_136_1.INIT0 = 16'hF000;
    defparam add_136_1.INIT1 = 16'h5555;
    defparam add_136_1.INJECT1_0 = "NO";
    defparam add_136_1.INJECT1_1 = "NO";
    CCU2D idle_start_1716_add_4_23 (.A0(\idle_start[21] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\idle_start[22] ), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n8368), .COUT(n8369), .S0(n105[21]), 
          .S1(n105[22]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1716_add_4_23.INIT0 = 16'hfaaa;
    defparam idle_start_1716_add_4_23.INIT1 = 16'hfaaa;
    defparam idle_start_1716_add_4_23.INJECT1_0 = "NO";
    defparam idle_start_1716_add_4_23.INJECT1_1 = "NO";
    CCU2D add_155_3 (.A0(\idle[1] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\idle[2] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8352), .COUT(n8353), .S0(n926[1]), .S1(n936));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(249[15:26])
    defparam add_155_3.INIT0 = 16'h5aaa;
    defparam add_155_3.INIT1 = 16'h5aaa;
    defparam add_155_3.INJECT1_0 = "NO";
    defparam add_155_3.INJECT1_1 = "NO";
    LUT4 i8805_2_lut (.A(init), .B(rst_d_N_267_c), .Z(MIPI_clk_DAC_7__N_10[0])) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i8805_2_lut.init = 16'h4444;
    LUT4 i1_2_lut_adj_46 (.A(rst_d_N_267_c), .B(Button_c_1), .Z(n9284)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_46.init = 16'h8888;
    CCU2D add_155_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(idle_c[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n8352), .S1(n926[0]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(249[15:26])
    defparam add_155_1.INIT0 = 16'hF000;
    defparam add_155_1.INIT1 = 16'h5555;
    defparam add_155_1.INJECT1_0 = "NO";
    defparam add_155_1.INJECT1_1 = "NO";
    LUT4 i8868_4_lut_4_lut (.A(n10107), .B(n4), .C(n9167), .D(n10145), 
         .Z(VDAC_clk_c_enable_138)) /* synthesis lut_function=(A (D)+!A !(B+!(C (D)))) */ ;
    defparam i8868_4_lut_4_lut.init = 16'hba00;
    LUT4 i1_4_lut_adj_47 (.A(n9164), .B(n10078), .C(n8427), .D(n4_adj_349), 
         .Z(n3851)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_47.init = 16'hfefa;
    LUT4 i5875_2_lut_4_lut (.A(\wave[5] ), .B(n10_adj_359), .C(n10104), 
         .D(n10089), .Z(n73)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam i5875_2_lut_4_lut.init = 16'h0001;
    LUT4 i2_4_lut_adj_48 (.A(n32), .B(n10116), .C(n6571), .D(n1000), 
         .Z(n9164)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i2_4_lut_adj_48.init = 16'hff7f;
    LUT4 i8866_3_lut_rep_81_3_lut_4_lut (.A(wave[12]), .B(n10150), .C(n3549), 
         .D(n1859), .Z(n10073)) /* synthesis lut_function=(!(A+(B+(C (D))))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(25[12:16])
    defparam i8866_3_lut_rep_81_3_lut_4_lut.init = 16'h0111;
    LUT4 n3527_bdd_2_lut_3_lut_4_lut (.A(wave[12]), .B(n10150), .C(lvld[0]), 
         .D(n3549), .Z(n9839)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(25[12:16])
    defparam n3527_bdd_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i2_3_lut_rep_127_4_lut (.A(wave[12]), .B(n10150), .C(n3591), 
         .D(\wave[9] ), .Z(n10119)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(25[12:16])
    defparam i2_3_lut_rep_127_4_lut.init = 16'hfffe;
    LUT4 i8684_3_lut (.A(idle[11]), .B(n10124), .C(n6503), .Z(n9262)) /* synthesis lut_function=(A+(B (C))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(120[9] 259[7])
    defparam i8684_3_lut.init = 16'heaea;
    LUT4 i5826_3_lut_rep_97 (.A(n6443), .B(idle[11]), .C(n9180), .Z(n10089)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i5826_3_lut_rep_97.init = 16'hecec;
    CCU2D idle_start_1716_add_4_21 (.A0(idle_start[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(idle_start[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8367), .COUT(n8368), .S0(n105[19]), .S1(n105[20]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1716_add_4_21.INIT0 = 16'hfaaa;
    defparam idle_start_1716_add_4_21.INIT1 = 16'hfaaa;
    defparam idle_start_1716_add_4_21.INJECT1_0 = "NO";
    defparam idle_start_1716_add_4_21.INJECT1_1 = "NO";
    LUT4 i4_4_lut (.A(\wave[0] ), .B(\wave[4] ), .C(n3600), .D(\wave[1] ), 
         .Z(n10_adj_359)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam i4_4_lut.init = 16'hfffd;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n10105), .B(n10109), .C(n54), .D(n768), 
         .Z(n4_adj_360)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0040;
    LUT4 i1_3_lut_4_lut (.A(n10105), .B(n768), .C(n10109), .D(n6575), 
         .Z(n4_adj_352)) /* synthesis lut_function=(A (D)+!A (B (C+(D))+!B (D))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(192[12:24])
    defparam i1_3_lut_4_lut.init = 16'hff40;
    CCU2D idle_start_1716_add_4_19 (.A0(\idle_start[17] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\idle_start[18] ), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n8366), .COUT(n8367), .S0(n105[17]), 
          .S1(n105[18]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1716_add_4_19.INIT0 = 16'hfaaa;
    defparam idle_start_1716_add_4_19.INIT1 = 16'hfaaa;
    defparam idle_start_1716_add_4_19.INJECT1_0 = "NO";
    defparam idle_start_1716_add_4_19.INJECT1_1 = "NO";
    LUT4 i633_2_lut_rep_75_4_lut (.A(init), .B(n10088), .C(n10073), .D(rst_d_N_267_c), 
         .Z(VDAC_clk_c_enable_106)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(106[8] 261[6])
    defparam i633_2_lut_rep_75_4_lut.init = 16'h0800;
    LUT4 i2_3_lut_4_lut_adj_49 (.A(n10109), .B(n10108), .C(n924), .D(n939), 
         .Z(n32)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i2_3_lut_4_lut_adj_49.init = 16'hfffb;
    LUT4 i3345_2_lut_4_lut (.A(n10079), .B(n6433), .C(n1755), .D(VDAC_clk_c_enable_147), 
         .Z(n4006)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(108[7:16])
    defparam i3345_2_lut_4_lut.init = 16'h2000;
    LUT4 i1_4_lut_adj_50 (.A(n32), .B(n939), .C(n4_adj_360), .D(n35), 
         .Z(n40_adj_345)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(120[9] 259[7])
    defparam i1_4_lut_adj_50.init = 16'heca0;
    LUT4 i1_2_lut_4_lut (.A(init), .B(n10088), .C(n10073), .D(n9284), 
         .Z(lvld_1__N_18[1])) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(106[8] 261[6])
    defparam i1_2_lut_4_lut.init = 16'h0800;
    CCU2D add_136_13 (.A0(wave[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(wave[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8350), 
          .S0(n839[11]), .S1(n839[12]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(218[13:24])
    defparam add_136_13.INIT0 = 16'h5aaa;
    defparam add_136_13.INIT1 = 16'h5aaa;
    defparam add_136_13.INJECT1_0 = "NO";
    defparam add_136_13.INJECT1_1 = "NO";
    LUT4 i2_4_lut_adj_51 (.A(n8409), .B(n4_adj_361), .C(n10150), .D(n3593), 
         .Z(n9224)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i2_4_lut_adj_51.init = 16'h0008;
    CCU2D idle_start_1716_add_4_17 (.A0(\idle_start[15] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\idle_start[16] ), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n8365), .COUT(n8366), .S0(n105[15]), 
          .S1(n105[16]));   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(64[18:32])
    defparam idle_start_1716_add_4_17.INIT0 = 16'hfaaa;
    defparam idle_start_1716_add_4_17.INIT1 = 16'hfaaa;
    defparam idle_start_1716_add_4_17.INJECT1_0 = "NO";
    defparam idle_start_1716_add_4_17.INJECT1_1 = "NO";
    LUT4 i5_3_lut_rep_94_4_lut (.A(\wave[6] ), .B(n10119), .C(n10_adj_359), 
         .D(\wave[5] ), .Z(n10086)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(39[7] 263[4])
    defparam i5_3_lut_rep_94_4_lut.init = 16'hfffe;
    LUT4 i2021_2_lut_3_lut (.A(\wave[1] ), .B(\wave[2] ), .C(\wave[3] ), 
         .Z(n8_adj_357)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2021_2_lut_3_lut.init = 16'h8080;
    LUT4 i1920_2_lut_3_lut (.A(\wave[1] ), .B(\wave[2] ), .C(\wave[3] ), 
         .Z(n8)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam i1920_2_lut_3_lut.init = 16'hf8f8;
    PFUMX i8964 (.BLUT(n9814), .ALUT(n10097), .C0(n10132), .Z(n9815));
    LUT4 i3348_2_lut_3_lut_3_lut (.A(n10118), .B(rst_d_N_267_c), .C(n10069), 
         .Z(n4016)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(134[10:18])
    defparam i3348_2_lut_3_lut_3_lut.init = 16'h4040;
    LUT4 i8_4_lut (.A(n9446), .B(n9362), .C(idle_start[24]), .D(n10_adj_362), 
         .Z(n8680)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i8_4_lut.init = 16'hff7f;
    LUT4 i8703_4_lut (.A(idle_start[19]), .B(idle_start[13]), .C(idle_start[9]), 
         .D(idle_start[20]), .Z(n9446)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i8703_4_lut.init = 16'h8000;
    LUT4 i8621_2_lut (.A(idle_start[10]), .B(idle_start[7]), .Z(n9362)) /* synthesis lut_function=(A (B)) */ ;
    defparam i8621_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_52 (.A(n29), .B(idle_start[6]), .C(n34), .D(n30), 
         .Z(n10_adj_362)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i1_4_lut_adj_52.init = 16'hfffb;
    LUT4 i1486_3_lut_rep_153 (.A(rst_d), .B(init), .C(rst_d_N_267_c), 
         .Z(n10145)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(60[2] 262[5])
    defparam i1486_3_lut_rep_153.init = 16'hcaca;
    LUT4 n621_bdd_2_lut_3_lut_2_lut (.A(rst_d), .B(rst_d_N_267_c), .Z(n10573)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(60[2] 262[5])
    defparam n621_bdd_2_lut_3_lut_2_lut.init = 16'h2222;
    LUT4 i3349_3_lut_4_lut_4_lut (.A(rst_d), .B(init), .C(rst_d_N_267_c), 
         .D(n8680), .Z(n3914)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B+((D)+!C)))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(60[2] 262[5])
    defparam i3349_3_lut_4_lut_4_lut.init = 16'h0a3a;
    LUT4 i1_2_lut_rep_154 (.A(idle_c[3]), .B(\idle[2] ), .Z(n10146)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_154.init = 16'h8888;
    LUT4 i1_3_lut_4_lut_adj_53 (.A(idle_c[3]), .B(\idle[2] ), .C(n9296), 
         .D(\idle[1] ), .Z(n8606)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;
    defparam i1_3_lut_4_lut_adj_53.init = 16'hf8f0;
    LUT4 i5634_2_lut_rep_155 (.A(idle_c[0]), .B(\idle[1] ), .Z(n10147)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5634_2_lut_rep_155.init = 16'heeee;
    LUT4 i1_2_lut_adj_54 (.A(n67), .B(n768), .Z(n47)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_protocol.v(25[12:16])
    defparam i1_2_lut_adj_54.init = 16'h2222;
    LUT4 i5661_2_lut_3_lut (.A(idle_c[0]), .B(\idle[1] ), .C(\idle[2] ), 
         .Z(n6317)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i5661_2_lut_3_lut.init = 16'he0e0;
    LUT4 i1997_2_lut_rep_156 (.A(\wave[0] ), .B(\wave[1] ), .Z(n10148)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1997_2_lut_rep_156.init = 16'h8888;
    LUT4 i2003_3_lut_4_lut (.A(\wave[0] ), .B(\wave[1] ), .C(\wave[2] ), 
         .D(\wave[3] ), .Z(n8_adj_354)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (D)) */ ;
    defparam i2003_3_lut_4_lut.init = 16'hff80;
    LUT4 i7672_4_lut (.A(n3591), .B(n8), .C(n10149), .D(\wave[4] ), 
         .Z(n8409)) /* synthesis lut_function=(A+(B (C)+!B (C (D)))) */ ;
    defparam i7672_4_lut.init = 16'hfaea;
    LUT4 i1_2_lut_adj_55 (.A(\wave[9] ), .B(wave[12]), .Z(n4_adj_361)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_55.init = 16'h8888;
    LUT4 i1_2_lut_rep_157 (.A(\wave[5] ), .B(\wave[6] ), .Z(n10149)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_157.init = 16'h8888;
    LUT4 i2_3_lut_4_lut_adj_56 (.A(\wave[5] ), .B(\wave[6] ), .C(n8_adj_354), 
         .D(\wave[4] ), .Z(n8445)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut_adj_56.init = 16'h8000;
    LUT4 i1_2_lut_rep_158 (.A(wave[11]), .B(wave[10]), .Z(n10150)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_158.init = 16'heeee;
    LUT4 i1_2_lut_rep_139_3_lut (.A(wave[11]), .B(wave[10]), .C(wave[12]), 
         .Z(n10131)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_139_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_111_3_lut_4_lut (.A(wave[11]), .B(wave[10]), .C(n3549), 
         .D(wave[12]), .Z(n10103)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_111_3_lut_4_lut.init = 16'hfffe;
    PFUMX i8961 (.BLUT(n924), .ALUT(n9811), .C0(n10109), .Z(n9812));
    
endmodule
//
// Verilog Description of module DSI_Slave
//

module DSI_Slave (n2813, VDAC_clk_c, stateP, DAC_5_c, n2808, n2809, 
            n2811, n2812, n2810, levelP) /* synthesis syn_module_defined=1 */ ;
    output n2813;
    input VDAC_clk_c;
    input [1:0]stateP;
    output DAC_5_c;
    output n2808;
    output n2809;
    output n2811;
    output n2812;
    output n2810;
    input [1:0]levelP;
    
    wire VDAC_clk_c /* synthesis SET_AS_NETWORK=VDAC_clk_c, is_clock=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(16[14:22])
    
    wire VDAC_clk_c_enable_62, n2943;
    wire [7:0]DAC_o_7__N_336;
    
    wire VDAC_clk_c_enable_143, n3178, n3188, n3652;
    
    FD1P3IX DAC_i0_i1 (.D(n2943), .SP(VDAC_clk_c_enable_62), .CD(stateP[0]), 
            .CK(VDAC_clk_c), .Q(n2813)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=97, LSE_RLINE=103 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_slave.v(13[7] 79[4])
    defparam DAC_i0_i1.GSR = "ENABLED";
    FD1P3AX DAC_i0_i8 (.D(DAC_o_7__N_336[6]), .SP(VDAC_clk_c_enable_62), 
            .CK(VDAC_clk_c), .Q(DAC_5_c)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=97, LSE_RLINE=103 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_slave.v(13[7] 79[4])
    defparam DAC_i0_i8.GSR = "ENABLED";
    FD1P3AX DAC_i0_i6 (.D(DAC_o_7__N_336[5]), .SP(VDAC_clk_c_enable_143), 
            .CK(VDAC_clk_c), .Q(n2808)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=97, LSE_RLINE=103 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_slave.v(13[7] 79[4])
    defparam DAC_i0_i6.GSR = "ENABLED";
    FD1P3AX DAC_i0_i5 (.D(DAC_o_7__N_336[4]), .SP(VDAC_clk_c_enable_62), 
            .CK(VDAC_clk_c), .Q(n2809)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=97, LSE_RLINE=103 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_slave.v(13[7] 79[4])
    defparam DAC_i0_i5.GSR = "ENABLED";
    FD1P3AX DAC_i0_i3 (.D(DAC_o_7__N_336[2]), .SP(VDAC_clk_c_enable_143), 
            .CK(VDAC_clk_c), .Q(n2811)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=97, LSE_RLINE=103 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_slave.v(13[7] 79[4])
    defparam DAC_i0_i3.GSR = "ENABLED";
    FD1P3JX DAC_i0_i2 (.D(n3178), .SP(VDAC_clk_c_enable_143), .PD(stateP[0]), 
            .CK(VDAC_clk_c), .Q(n2812)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=97, LSE_RLINE=103 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_slave.v(13[7] 79[4])
    defparam DAC_i0_i2.GSR = "ENABLED";
    FD1P3JX DAC_i0_i4 (.D(n3652), .SP(VDAC_clk_c_enable_143), .PD(n3188), 
            .CK(VDAC_clk_c), .Q(n2810)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=97, LSE_RLINE=103 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_slave.v(13[7] 79[4])
    defparam DAC_i0_i4.GSR = "ENABLED";
    LUT4 i2545_2_lut (.A(levelP[1]), .B(stateP[0]), .Z(n3188)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_slave.v(17[3] 45[10])
    defparam i2545_2_lut.init = 16'heeee;
    LUT4 i5538_2_lut (.A(levelP[0]), .B(stateP[1]), .Z(n3652)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_slave.v(17[3] 45[10])
    defparam i5538_2_lut.init = 16'h2222;
    LUT4 i1_3_lut_4_lut (.A(levelP[1]), .B(stateP[1]), .C(stateP[0]), 
         .D(levelP[0]), .Z(VDAC_clk_c_enable_143)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i1_3_lut_4_lut.init = 16'hfffb;
    LUT4 i5545_2_lut_3_lut (.A(levelP[1]), .B(stateP[1]), .C(levelP[0]), 
         .Z(n3178)) /* synthesis lut_function=(!(A (C)+!A (B+(C)))) */ ;
    defparam i5545_2_lut_3_lut.init = 16'h0b0b;
    LUT4 i2305_3_lut_4_lut_3_lut (.A(levelP[0]), .B(levelP[1]), .C(stateP[1]), 
         .Z(n2943)) /* synthesis lut_function=(A (B)+!A !(B+(C))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_slave.v(17[3] 45[10])
    defparam i2305_3_lut_4_lut_3_lut.init = 16'h8989;
    LUT4 i2_3_lut_4_lut (.A(levelP[0]), .B(levelP[1]), .C(stateP[0]), 
         .D(stateP[1]), .Z(DAC_o_7__N_336[2])) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+(C+(D))))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_slave.v(17[3] 45[10])
    defparam i2_3_lut_4_lut.init = 16'h0009;
    LUT4 i2_2_lut_3_lut_4_lut (.A(stateP[0]), .B(stateP[1]), .C(levelP[1]), 
         .D(levelP[0]), .Z(DAC_o_7__N_336[6])) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i2_2_lut_3_lut_4_lut.init = 16'h4000;
    LUT4 i2_3_lut_4_lut_adj_21 (.A(stateP[0]), .B(stateP[1]), .C(levelP[0]), 
         .D(levelP[1]), .Z(VDAC_clk_c_enable_62)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i2_3_lut_4_lut_adj_21.init = 16'hfffb;
    LUT4 i8907_2_lut (.A(stateP[0]), .B(stateP[1]), .Z(DAC_o_7__N_336[5])) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i8907_2_lut.init = 16'h1111;
    LUT4 i5549_4_lut (.A(levelP[1]), .B(stateP[0]), .C(stateP[1]), .D(levelP[0]), 
         .Z(DAC_o_7__N_336[4])) /* synthesis lut_function=(A (B+!((D)+!C))+!A (B)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_slave.v(17[3] 45[10])
    defparam i5549_4_lut.init = 16'hccec;
    
endmodule
//
// Verilog Description of module Serial_Protocol_U0
//

module Serial_Protocol_U0 (rst_d, clk_20MHz, rst_d_N_267_c, SerialN_c, 
            clk_20MHz_enable_5, tx_N_291, clk_20MHz_enable_17, n4005, 
            \pars[0] , \tx_N_297[5] , GND_net, \tx_N_297[4] , tx_N_296, 
            tx_N_304, State_w, tx_N_295, n9206, \tx_N_297[3] , \tx_N_297[1] , 
            \tx_N_297[2] , \tx_N_297[6] ) /* synthesis syn_module_defined=1 */ ;
    output rst_d;
    input clk_20MHz;
    input rst_d_N_267_c;
    output SerialN_c;
    input clk_20MHz_enable_5;
    input tx_N_291;
    input clk_20MHz_enable_17;
    input n4005;
    output \pars[0] ;
    output \tx_N_297[5] ;
    input GND_net;
    output \tx_N_297[4] ;
    input tx_N_296;
    input tx_N_304;
    input State_w;
    output tx_N_295;
    output n9206;
    output \tx_N_297[3] ;
    output \tx_N_297[1] ;
    output \tx_N_297[2] ;
    output \tx_N_297[6] ;
    
    wire clk_20MHz /* synthesis SET_AS_NETWORK=clk_20MHz, is_clock=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/dsi_workspace.v(40[7:16])
    wire [6:0]pars;   // c:/users/roman perez/desktop/lattice_projects/test/serial_protocol.v(18[11:15])
    wire [6:0]n33;
    
    wire n10126, n8390, n8389, n10138, n8388, n9382, n10115;
    
    FD1S3AX rst_d_44 (.D(rst_d_N_267_c), .CK(clk_20MHz), .Q(rst_d)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=85 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/serial_protocol.v(24[7] 71[4])
    defparam rst_d_44.GSR = "ENABLED";
    FD1P3AY o_42 (.D(tx_N_291), .SP(clk_20MHz_enable_5), .CK(clk_20MHz), 
            .Q(SerialN_c)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=87, LSE_RLINE=95 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/serial_protocol.v(24[7] 71[4])
    defparam o_42.GSR = "ENABLED";
    FD1P3IX pars_1718__i6 (.D(n33[6]), .SP(clk_20MHz_enable_17), .CD(n4005), 
            .CK(clk_20MHz), .Q(pars[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/serial_protocol.v(55[12:18])
    defparam pars_1718__i6.GSR = "ENABLED";
    FD1P3IX pars_1718__i5 (.D(n33[5]), .SP(clk_20MHz_enable_17), .CD(n4005), 
            .CK(clk_20MHz), .Q(pars[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/serial_protocol.v(55[12:18])
    defparam pars_1718__i5.GSR = "ENABLED";
    FD1P3IX pars_1718__i4 (.D(n33[4]), .SP(clk_20MHz_enable_17), .CD(n4005), 
            .CK(clk_20MHz), .Q(pars[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/serial_protocol.v(55[12:18])
    defparam pars_1718__i4.GSR = "ENABLED";
    FD1P3IX pars_1718__i3 (.D(n33[3]), .SP(clk_20MHz_enable_17), .CD(n4005), 
            .CK(clk_20MHz), .Q(pars[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/serial_protocol.v(55[12:18])
    defparam pars_1718__i3.GSR = "ENABLED";
    FD1P3IX pars_1718__i2 (.D(n33[2]), .SP(clk_20MHz_enable_17), .CD(n4005), 
            .CK(clk_20MHz), .Q(pars[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/serial_protocol.v(55[12:18])
    defparam pars_1718__i2.GSR = "ENABLED";
    FD1P3IX pars_1718__i1 (.D(n33[1]), .SP(clk_20MHz_enable_17), .CD(n4005), 
            .CK(clk_20MHz), .Q(pars[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/serial_protocol.v(55[12:18])
    defparam pars_1718__i1.GSR = "ENABLED";
    FD1P3IX pars_1718__i0 (.D(n33[0]), .SP(clk_20MHz_enable_17), .CD(n4005), 
            .CK(clk_20MHz), .Q(\pars[0] )) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/roman perez/desktop/lattice_projects/test/serial_protocol.v(55[12:18])
    defparam pars_1718__i0.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut (.A(pars[3]), .B(n10126), .C(pars[5]), .D(pars[4]), 
         .Z(\tx_N_297[5] )) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)+!C !(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hf0e1;
    CCU2D pars_1718_add_4_7 (.A0(pars[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pars[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8390), .S0(n33[5]), .S1(n33[6]));   // c:/users/roman perez/desktop/lattice_projects/test/serial_protocol.v(55[12:18])
    defparam pars_1718_add_4_7.INIT0 = 16'hfaaa;
    defparam pars_1718_add_4_7.INIT1 = 16'hfaaa;
    defparam pars_1718_add_4_7.INJECT1_0 = "NO";
    defparam pars_1718_add_4_7.INJECT1_1 = "NO";
    CCU2D pars_1718_add_4_5 (.A0(pars[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pars[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8389), .COUT(n8390), .S0(n33[3]), .S1(n33[4]));   // c:/users/roman perez/desktop/lattice_projects/test/serial_protocol.v(55[12:18])
    defparam pars_1718_add_4_5.INIT0 = 16'hfaaa;
    defparam pars_1718_add_4_5.INIT1 = 16'hfaaa;
    defparam pars_1718_add_4_5.INJECT1_0 = "NO";
    defparam pars_1718_add_4_5.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut_adj_19 (.A(pars[2]), .B(n10138), .C(pars[4]), 
         .D(pars[3]), .Z(\tx_N_297[4] )) /* synthesis lut_function=(!(A (B (C)+!B (C (D)+!C !(D)))+!A (C (D)+!C !(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_19.init = 16'h0f78;
    CCU2D pars_1718_add_4_3 (.A0(pars[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pars[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8388), .COUT(n8389), .S0(n33[1]), .S1(n33[2]));   // c:/users/roman perez/desktop/lattice_projects/test/serial_protocol.v(55[12:18])
    defparam pars_1718_add_4_3.INIT0 = 16'hfaaa;
    defparam pars_1718_add_4_3.INIT1 = 16'hfaaa;
    defparam pars_1718_add_4_3.INJECT1_0 = "NO";
    defparam pars_1718_add_4_3.INJECT1_1 = "NO";
    CCU2D pars_1718_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\pars[0] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n8388), .S1(n33[0]));   // c:/users/roman perez/desktop/lattice_projects/test/serial_protocol.v(55[12:18])
    defparam pars_1718_add_4_1.INIT0 = 16'hF000;
    defparam pars_1718_add_4_1.INIT1 = 16'h0555;
    defparam pars_1718_add_4_1.INJECT1_0 = "NO";
    defparam pars_1718_add_4_1.INJECT1_1 = "NO";
    LUT4 tx_I_14_3_lut (.A(tx_N_296), .B(tx_N_304), .C(State_w), .Z(tx_N_295)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/serial_protocol.v(49[10] 51[8])
    defparam tx_I_14_3_lut.init = 16'hcaca;
    LUT4 i4_4_lut (.A(pars[4]), .B(n9382), .C(pars[3]), .D(n10138), 
         .Z(n9206)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/serial_protocol.v(58[7:18])
    defparam i4_4_lut.init = 16'hfffb;
    LUT4 i8640_3_lut (.A(pars[2]), .B(pars[6]), .C(pars[5]), .Z(n9382)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i8640_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_rep_146 (.A(pars[1]), .B(\pars[0] ), .Z(n10138)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/serial_protocol.v(58[7:18])
    defparam i1_2_lut_rep_146.init = 16'heeee;
    LUT4 i5469_2_lut_rep_134_3_lut (.A(pars[1]), .B(\pars[0] ), .C(pars[2]), 
         .Z(n10126)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/serial_protocol.v(58[7:18])
    defparam i5469_2_lut_rep_134_3_lut.init = 16'he0e0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_20 (.A(pars[1]), .B(\pars[0] ), .C(pars[3]), 
         .D(pars[2]), .Z(\tx_N_297[3] )) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C)))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/serial_protocol.v(58[7:18])
    defparam i1_2_lut_3_lut_4_lut_adj_20.init = 16'h1ef0;
    LUT4 i1_2_lut (.A(pars[1]), .B(\pars[0] ), .Z(\tx_N_297[1] )) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    LUT4 i5672_2_lut_rep_123_3_lut_4_lut (.A(pars[1]), .B(\pars[0] ), .C(pars[3]), 
         .D(pars[2]), .Z(n10115)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/serial_protocol.v(58[7:18])
    defparam i5672_2_lut_rep_123_3_lut_4_lut.init = 16'hfef0;
    LUT4 i1_2_lut_3_lut (.A(pars[1]), .B(\pars[0] ), .C(pars[2]), .Z(\tx_N_297[2] )) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(C))) */ ;   // c:/users/roman perez/desktop/lattice_projects/test/serial_protocol.v(58[7:18])
    defparam i1_2_lut_3_lut.init = 16'he1e1;
    LUT4 i1_3_lut_4_lut (.A(pars[4]), .B(n10115), .C(pars[5]), .D(pars[6]), 
         .Z(\tx_N_297[6] )) /* synthesis lut_function=(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D))) */ ;
    defparam i1_3_lut_4_lut.init = 16'he01f;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

