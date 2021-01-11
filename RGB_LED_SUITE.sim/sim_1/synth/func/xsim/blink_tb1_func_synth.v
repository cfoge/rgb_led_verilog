// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Jan 11 15:41:04 2021
// Host        : LAPTOP-2OPCD7I5 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/robdj/Documents/RMIT_2021/CAP_STONE/RGB_LED_SUITE/RGB_LED_SUITE.sim/sim_1/synth/func/xsim/blink_tb1_func_synth.v
// Design      : LED_TEST
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module LED_TEST
   (sys_clk,
    sw1,
    sw2,
    btn0,
    led0);
  input sys_clk;
  input sw1;
  input sw2;
  input btn0;
  output led0;

  wire btn0;
  wire btn0_IBUF;
  wire clk;
  wire led0;
  wire led0_OBUF;
  wire sw1;
  wire sw1_IBUF;
  wire sw2;
  wire sw2_IBUF;
  wire sys_clk;
  wire sys_clk_IBUF;
  wire sys_clk_IBUF_BUFG;

  IBUF btn0_IBUF_inst
       (.I(btn0),
        .O(btn0_IBUF));
  clk_div clk_div
       (.out(clk),
        .sys_clk(sys_clk_IBUF_BUFG));
  OBUF led0_OBUF_inst
       (.I(led0_OBUF),
        .O(led0));
  led_control led_control
       (.CLK(clk),
        .btn0_IBUF(btn0_IBUF),
        .led0_OBUF(led0_OBUF),
        .sw1_IBUF(sw1_IBUF),
        .sw2_IBUF(sw2_IBUF));
  IBUF sw1_IBUF_inst
       (.I(sw1),
        .O(sw1_IBUF));
  IBUF sw2_IBUF_inst
       (.I(sw2),
        .O(sw2_IBUF));
  BUFG sys_clk_IBUF_BUFG_inst
       (.I(sys_clk_IBUF),
        .O(sys_clk_IBUF_BUFG));
  IBUF sys_clk_IBUF_inst
       (.I(sys_clk),
        .O(sys_clk_IBUF));
endmodule

module blink
   (Q,
    CLK);
  output [0:0]Q;
  input CLK;

  wire CLK;
  wire [0:0]Q;
  wire \count[8]_i_2_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire \count_reg_n_0_[7] ;
  wire [8:0]p_0_in;

  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(\count_reg_n_0_[0] ),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count_reg_n_0_[1] ),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[2]_i_1 
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[2] ),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[3]_i_1 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[3] ),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count[4]_i_1 
       (.I0(\count_reg_n_0_[3] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[2] ),
        .I4(\count_reg_n_0_[4] ),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count[5]_i_1 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[3] ),
        .I4(\count_reg_n_0_[4] ),
        .I5(\count_reg_n_0_[5] ),
        .O(p_0_in[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \count[6]_i_1 
       (.I0(\count[8]_i_2_n_0 ),
        .I1(\count_reg_n_0_[6] ),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \count[7]_i_1 
       (.I0(\count_reg_n_0_[6] ),
        .I1(\count[8]_i_2_n_0 ),
        .I2(\count_reg_n_0_[7] ),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \count[8]_i_1 
       (.I0(\count_reg_n_0_[7] ),
        .I1(\count[8]_i_2_n_0 ),
        .I2(\count_reg_n_0_[6] ),
        .I3(Q),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \count[8]_i_2 
       (.I0(\count_reg_n_0_[5] ),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[0] ),
        .I4(\count_reg_n_0_[3] ),
        .I5(\count_reg_n_0_[4] ),
        .O(\count[8]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(\count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(\count_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(\count_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(\count_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(\count_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(\count_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(\count_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(\count_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[8]),
        .Q(Q),
        .R(1'b0));
endmodule

module clk_div
   (out,
    sys_clk);
  output [0:0]out;
  input sys_clk;

  wire \cnt[0]_i_2_n_0 ;
  wire \cnt_reg[0]_i_1_n_0 ;
  wire \cnt_reg[0]_i_1_n_1 ;
  wire \cnt_reg[0]_i_1_n_2 ;
  wire \cnt_reg[0]_i_1_n_3 ;
  wire \cnt_reg[0]_i_1_n_4 ;
  wire \cnt_reg[0]_i_1_n_5 ;
  wire \cnt_reg[0]_i_1_n_6 ;
  wire \cnt_reg[0]_i_1_n_7 ;
  wire \cnt_reg[12]_i_1_n_7 ;
  wire \cnt_reg[4]_i_1_n_0 ;
  wire \cnt_reg[4]_i_1_n_1 ;
  wire \cnt_reg[4]_i_1_n_2 ;
  wire \cnt_reg[4]_i_1_n_3 ;
  wire \cnt_reg[4]_i_1_n_4 ;
  wire \cnt_reg[4]_i_1_n_5 ;
  wire \cnt_reg[4]_i_1_n_6 ;
  wire \cnt_reg[4]_i_1_n_7 ;
  wire \cnt_reg[8]_i_1_n_0 ;
  wire \cnt_reg[8]_i_1_n_1 ;
  wire \cnt_reg[8]_i_1_n_2 ;
  wire \cnt_reg[8]_i_1_n_3 ;
  wire \cnt_reg[8]_i_1_n_4 ;
  wire \cnt_reg[8]_i_1_n_5 ;
  wire \cnt_reg[8]_i_1_n_6 ;
  wire \cnt_reg[8]_i_1_n_7 ;
  wire \cnt_reg_n_0_[0] ;
  wire \cnt_reg_n_0_[10] ;
  wire \cnt_reg_n_0_[11] ;
  wire \cnt_reg_n_0_[1] ;
  wire \cnt_reg_n_0_[2] ;
  wire \cnt_reg_n_0_[3] ;
  wire \cnt_reg_n_0_[4] ;
  wire \cnt_reg_n_0_[5] ;
  wire \cnt_reg_n_0_[6] ;
  wire \cnt_reg_n_0_[7] ;
  wire \cnt_reg_n_0_[8] ;
  wire \cnt_reg_n_0_[9] ;
  wire [0:0]out;
  wire sys_clk;
  wire [3:0]\NLW_cnt_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_cnt_reg[12]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_2 
       (.I0(\cnt_reg_n_0_[0] ),
        .O(\cnt[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[0] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\cnt_reg[0]_i_1_n_0 ,\cnt_reg[0]_i_1_n_1 ,\cnt_reg[0]_i_1_n_2 ,\cnt_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\cnt_reg[0]_i_1_n_4 ,\cnt_reg[0]_i_1_n_5 ,\cnt_reg[0]_i_1_n_6 ,\cnt_reg[0]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[3] ,\cnt_reg_n_0_[2] ,\cnt_reg_n_0_[1] ,\cnt[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[10] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[11] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[12] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\cnt_reg[12]_i_1_n_7 ),
        .Q(out),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[12]_i_1 
       (.CI(\cnt_reg[8]_i_1_n_0 ),
        .CO(\NLW_cnt_reg[12]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cnt_reg[12]_i_1_O_UNCONNECTED [3:1],\cnt_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,out}));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[4] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[4]_i_1 
       (.CI(\cnt_reg[0]_i_1_n_0 ),
        .CO({\cnt_reg[4]_i_1_n_0 ,\cnt_reg[4]_i_1_n_1 ,\cnt_reg[4]_i_1_n_2 ,\cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[4]_i_1_n_4 ,\cnt_reg[4]_i_1_n_5 ,\cnt_reg[4]_i_1_n_6 ,\cnt_reg[4]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[7] ,\cnt_reg_n_0_[6] ,\cnt_reg_n_0_[5] ,\cnt_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[8] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[8] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[8]_i_1 
       (.CI(\cnt_reg[4]_i_1_n_0 ),
        .CO({\cnt_reg[8]_i_1_n_0 ,\cnt_reg[8]_i_1_n_1 ,\cnt_reg[8]_i_1_n_2 ,\cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[8]_i_1_n_4 ,\cnt_reg[8]_i_1_n_5 ,\cnt_reg[8]_i_1_n_6 ,\cnt_reg[8]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[11] ,\cnt_reg_n_0_[10] ,\cnt_reg_n_0_[9] ,\cnt_reg_n_0_[8] }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[9] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[9] ),
        .R(1'b0));
endmodule

module fade_up_down
   (cnt,
    Q,
    sw2_IBUF);
  output [7:0]cnt;
  input [0:0]Q;
  input sw2_IBUF;

  wire \0_carry__0_i_1_n_0 ;
  wire \0_carry__0_i_2_n_0 ;
  wire \0_carry__0_i_3_n_0 ;
  wire \0_carry__0_n_2 ;
  wire \0_carry__0_n_3 ;
  wire \0_carry__0_n_5 ;
  wire \0_carry__0_n_6 ;
  wire \0_carry__0_n_7 ;
  wire \0_carry_i_1_n_0 ;
  wire \0_carry_i_2_n_0 ;
  wire \0_carry_i_3_n_0 ;
  wire \0_carry_i_4_n_0 ;
  wire \0_carry_n_0 ;
  wire \0_carry_n_1 ;
  wire \0_carry_n_2 ;
  wire \0_carry_n_3 ;
  wire \0_carry_n_4 ;
  wire \0_carry_n_5 ;
  wire \0_carry_n_6 ;
  wire \0_carry_n_7 ;
  wire [0:0]Q;
  wire [7:0]cnt;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[0]_i_2__0_n_0 ;
  wire \cnt[0]_i_3_n_0 ;
  wire \cnt[0]_i_4_n_0 ;
  wire \cnt[0]_i_5_n_0 ;
  wire \cnt[1]_i_1_n_0 ;
  wire \cnt[2]_i_1_n_0 ;
  wire \cnt[3]_i_1_n_0 ;
  wire \cnt[4]_i_1_n_0 ;
  wire \cnt[5]_i_1_n_0 ;
  wire \cnt[6]_i_1_n_0 ;
  wire \cnt[7]_i_1_n_0 ;
  wire \cnt[7]_i_2_n_0 ;
  wire cnt_direction_driver_i_1_n_0;
  wire cnt_direction_driver_i_2_n_0;
  wire cnt_direction_driver_reg_n_0;
  wire sw2_IBUF;
  wire [3:2]NLW_0_carry__0_CO_UNCONNECTED;
  wire [3:3]NLW_0_carry__0_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \0_carry 
       (.CI(1'b0),
        .CO({\0_carry_n_0 ,\0_carry_n_1 ,\0_carry_n_2 ,\0_carry_n_3 }),
        .CYINIT(cnt[0]),
        .DI({cnt[3:1],cnt_direction_driver_reg_n_0}),
        .O({\0_carry_n_4 ,\0_carry_n_5 ,\0_carry_n_6 ,\0_carry_n_7 }),
        .S({\0_carry_i_1_n_0 ,\0_carry_i_2_n_0 ,\0_carry_i_3_n_0 ,\0_carry_i_4_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \0_carry__0 
       (.CI(\0_carry_n_0 ),
        .CO({NLW_0_carry__0_CO_UNCONNECTED[3:2],\0_carry__0_n_2 ,\0_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,cnt[5:4]}),
        .O({NLW_0_carry__0_O_UNCONNECTED[3],\0_carry__0_n_5 ,\0_carry__0_n_6 ,\0_carry__0_n_7 }),
        .S({1'b0,\0_carry__0_i_1_n_0 ,\0_carry__0_i_2_n_0 ,\0_carry__0_i_3_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \0_carry__0_i_1 
       (.I0(cnt[7]),
        .I1(cnt[6]),
        .O(\0_carry__0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \0_carry__0_i_2 
       (.I0(cnt[5]),
        .I1(cnt[6]),
        .O(\0_carry__0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \0_carry__0_i_3 
       (.I0(cnt[4]),
        .I1(cnt[5]),
        .O(\0_carry__0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \0_carry_i_1 
       (.I0(cnt[3]),
        .I1(cnt[4]),
        .O(\0_carry_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \0_carry_i_2 
       (.I0(cnt[2]),
        .I1(cnt[3]),
        .O(\0_carry_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \0_carry_i_3 
       (.I0(cnt[1]),
        .I1(cnt[2]),
        .O(\0_carry_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \0_carry_i_4 
       (.I0(cnt[1]),
        .I1(cnt_direction_driver_reg_n_0),
        .O(\0_carry_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h74)) 
    \cnt[0]_i_1 
       (.I0(cnt[0]),
        .I1(\cnt[0]_i_2__0_n_0 ),
        .I2(\cnt[0]_i_3_n_0 ),
        .O(\cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBFFFFFFFFFFFFFC)) 
    \cnt[0]_i_2__0 
       (.I0(\cnt[0]_i_4_n_0 ),
        .I1(cnt[3]),
        .I2(\cnt[0]_i_5_n_0 ),
        .I3(cnt[0]),
        .I4(cnt[5]),
        .I5(cnt[4]),
        .O(\cnt[0]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hFF7FFFFF)) 
    \cnt[0]_i_3 
       (.I0(cnt[4]),
        .I1(cnt[5]),
        .I2(cnt[0]),
        .I3(\cnt[0]_i_4_n_0 ),
        .I4(cnt[3]),
        .O(\cnt[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \cnt[0]_i_4 
       (.I0(cnt[6]),
        .I1(cnt[7]),
        .I2(cnt[1]),
        .I3(cnt[2]),
        .O(\cnt[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cnt[0]_i_5 
       (.I0(cnt[6]),
        .I1(cnt[7]),
        .I2(cnt[1]),
        .I3(cnt[2]),
        .O(\cnt[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[1]_i_1 
       (.I0(\0_carry_n_7 ),
        .I1(\cnt[0]_i_2__0_n_0 ),
        .O(\cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[2]_i_1 
       (.I0(\0_carry_n_6 ),
        .I1(\cnt[0]_i_2__0_n_0 ),
        .O(\cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[3]_i_1 
       (.I0(\0_carry_n_5 ),
        .I1(\cnt[0]_i_2__0_n_0 ),
        .O(\cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[4]_i_1 
       (.I0(\0_carry_n_4 ),
        .I1(\cnt[0]_i_2__0_n_0 ),
        .O(\cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[5]_i_1 
       (.I0(\0_carry__0_n_7 ),
        .I1(\cnt[0]_i_2__0_n_0 ),
        .O(\cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[6]_i_1 
       (.I0(\0_carry__0_n_6 ),
        .I1(\cnt[0]_i_2__0_n_0 ),
        .O(\cnt[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \cnt[7]_i_1 
       (.I0(sw2_IBUF),
        .I1(\cnt[0]_i_2__0_n_0 ),
        .I2(\cnt[0]_i_3_n_0 ),
        .O(\cnt[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[7]_i_2 
       (.I0(\0_carry__0_n_5 ),
        .I1(\cnt[0]_i_2__0_n_0 ),
        .O(\cnt[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFF11111)) 
    cnt_direction_driver_i_1
       (.I0(cnt[3]),
        .I1(cnt_direction_driver_i_2_n_0),
        .I2(\cnt[0]_i_3_n_0 ),
        .I3(sw2_IBUF),
        .I4(cnt_direction_driver_reg_n_0),
        .O(cnt_direction_driver_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    cnt_direction_driver_i_2
       (.I0(\cnt[0]_i_5_n_0 ),
        .I1(cnt[0]),
        .I2(cnt[5]),
        .I3(cnt[4]),
        .O(cnt_direction_driver_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    cnt_direction_driver_reg
       (.C(Q),
        .CE(1'b1),
        .D(cnt_direction_driver_i_1_n_0),
        .Q(cnt_direction_driver_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(Q),
        .CE(1'b1),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(cnt[0]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(Q),
        .CE(1'b1),
        .D(\cnt[1]_i_1_n_0 ),
        .Q(cnt[1]),
        .S(\cnt[7]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(Q),
        .CE(1'b1),
        .D(\cnt[2]_i_1_n_0 ),
        .Q(cnt[2]),
        .S(\cnt[7]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(Q),
        .CE(1'b1),
        .D(\cnt[3]_i_1_n_0 ),
        .Q(cnt[3]),
        .S(\cnt[7]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(Q),
        .CE(1'b1),
        .D(\cnt[4]_i_1_n_0 ),
        .Q(cnt[4]),
        .S(\cnt[7]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(Q),
        .CE(1'b1),
        .D(\cnt[5]_i_1_n_0 ),
        .Q(cnt[5]),
        .S(\cnt[7]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(Q),
        .CE(1'b1),
        .D(\cnt[6]_i_1_n_0 ),
        .Q(cnt[6]),
        .S(\cnt[7]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(Q),
        .CE(1'b1),
        .D(\cnt[7]_i_2_n_0 ),
        .Q(cnt[7]),
        .S(\cnt[7]_i_1_n_0 ));
endmodule

module led_control
   (led0_OBUF,
    CLK,
    sw1_IBUF,
    sw2_IBUF,
    btn0_IBUF);
  output led0_OBUF;
  input CLK;
  input sw1_IBUF;
  input sw2_IBUF;
  input btn0_IBUF;

  wire CLK;
  wire btn0_IBUF;
  wire [7:0]cnt;
  wire [8:8]count_reg;
  wire led0_OBUF;
  wire sw1_IBUF;
  wire sw2_IBUF;

  blink fade_blink_rate
       (.CLK(CLK),
        .Q(count_reg));
  fade_up_down fade_up_down
       (.Q(count_reg),
        .cnt(cnt),
        .sw2_IBUF(sw2_IBUF));
  pwm pwm_ch
       (.CLK(CLK),
        .btn0_IBUF(btn0_IBUF),
        .cnt(cnt),
        .cnt_dir_reg_0(led0_OBUF),
        .sw1_IBUF(sw1_IBUF));
endmodule

module pwm
   (cnt_dir_reg_0,
    CLK,
    sw1_IBUF,
    cnt,
    btn0_IBUF);
  output cnt_dir_reg_0;
  input CLK;
  input sw1_IBUF;
  input [7:0]cnt;
  input btn0_IBUF;

  wire CLK;
  wire btn0_IBUF;
  wire [7:0]cnt;
  wire cnt00_carry__0_i_1_n_0;
  wire cnt00_carry__0_i_2_n_0;
  wire cnt00_carry__0_i_3_n_0;
  wire cnt00_carry__0_n_2;
  wire cnt00_carry__0_n_3;
  wire cnt00_carry__0_n_5;
  wire cnt00_carry__0_n_6;
  wire cnt00_carry__0_n_7;
  wire cnt00_carry_i_1_n_0;
  wire cnt00_carry_i_2_n_0;
  wire cnt00_carry_i_3_n_0;
  wire cnt00_carry_i_4_n_0;
  wire cnt00_carry_i_5_n_0;
  wire cnt00_carry_n_0;
  wire cnt00_carry_n_1;
  wire cnt00_carry_n_2;
  wire cnt00_carry_n_3;
  wire cnt00_carry_n_4;
  wire cnt00_carry_n_5;
  wire cnt00_carry_n_6;
  wire cnt00_carry_n_7;
  wire cnt_dir_i_1_n_0;
  wire cnt_dir_i_2_n_0;
  wire cnt_dir_i_4_n_0;
  wire cnt_dir_i_5_n_0;
  wire cnt_dir_reg_0;
  wire cnt_end__14;
  wire [7:0]cnt_reg;
  wire [7:0]p_0_in__0;
  wire sw1_IBUF;
  wire [3:2]NLW_cnt00_carry__0_CO_UNCONNECTED;
  wire [3:3]NLW_cnt00_carry__0_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 cnt00_carry
       (.CI(1'b0),
        .CO({cnt00_carry_n_0,cnt00_carry_n_1,cnt00_carry_n_2,cnt00_carry_n_3}),
        .CYINIT(cnt_reg[0]),
        .DI({cnt_reg[3:1],cnt00_carry_i_1_n_0}),
        .O({cnt00_carry_n_4,cnt00_carry_n_5,cnt00_carry_n_6,cnt00_carry_n_7}),
        .S({cnt00_carry_i_2_n_0,cnt00_carry_i_3_n_0,cnt00_carry_i_4_n_0,cnt00_carry_i_5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 cnt00_carry__0
       (.CI(cnt00_carry_n_0),
        .CO({NLW_cnt00_carry__0_CO_UNCONNECTED[3:2],cnt00_carry__0_n_2,cnt00_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,cnt_reg[5:4]}),
        .O({NLW_cnt00_carry__0_O_UNCONNECTED[3],cnt00_carry__0_n_5,cnt00_carry__0_n_6,cnt00_carry__0_n_7}),
        .S({1'b0,cnt00_carry__0_i_1_n_0,cnt00_carry__0_i_2_n_0,cnt00_carry__0_i_3_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    cnt00_carry__0_i_1
       (.I0(cnt_reg[6]),
        .I1(cnt_reg[7]),
        .O(cnt00_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cnt00_carry__0_i_2
       (.I0(cnt_reg[5]),
        .I1(cnt_reg[6]),
        .O(cnt00_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cnt00_carry__0_i_3
       (.I0(cnt_reg[4]),
        .I1(cnt_reg[5]),
        .O(cnt00_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt00_carry_i_1
       (.I0(cnt_reg[1]),
        .O(cnt00_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cnt00_carry_i_2
       (.I0(cnt_reg[3]),
        .I1(cnt_reg[4]),
        .O(cnt00_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cnt00_carry_i_3
       (.I0(cnt_reg[2]),
        .I1(cnt_reg[3]),
        .O(cnt00_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cnt00_carry_i_4
       (.I0(cnt_reg[1]),
        .I1(cnt_reg[2]),
        .O(cnt00_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    cnt00_carry_i_5
       (.I0(cnt_reg[1]),
        .I1(cnt_dir_reg_0),
        .O(cnt00_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h0C55)) 
    \cnt[0]_i_1__0 
       (.I0(cnt_reg[0]),
        .I1(cnt[0]),
        .I2(btn0_IBUF),
        .I3(cnt_end__14),
        .O(p_0_in__0[0]));
  LUT4 #(
    .INIT(16'hFACA)) 
    \cnt[1]_i_1__0 
       (.I0(cnt00_carry_n_7),
        .I1(btn0_IBUF),
        .I2(cnt_end__14),
        .I3(cnt[1]),
        .O(p_0_in__0[1]));
  LUT4 #(
    .INIT(16'h0CAA)) 
    \cnt[2]_i_1__0 
       (.I0(cnt00_carry_n_6),
        .I1(cnt[2]),
        .I2(btn0_IBUF),
        .I3(cnt_end__14),
        .O(p_0_in__0[2]));
  LUT4 #(
    .INIT(16'hFACA)) 
    \cnt[3]_i_1__0 
       (.I0(cnt00_carry_n_5),
        .I1(btn0_IBUF),
        .I2(cnt_end__14),
        .I3(cnt[3]),
        .O(p_0_in__0[3]));
  LUT4 #(
    .INIT(16'h0CAA)) 
    \cnt[4]_i_1__0 
       (.I0(cnt00_carry_n_4),
        .I1(cnt[4]),
        .I2(btn0_IBUF),
        .I3(cnt_end__14),
        .O(p_0_in__0[4]));
  LUT4 #(
    .INIT(16'h0CAA)) 
    \cnt[5]_i_1__0 
       (.I0(cnt00_carry__0_n_7),
        .I1(cnt[5]),
        .I2(btn0_IBUF),
        .I3(cnt_end__14),
        .O(p_0_in__0[5]));
  LUT4 #(
    .INIT(16'h0CAA)) 
    \cnt[6]_i_1__0 
       (.I0(cnt00_carry__0_n_6),
        .I1(cnt[6]),
        .I2(btn0_IBUF),
        .I3(cnt_end__14),
        .O(p_0_in__0[6]));
  LUT4 #(
    .INIT(16'h0CAA)) 
    \cnt[7]_i_1__0 
       (.I0(cnt00_carry__0_n_5),
        .I1(cnt[7]),
        .I2(btn0_IBUF),
        .I3(cnt_end__14),
        .O(p_0_in__0[7]));
  LUT1 #(
    .INIT(2'h1)) 
    cnt_dir_i_1
       (.I0(sw1_IBUF),
        .O(cnt_dir_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    cnt_dir_i_2
       (.I0(cnt_end__14),
        .I1(cnt_dir_reg_0),
        .O(cnt_dir_i_2_n_0));
  LUT5 #(
    .INIT(32'h03800080)) 
    cnt_dir_i_3
       (.I0(cnt_dir_i_4_n_0),
        .I1(cnt_reg[1]),
        .I2(cnt_reg[0]),
        .I3(cnt_dir_reg_0),
        .I4(cnt_dir_i_5_n_0),
        .O(cnt_end__14));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    cnt_dir_i_4
       (.I0(cnt_reg[2]),
        .I1(cnt_reg[3]),
        .I2(cnt_reg[4]),
        .I3(cnt_reg[5]),
        .I4(cnt_reg[7]),
        .I5(cnt_reg[6]),
        .O(cnt_dir_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    cnt_dir_i_5
       (.I0(cnt_reg[2]),
        .I1(cnt_reg[3]),
        .I2(cnt_reg[4]),
        .I3(cnt_reg[5]),
        .I4(cnt_reg[7]),
        .I5(cnt_reg[6]),
        .O(cnt_dir_i_5_n_0));
  FDSE #(
    .INIT(1'b1)) 
    cnt_dir_reg
       (.C(CLK),
        .CE(1'b1),
        .D(cnt_dir_i_2_n_0),
        .Q(cnt_dir_reg_0),
        .S(cnt_dir_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(cnt_reg[0]),
        .R(cnt_dir_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(cnt_reg[1]),
        .R(cnt_dir_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__0[2]),
        .Q(cnt_reg[2]),
        .R(cnt_dir_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(cnt_reg[3]),
        .R(cnt_dir_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__0[4]),
        .Q(cnt_reg[4]),
        .R(cnt_dir_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__0[5]),
        .Q(cnt_reg[5]),
        .R(cnt_dir_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__0[6]),
        .Q(cnt_reg[6]),
        .R(cnt_dir_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__0[7]),
        .Q(cnt_reg[7]),
        .R(cnt_dir_i_1_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
