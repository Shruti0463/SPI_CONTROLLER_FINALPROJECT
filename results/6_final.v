module spi_master (busy,
    clk,
    cs_n,
    done,
    miso,
    mosi,
    rst_n,
    sclk,
    start,
    rx_data,
    tx_data);
 output busy;
 input clk;
 output cs_n;
 output done;
 input miso;
 output mosi;
 input rst_n;
 output sclk;
 input start;
 output [7:0] rx_data;
 input [7:0] tx_data;

 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _048_;
 wire _049_;
 wire _051_;
 wire _052_;
 wire _053_;
 wire _054_;
 wire _055_;
 wire _056_;
 wire _057_;
 wire _058_;
 wire _059_;
 wire _060_;
 wire _061_;
 wire _062_;
 wire _063_;
 wire _064_;
 wire _065_;
 wire _066_;
 wire _067_;
 wire _068_;
 wire _069_;
 wire _070_;
 wire _071_;
 wire _072_;
 wire _073_;
 wire _074_;
 wire _075_;
 wire _076_;
 wire _077_;
 wire _078_;
 wire _079_;
 wire _080_;
 wire _081_;
 wire _082_;
 wire _083_;
 wire _084_;
 wire _085_;
 wire _086_;
 wire _087_;
 wire _088_;
 wire _089_;
 wire _090_;
 wire _091_;
 wire _092_;
 wire _093_;
 wire _094_;
 wire _095_;
 wire _096_;
 wire _097_;
 wire _098_;
 wire _099_;
 wire _100_;
 wire _101_;
 wire _102_;
 wire _103_;
 wire _104_;
 wire _105_;
 wire _106_;
 wire _107_;
 wire _108_;
 wire _109_;
 wire _110_;
 wire _111_;
 wire _112_;
 wire _113_;
 wire _114_;
 wire _115_;
 wire _116_;
 wire _117_;
 wire _118_;
 wire _119_;
 wire _120_;
 wire _121_;
 wire _124_;
 wire _126_;
 wire _127_;
 wire _128_;
 wire _130_;
 wire _131_;
 wire _132_;
 wire _133_;
 wire _134_;
 wire _135_;
 wire _136_;
 wire \bit_cnt[0] ;
 wire \bit_cnt[1] ;
 wire \bit_cnt[2] ;
 wire \bit_cnt[3] ;
 wire net12;
 wire net13;
 wire \div_cnt[0] ;
 wire \div_cnt[1] ;
 wire \div_cnt[2] ;
 wire \div_cnt[3] ;
 wire \div_cnt[4] ;
 wire \div_cnt[5] ;
 wire \div_cnt[6] ;
 wire \div_cnt[7] ;
 wire net14;
 wire net1;
 wire net15;
 wire net2;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire \shreg[0] ;
 wire \shreg[1] ;
 wire \shreg[2] ;
 wire \shreg[3] ;
 wire \shreg[4] ;
 wire \shreg[5] ;
 wire \shreg[6] ;
 wire \shreg[7] ;
 wire net3;
 wire \state[0] ;
 wire \state[1] ;
 wire \state[2] ;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire clknet_0_clk;
 wire net26;
 wire clknet_2_0__leaf_clk;
 wire clknet_2_1__leaf_clk;
 wire clknet_2_2__leaf_clk;
 wire clknet_2_3__leaf_clk;

 sky130_fd_sc_hd__or4b_4 _139_ (.A(\div_cnt[5] ),
    .B(\div_cnt[2] ),
    .C(\div_cnt[3] ),
    .D_N(_000_),
    .X(_124_));
 sky130_fd_sc_hd__or3_2 _141_ (.A(\div_cnt[6] ),
    .B(\div_cnt[7] ),
    .C(\div_cnt[4] ),
    .X(_126_));
 sky130_fd_sc_hd__nor3_2 _142_ (.A(net24),
    .B(_124_),
    .C(_126_),
    .Y(_127_));
 sky130_fd_sc_hd__inv_1 _143_ (.A(net24),
    .Y(_128_));
 sky130_fd_sc_hd__mux2_2 _145_ (.A0(\state[2] ),
    .A1(net3),
    .S(\state[0] ),
    .X(_130_));
 sky130_fd_sc_hd__nor4b_1 _146_ (.A(\div_cnt[5] ),
    .B(\div_cnt[2] ),
    .C(\div_cnt[3] ),
    .D_N(_000_),
    .Y(_131_));
 sky130_fd_sc_hd__nor3_1 _147_ (.A(\div_cnt[6] ),
    .B(\div_cnt[7] ),
    .C(\div_cnt[4] ),
    .Y(_132_));
 sky130_fd_sc_hd__nand4_1 _148_ (.A(_128_),
    .B(_130_),
    .C(_131_),
    .D(_132_),
    .Y(_133_));
 sky130_fd_sc_hd__o22ai_1 _149_ (.A1(\shreg[6] ),
    .A2(_127_),
    .B1(_133_),
    .B2(\shreg[5] ),
    .Y(_134_));
 sky130_fd_sc_hd__inv_1 _151_ (.A(\state[2] ),
    .Y(_042_));
 sky130_fd_sc_hd__nand2_1 _152_ (.A(_042_),
    .B(_130_),
    .Y(_043_));
 sky130_fd_sc_hd__o22ai_1 _153_ (.A1(\shreg[6] ),
    .A2(_130_),
    .B1(_043_),
    .B2(net10),
    .Y(_044_));
 sky130_fd_sc_hd__a21oi_1 _154_ (.A1(\state[2] ),
    .A2(_134_),
    .B1(_044_),
    .Y(_009_));
 sky130_fd_sc_hd__o22ai_1 _155_ (.A1(\shreg[5] ),
    .A2(_127_),
    .B1(_133_),
    .B2(\shreg[4] ),
    .Y(_045_));
 sky130_fd_sc_hd__o22ai_1 _156_ (.A1(\shreg[5] ),
    .A2(_130_),
    .B1(_043_),
    .B2(net9),
    .Y(_046_));
 sky130_fd_sc_hd__a21oi_1 _157_ (.A1(\state[2] ),
    .A2(_045_),
    .B1(_046_),
    .Y(_010_));
 sky130_fd_sc_hd__nand2_1 _159_ (.A(\shreg[4] ),
    .B(\state[2] ),
    .Y(_048_));
 sky130_fd_sc_hd__mux2i_1 _160_ (.A0(\state[2] ),
    .A1(net3),
    .S(\state[0] ),
    .Y(_049_));
 sky130_fd_sc_hd__and3_1 _162_ (.A(_042_),
    .B(net8),
    .C(_130_),
    .X(_051_));
 sky130_fd_sc_hd__a21oi_1 _163_ (.A1(\shreg[4] ),
    .A2(_049_),
    .B1(_051_),
    .Y(_052_));
 sky130_fd_sc_hd__nand4_1 _164_ (.A(\state[2] ),
    .B(\shreg[3] ),
    .C(_130_),
    .D(_127_),
    .Y(_053_));
 sky130_fd_sc_hd__o211ai_1 _165_ (.A1(_127_),
    .A2(_048_),
    .B1(_052_),
    .C1(_053_),
    .Y(_011_));
 sky130_fd_sc_hd__o22ai_1 _166_ (.A1(\shreg[3] ),
    .A2(_127_),
    .B1(_133_),
    .B2(\shreg[2] ),
    .Y(_054_));
 sky130_fd_sc_hd__o22ai_1 _167_ (.A1(\shreg[3] ),
    .A2(_130_),
    .B1(_043_),
    .B2(net7),
    .Y(_055_));
 sky130_fd_sc_hd__a21oi_1 _168_ (.A1(\state[2] ),
    .A2(_054_),
    .B1(_055_),
    .Y(_012_));
 sky130_fd_sc_hd__o22ai_1 _169_ (.A1(\shreg[2] ),
    .A2(_127_),
    .B1(_133_),
    .B2(\shreg[1] ),
    .Y(_056_));
 sky130_fd_sc_hd__o22ai_1 _170_ (.A1(\shreg[2] ),
    .A2(_130_),
    .B1(_043_),
    .B2(net6),
    .Y(_057_));
 sky130_fd_sc_hd__a21oi_1 _171_ (.A1(\state[2] ),
    .A2(_056_),
    .B1(_057_),
    .Y(_013_));
 sky130_fd_sc_hd__o22ai_1 _172_ (.A1(\shreg[1] ),
    .A2(_127_),
    .B1(_133_),
    .B2(\shreg[0] ),
    .Y(_058_));
 sky130_fd_sc_hd__o22ai_1 _173_ (.A1(\shreg[1] ),
    .A2(_130_),
    .B1(_043_),
    .B2(net5),
    .Y(_059_));
 sky130_fd_sc_hd__a21oi_1 _174_ (.A1(\state[2] ),
    .A2(_058_),
    .B1(_059_),
    .Y(_014_));
 sky130_fd_sc_hd__o22ai_1 _175_ (.A1(\shreg[0] ),
    .A2(_127_),
    .B1(_133_),
    .B2(net1),
    .Y(_060_));
 sky130_fd_sc_hd__o22ai_1 _176_ (.A1(\shreg[0] ),
    .A2(_130_),
    .B1(_043_),
    .B2(net4),
    .Y(_061_));
 sky130_fd_sc_hd__a21oi_1 _177_ (.A1(\state[2] ),
    .A2(_060_),
    .B1(_061_),
    .Y(_015_));
 sky130_fd_sc_hd__nand2_1 _178_ (.A(\bit_cnt[2] ),
    .B(_049_),
    .Y(_062_));
 sky130_fd_sc_hd__nor2_1 _179_ (.A(\div_cnt[6] ),
    .B(\div_cnt[7] ),
    .Y(_063_));
 sky130_fd_sc_hd__nor4b_4 _180_ (.A(\div_cnt[4] ),
    .B(_128_),
    .C(_124_),
    .D_N(_063_),
    .Y(_064_));
 sky130_fd_sc_hd__nand2_1 _181_ (.A(\state[2] ),
    .B(\bit_cnt[2] ),
    .Y(_065_));
 sky130_fd_sc_hd__a21o_1 _182_ (.A1(_005_),
    .A2(_064_),
    .B1(_065_),
    .X(_066_));
 sky130_fd_sc_hd__nor3_1 _183_ (.A(_042_),
    .B(\bit_cnt[2] ),
    .C(_049_),
    .Y(_067_));
 sky130_fd_sc_hd__nand3_1 _184_ (.A(_005_),
    .B(_064_),
    .C(_067_),
    .Y(_068_));
 sky130_fd_sc_hd__nand3_1 _185_ (.A(_062_),
    .B(_066_),
    .C(_068_),
    .Y(_016_));
 sky130_fd_sc_hd__nand2_1 _186_ (.A(\bit_cnt[1] ),
    .B(_049_),
    .Y(_069_));
 sky130_fd_sc_hd__nand4_1 _187_ (.A(\state[2] ),
    .B(_004_),
    .C(_130_),
    .D(_064_),
    .Y(_070_));
 sky130_fd_sc_hd__nand4b_1 _188_ (.A_N(\div_cnt[4] ),
    .B(net24),
    .C(_131_),
    .D(_063_),
    .Y(_071_));
 sky130_fd_sc_hd__nand3_1 _189_ (.A(\state[2] ),
    .B(\bit_cnt[1] ),
    .C(_071_),
    .Y(_072_));
 sky130_fd_sc_hd__nand3_1 _190_ (.A(_069_),
    .B(_070_),
    .C(_072_),
    .Y(_017_));
 sky130_fd_sc_hd__nor2b_1 _191_ (.A(net3),
    .B_N(\state[0] ),
    .Y(_073_));
 sky130_fd_sc_hd__nand2_1 _192_ (.A(\state[2] ),
    .B(\bit_cnt[0] ),
    .Y(_074_));
 sky130_fd_sc_hd__a2bb2oi_1 _193_ (.A1_N(_064_),
    .A2_N(_074_),
    .B1(\bit_cnt[0] ),
    .B2(_049_),
    .Y(_075_));
 sky130_fd_sc_hd__o41ai_1 _194_ (.A1(_042_),
    .A2(\bit_cnt[0] ),
    .A3(_073_),
    .A4(_071_),
    .B1(_075_),
    .Y(_018_));
 sky130_fd_sc_hd__a211oi_1 _195_ (.A1(_131_),
    .A2(_132_),
    .B1(_042_),
    .C1(_073_),
    .Y(_076_));
 sky130_fd_sc_hd__and4_2 _196_ (.A(\div_cnt[4] ),
    .B(\div_cnt[5] ),
    .C(\div_cnt[2] ),
    .D(\div_cnt[3] ),
    .X(_077_));
 sky130_fd_sc_hd__nand2_1 _197_ (.A(_002_),
    .B(_077_),
    .Y(_078_));
 sky130_fd_sc_hd__nand2_1 _198_ (.A(_076_),
    .B(_078_),
    .Y(_079_));
 sky130_fd_sc_hd__a31oi_1 _199_ (.A1(_002_),
    .A2(_076_),
    .A3(_077_),
    .B1(\div_cnt[6] ),
    .Y(_080_));
 sky130_fd_sc_hd__a31oi_1 _200_ (.A1(\div_cnt[6] ),
    .A2(_130_),
    .A3(_079_),
    .B1(_080_),
    .Y(_019_));
 sky130_fd_sc_hd__nand2_1 _201_ (.A(_131_),
    .B(_132_),
    .Y(_081_));
 sky130_fd_sc_hd__nand3_1 _202_ (.A(\div_cnt[0] ),
    .B(\div_cnt[1] ),
    .C(_077_),
    .Y(_082_));
 sky130_fd_sc_hd__nand3_1 _203_ (.A(\state[2] ),
    .B(_081_),
    .C(_082_),
    .Y(_083_));
 sky130_fd_sc_hd__and3_2 _204_ (.A(\div_cnt[2] ),
    .B(\div_cnt[0] ),
    .C(\div_cnt[1] ),
    .X(_084_));
 sky130_fd_sc_hd__a41oi_1 _205_ (.A1(\div_cnt[4] ),
    .A2(\div_cnt[3] ),
    .A3(_076_),
    .A4(_084_),
    .B1(\div_cnt[5] ),
    .Y(_085_));
 sky130_fd_sc_hd__a21oi_1 _206_ (.A1(_130_),
    .A2(_083_),
    .B1(_085_),
    .Y(_020_));
 sky130_fd_sc_hd__nand3_1 _207_ (.A(\div_cnt[2] ),
    .B(\div_cnt[3] ),
    .C(_002_),
    .Y(_086_));
 sky130_fd_sc_hd__nor3_1 _208_ (.A(\div_cnt[4] ),
    .B(_073_),
    .C(_086_),
    .Y(_087_));
 sky130_fd_sc_hd__a21oi_1 _209_ (.A1(\div_cnt[4] ),
    .A2(_086_),
    .B1(_087_),
    .Y(_088_));
 sky130_fd_sc_hd__nand2_1 _210_ (.A(\div_cnt[4] ),
    .B(_049_),
    .Y(_089_));
 sky130_fd_sc_hd__o21ai_0 _211_ (.A1(_042_),
    .A2(_088_),
    .B1(_089_),
    .Y(_021_));
 sky130_fd_sc_hd__nor2_1 _212_ (.A(\div_cnt[3] ),
    .B(_073_),
    .Y(_090_));
 sky130_fd_sc_hd__mux2i_1 _213_ (.A0(\div_cnt[3] ),
    .A1(_090_),
    .S(_084_),
    .Y(_091_));
 sky130_fd_sc_hd__nand2_1 _214_ (.A(\div_cnt[3] ),
    .B(_049_),
    .Y(_092_));
 sky130_fd_sc_hd__o21ai_0 _215_ (.A1(_042_),
    .A2(_091_),
    .B1(_092_),
    .Y(_022_));
 sky130_fd_sc_hd__inv_1 _216_ (.A(_002_),
    .Y(_093_));
 sky130_fd_sc_hd__nor3_1 _217_ (.A(\div_cnt[2] ),
    .B(_093_),
    .C(_073_),
    .Y(_094_));
 sky130_fd_sc_hd__a22o_2 _218_ (.A1(\div_cnt[2] ),
    .A2(_093_),
    .B1(_081_),
    .B2(_094_),
    .X(_095_));
 sky130_fd_sc_hd__a22o_2 _219_ (.A1(\div_cnt[2] ),
    .A2(_049_),
    .B1(_095_),
    .B2(\state[2] ),
    .X(_023_));
 sky130_fd_sc_hd__a22o_1 _220_ (.A1(\div_cnt[1] ),
    .A2(_049_),
    .B1(_076_),
    .B2(_001_),
    .X(_024_));
 sky130_fd_sc_hd__mux2_2 _221_ (.A0(_076_),
    .A1(_049_),
    .S(\div_cnt[0] ),
    .X(_025_));
 sky130_fd_sc_hd__nor3_4 _222_ (.A(_128_),
    .B(_124_),
    .C(_126_),
    .Y(_096_));
 sky130_fd_sc_hd__and3b_1 _223_ (.A_N(\bit_cnt[3] ),
    .B(\bit_cnt[2] ),
    .C(_003_),
    .X(_097_));
 sky130_fd_sc_hd__nand3_4 _224_ (.A(\state[2] ),
    .B(_096_),
    .C(_097_),
    .Y(_098_));
 sky130_fd_sc_hd__mux2_4 _225_ (.A0(\shreg[6] ),
    .A1(net22),
    .S(_098_),
    .X(_026_));
 sky130_fd_sc_hd__mux2_4 _226_ (.A0(\shreg[5] ),
    .A1(net21),
    .S(_098_),
    .X(_027_));
 sky130_fd_sc_hd__mux2_2 _227_ (.A0(\shreg[4] ),
    .A1(net20),
    .S(_098_),
    .X(_028_));
 sky130_fd_sc_hd__mux2_2 _228_ (.A0(\shreg[3] ),
    .A1(net19),
    .S(_098_),
    .X(_029_));
 sky130_fd_sc_hd__mux2_2 _229_ (.A0(\shreg[2] ),
    .A1(net18),
    .S(_098_),
    .X(_030_));
 sky130_fd_sc_hd__mux2_2 _230_ (.A0(\shreg[1] ),
    .A1(net17),
    .S(_098_),
    .X(_031_));
 sky130_fd_sc_hd__mux2_2 _231_ (.A0(\shreg[0] ),
    .A1(net16),
    .S(_098_),
    .X(_032_));
 sky130_fd_sc_hd__or2_2 _232_ (.A(\state[1] ),
    .B(_073_),
    .X(_007_));
 sky130_fd_sc_hd__nand2_1 _233_ (.A(_064_),
    .B(_097_),
    .Y(_099_));
 sky130_fd_sc_hd__a22o_1 _234_ (.A1(\state[0] ),
    .A2(net3),
    .B1(_099_),
    .B2(\state[2] ),
    .X(_008_));
 sky130_fd_sc_hd__o22ai_1 _235_ (.A1(\shreg[7] ),
    .A2(_127_),
    .B1(_133_),
    .B2(\shreg[6] ),
    .Y(_100_));
 sky130_fd_sc_hd__o22ai_1 _236_ (.A1(\shreg[7] ),
    .A2(_130_),
    .B1(_043_),
    .B2(net11),
    .Y(_101_));
 sky130_fd_sc_hd__a21oi_1 _237_ (.A1(\state[2] ),
    .A2(_100_),
    .B1(_101_),
    .Y(_033_));
 sky130_fd_sc_hd__inv_1 _238_ (.A(net12),
    .Y(_102_));
 sky130_fd_sc_hd__mux2i_1 _239_ (.A0(_102_),
    .A1(\state[1] ),
    .S(net3),
    .Y(_103_));
 sky130_fd_sc_hd__nand2_1 _240_ (.A(\state[0] ),
    .B(_103_),
    .Y(_104_));
 sky130_fd_sc_hd__o21ai_0 _241_ (.A1(\state[1] ),
    .A2(_102_),
    .B1(_104_),
    .Y(_034_));
 sky130_fd_sc_hd__nand3_1 _242_ (.A(\bit_cnt[2] ),
    .B(\bit_cnt[0] ),
    .C(\bit_cnt[1] ),
    .Y(_105_));
 sky130_fd_sc_hd__or3_1 _243_ (.A(_042_),
    .B(\bit_cnt[3] ),
    .C(_049_),
    .X(_106_));
 sky130_fd_sc_hd__o211ai_1 _244_ (.A1(_071_),
    .A2(_105_),
    .B1(\state[2] ),
    .C1(\bit_cnt[3] ),
    .Y(_107_));
 sky130_fd_sc_hd__nand2_1 _245_ (.A(\bit_cnt[3] ),
    .B(_049_),
    .Y(_108_));
 sky130_fd_sc_hd__o311ai_0 _246_ (.A1(_071_),
    .A2(_105_),
    .A3(_106_),
    .B1(_107_),
    .C1(_108_),
    .Y(_035_));
 sky130_fd_sc_hd__nor2_1 _247_ (.A(\state[2] ),
    .B(\state[1] ),
    .Y(_109_));
 sky130_fd_sc_hd__a22o_1 _248_ (.A1(\state[2] ),
    .A2(\shreg[7] ),
    .B1(net11),
    .B2(_109_),
    .X(_110_));
 sky130_fd_sc_hd__nor3_1 _249_ (.A(_042_),
    .B(_073_),
    .C(_097_),
    .Y(_111_));
 sky130_fd_sc_hd__mux2i_1 _250_ (.A0(\state[1] ),
    .A1(net3),
    .S(\state[0] ),
    .Y(_112_));
 sky130_fd_sc_hd__nor2_1 _251_ (.A(\state[2] ),
    .B(_112_),
    .Y(_113_));
 sky130_fd_sc_hd__a21oi_1 _252_ (.A1(_096_),
    .A2(_111_),
    .B1(_113_),
    .Y(_114_));
 sky130_fd_sc_hd__mux2_2 _253_ (.A0(_110_),
    .A1(net15),
    .S(_114_),
    .X(_036_));
 sky130_fd_sc_hd__inv_1 _254_ (.A(\div_cnt[7] ),
    .Y(_115_));
 sky130_fd_sc_hd__nand4_1 _255_ (.A(\div_cnt[6] ),
    .B(\div_cnt[0] ),
    .C(\div_cnt[1] ),
    .D(_077_),
    .Y(_116_));
 sky130_fd_sc_hd__a21oi_1 _256_ (.A1(_076_),
    .A2(_116_),
    .B1(_049_),
    .Y(_117_));
 sky130_fd_sc_hd__nand2_1 _257_ (.A(_115_),
    .B(_076_),
    .Y(_118_));
 sky130_fd_sc_hd__o22ai_1 _258_ (.A1(_115_),
    .A2(_117_),
    .B1(_118_),
    .B2(_116_),
    .Y(_037_));
 sky130_fd_sc_hd__inv_1 _259_ (.A(\state[0] ),
    .Y(_119_));
 sky130_fd_sc_hd__a21o_1 _260_ (.A1(_119_),
    .A2(net13),
    .B1(_007_),
    .X(_038_));
 sky130_fd_sc_hd__mux2_2 _261_ (.A0(\shreg[7] ),
    .A1(net23),
    .S(_098_),
    .X(_039_));
 sky130_fd_sc_hd__a21oi_1 _262_ (.A1(_131_),
    .A2(_132_),
    .B1(_128_),
    .Y(_120_));
 sky130_fd_sc_hd__o21ai_0 _263_ (.A1(_127_),
    .A2(_120_),
    .B1(\state[2] ),
    .Y(_121_));
 sky130_fd_sc_hd__o31ai_1 _264_ (.A1(\state[2] ),
    .A2(_128_),
    .A3(\state[0] ),
    .B1(_121_),
    .Y(_040_));
 sky130_fd_sc_hd__and3_1 _265_ (.A(\state[2] ),
    .B(_064_),
    .C(_097_),
    .X(_006_));
 sky130_fd_sc_hd__ha_1 _266_ (.A(\div_cnt[0] ),
    .B(\div_cnt[1] ),
    .COUT(_000_),
    .SUM(_001_));
 sky130_fd_sc_hd__ha_1 _267_ (.A(\div_cnt[0] ),
    .B(\div_cnt[1] ),
    .COUT(_002_),
    .SUM(_135_));
 sky130_fd_sc_hd__ha_1 _268_ (.A(\bit_cnt[0] ),
    .B(\bit_cnt[1] ),
    .COUT(_003_),
    .SUM(_004_));
 sky130_fd_sc_hd__ha_1 _269_ (.A(\bit_cnt[0] ),
    .B(\bit_cnt[1] ),
    .COUT(_005_),
    .SUM(_136_));
 sky130_fd_sc_hd__dfrtp_1 \bit_cnt[0]$_DFFE_PN0P_  (.D(_018_),
    .Q(\bit_cnt[0] ),
    .RESET_B(net26),
    .CLK(clknet_2_3__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \bit_cnt[1]$_DFFE_PN0P_  (.D(_017_),
    .Q(\bit_cnt[1] ),
    .RESET_B(net26),
    .CLK(clknet_2_3__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \bit_cnt[2]$_DFFE_PN0P_  (.D(_016_),
    .Q(\bit_cnt[2] ),
    .RESET_B(net26),
    .CLK(clknet_2_3__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \bit_cnt[3]$_DFFE_PN0P_  (.D(_035_),
    .Q(\bit_cnt[3] ),
    .RESET_B(net26),
    .CLK(clknet_2_3__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \busy$_DFFE_PN0P_  (.D(_034_),
    .Q(net12),
    .RESET_B(net26),
    .CLK(clknet_2_2__leaf_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_0_clk (.A(clk),
    .X(clknet_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_2_0__f_clk (.A(clknet_0_clk),
    .X(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_2_1__f_clk (.A(clknet_0_clk),
    .X(clknet_2_1__leaf_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_2_2__f_clk (.A(clknet_0_clk),
    .X(clknet_2_2__leaf_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_2_3__f_clk (.A(clknet_0_clk),
    .X(clknet_2_3__leaf_clk));
 sky130_fd_sc_hd__clkinvlp_4 clkload0 (.A(clknet_2_1__leaf_clk));
 sky130_fd_sc_hd__clkbuf_1 clkload1 (.A(clknet_2_2__leaf_clk));
 sky130_fd_sc_hd__clkbuf_8 clkload2 (.A(clknet_2_3__leaf_clk));
 sky130_fd_sc_hd__dfstp_2 \cs_n$_DFFE_PN1P_  (.D(_038_),
    .Q(net13),
    .SET_B(net26),
    .CLK(clknet_2_3__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \div_cnt[0]$_DFFE_PN0P_  (.D(_025_),
    .Q(\div_cnt[0] ),
    .RESET_B(net26),
    .CLK(clknet_2_1__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \div_cnt[1]$_DFFE_PN0P_  (.D(_024_),
    .Q(\div_cnt[1] ),
    .RESET_B(net26),
    .CLK(clknet_2_1__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \div_cnt[2]$_DFFE_PN0P_  (.D(_023_),
    .Q(\div_cnt[2] ),
    .RESET_B(net26),
    .CLK(clknet_2_1__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \div_cnt[3]$_DFFE_PN0P_  (.D(_022_),
    .Q(\div_cnt[3] ),
    .RESET_B(net26),
    .CLK(clknet_2_1__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \div_cnt[4]$_DFFE_PN0P_  (.D(_021_),
    .Q(\div_cnt[4] ),
    .RESET_B(net26),
    .CLK(clknet_2_3__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \div_cnt[5]$_DFFE_PN0P_  (.D(_020_),
    .Q(\div_cnt[5] ),
    .RESET_B(net26),
    .CLK(clknet_2_1__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \div_cnt[6]$_DFFE_PN0P_  (.D(_019_),
    .Q(\div_cnt[6] ),
    .RESET_B(net26),
    .CLK(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \div_cnt[7]$_DFFE_PN0P_  (.D(_037_),
    .Q(\div_cnt[7] ),
    .RESET_B(net26),
    .CLK(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \done$_DFF_PN0_  (.D(\state[1] ),
    .Q(net14),
    .RESET_B(net26),
    .CLK(clknet_2_2__leaf_clk));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input1 (.A(miso),
    .X(net1));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input10 (.A(tx_data[6]),
    .X(net10));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input11 (.A(tx_data[7]),
    .X(net11));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input2 (.A(rst_n),
    .X(net2));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input3 (.A(start),
    .X(net3));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input4 (.A(tx_data[0]),
    .X(net4));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input5 (.A(tx_data[1]),
    .X(net5));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input6 (.A(tx_data[2]),
    .X(net6));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input7 (.A(tx_data[3]),
    .X(net7));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input8 (.A(tx_data[4]),
    .X(net8));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input9 (.A(tx_data[5]),
    .X(net9));
 sky130_fd_sc_hd__dfrtp_1 \mosi$_DFFE_PN0P_  (.D(_036_),
    .Q(net15),
    .RESET_B(net26),
    .CLK(clknet_2_2__leaf_clk));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output12 (.A(net12),
    .X(busy));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output13 (.A(net13),
    .X(cs_n));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output14 (.A(net14),
    .X(done));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output15 (.A(net15),
    .X(mosi));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output16 (.A(net16),
    .X(rx_data[0]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output17 (.A(net17),
    .X(rx_data[1]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output18 (.A(net18),
    .X(rx_data[2]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output19 (.A(net19),
    .X(rx_data[3]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output20 (.A(net20),
    .X(rx_data[4]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output21 (.A(net21),
    .X(rx_data[5]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output22 (.A(net22),
    .X(rx_data[6]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output23 (.A(net23),
    .X(rx_data[7]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output24 (.A(net24),
    .X(sclk));
 sky130_fd_sc_hd__buf_4 place26 (.A(net2),
    .X(net26));
 sky130_fd_sc_hd__dfrtp_1 \rx_data[0]$_DFFE_PN0P_  (.D(_032_),
    .Q(net16),
    .RESET_B(net26),
    .CLK(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \rx_data[1]$_DFFE_PN0P_  (.D(_031_),
    .Q(net17),
    .RESET_B(net26),
    .CLK(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \rx_data[2]$_DFFE_PN0P_  (.D(_030_),
    .Q(net18),
    .RESET_B(net26),
    .CLK(clknet_2_1__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \rx_data[3]$_DFFE_PN0P_  (.D(_029_),
    .Q(net19),
    .RESET_B(net26),
    .CLK(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \rx_data[4]$_DFFE_PN0P_  (.D(_028_),
    .Q(net20),
    .RESET_B(net26),
    .CLK(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \rx_data[5]$_DFFE_PN0P_  (.D(_027_),
    .Q(net21),
    .RESET_B(net26),
    .CLK(clknet_2_2__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \rx_data[6]$_DFFE_PN0P_  (.D(_026_),
    .Q(net22),
    .RESET_B(net26),
    .CLK(clknet_2_2__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \rx_data[7]$_DFFE_PN0P_  (.D(_039_),
    .Q(net23),
    .RESET_B(net26),
    .CLK(clknet_2_2__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \sclk$_DFFE_PN0P_  (.D(_040_),
    .Q(net24),
    .RESET_B(net26),
    .CLK(clknet_2_2__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \shreg[0]$_DFFE_PN0P_  (.D(_015_),
    .Q(\shreg[0] ),
    .RESET_B(net26),
    .CLK(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \shreg[1]$_DFFE_PN0P_  (.D(_014_),
    .Q(\shreg[1] ),
    .RESET_B(net26),
    .CLK(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \shreg[2]$_DFFE_PN0P_  (.D(_013_),
    .Q(\shreg[2] ),
    .RESET_B(net26),
    .CLK(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \shreg[3]$_DFFE_PN0P_  (.D(_012_),
    .Q(\shreg[3] ),
    .RESET_B(net26),
    .CLK(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \shreg[4]$_DFFE_PN0P_  (.D(_011_),
    .Q(\shreg[4] ),
    .RESET_B(net26),
    .CLK(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \shreg[5]$_DFFE_PN0P_  (.D(_010_),
    .Q(\shreg[5] ),
    .RESET_B(net26),
    .CLK(clknet_2_2__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \shreg[6]$_DFFE_PN0P_  (.D(_009_),
    .Q(\shreg[6] ),
    .RESET_B(net26),
    .CLK(clknet_2_2__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \shreg[7]$_DFFE_PN0P_  (.D(_033_),
    .Q(\shreg[7] ),
    .RESET_B(net26),
    .CLK(clknet_2_2__leaf_clk));
 sky130_fd_sc_hd__dfstp_2 \state[0]$_DFF_PN1_  (.D(_007_),
    .Q(\state[0] ),
    .SET_B(net26),
    .CLK(clknet_2_3__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \state[1]$_DFF_PN0_  (.D(_006_),
    .Q(\state[1] ),
    .RESET_B(net26),
    .CLK(clknet_2_3__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \state[2]$_DFF_PN0_  (.D(_008_),
    .Q(\state[2] ),
    .RESET_B(net26),
    .CLK(clknet_2_3__leaf_clk));
endmodule
