/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : X-2025.06-SP5-5
// Date      : Sun Oct 25 15:45:13 2026
/////////////////////////////////////////////////////////////


module alu_sync_top ( clk, reset, A, B, ALUControl, Result, NZCV, MulOverflow
 );
  input [15:0] A;
  input [15:0] B;
  input [2:0] ALUControl;
  output [15:0] Result;
  output [3:0] NZCV;
  input clk, reset;
  output MulOverflow;
  wire   N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17,
         N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31,
         N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N45,
         N46, N47, N48, N49, N50, N51, N52, N56, N58, \ALU_INSTANCE/n63 ,
         \ALU_INSTANCE/n61 , \ALU_INSTANCE/n59 , \ALU_INSTANCE/n57 ,
         \ALU_INSTANCE/n55 , \ALU_INSTANCE/n53 , \ALU_INSTANCE/n51 ,
         \ALU_INSTANCE/n49 , \ALU_INSTANCE/n47 , \ALU_INSTANCE/n45 ,
         \ALU_INSTANCE/n43 , \ALU_INSTANCE/n41 , \ALU_INSTANCE/n39 ,
         \ALU_INSTANCE/n37 , \ALU_INSTANCE/n35 , \ALU_INSTANCE/n33 ,
         \ALU_INSTANCE/n31 , \ALU_INSTANCE/n29 , \ALU_INSTANCE/n27 ,
         \ALU_INSTANCE/n25 , \ALU_INSTANCE/n23 , \ALU_INSTANCE/n21 ,
         \ALU_INSTANCE/n19 , \ALU_INSTANCE/n17 , \ALU_INSTANCE/n15 ,
         \ALU_INSTANCE/n13 , \ALU_INSTANCE/n11 , \ALU_INSTANCE/n9 ,
         \ALU_INSTANCE/n7 , \ALU_INSTANCE/n5 , \ALU_INSTANCE/n3 ,
         \ALU_INSTANCE/n1 , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240,
         n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273,
         n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295,
         n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, n306,
         n307, n308, n309, n310, n311, n312, n313, n314, n315, n316, n317,
         n318, n319, n320, n321, n322, n323, n324, n325, n326, n327, n328,
         n329, n330, n331, n332, n333, n334, n335, n336, n337, n338, n339,
         n340, n341, n342, n343, n344, n345, n346, n347, n348, n349, n350,
         n351, n352, n353, n354, n355, n356, n357, n358, n359, n360, n361,
         n362, n363, n364, n365, n366, n367, n368, n369, n370, n371, n372,
         n373, n374, n375, n376, n377, n378, n379, n380, n381, n382, n383,
         n384, n385, n386, n387, n388, n389, n390, n391, n392, n393, n394,
         n395, n396, n397, n398, n399, n400, n401, n402, n403, n404, n405,
         n406, n407, n408, n409, n410, n411, n412, n413, n414, n415, n416,
         n417, n418, n419, n420, n421, n422, n423, n424, n425, n426, n427,
         n428, n429, n430, n431, n432, n433, n434, n435, n436, n437, n438,
         n439, n440, n441, n442, n443, n444, n445, n446, n447, n448, n449,
         n450, n451, n452, n453, n454, n455, n456, n457, n458, n459, n460,
         n461, n462, n463, n464, n465, n466, n467, n468, n469, n470, n471,
         n472, n473, n474, n475, n476, n477, n478, n479, n480, n481, n482,
         n483, n484, n485, n486, n487, n488, n489, n490, n491, n492, n493,
         n494, n495, n496, n497, n498, n499, n500, n501, n502, n503, n504,
         n505, n506, n507, n508, n509, n510, n511, n512, n513, n514, n515,
         n516, n517, n518, n519, n520, n521, n522, n523, n524, n525, n526,
         n527, n528, n529, n530, n531, n532, n533, n534, n535, n536, n537,
         n538, n539, n540, n541, n542, n543, n544, n545, n546, n547, n548,
         n549, n550, n551, n552, n553, n554, n555, n556, n557, n558, n559,
         n560, n561, n562, n563, n564, n565, n566, n567, n568, n569, n570,
         n571, n572, n573, n574, n575, n576, n577, n578, n579, n580, n581,
         n582, n583, n584, n585, n586, n587, n588, n589, n590, n591, n592,
         n593, n594, n595, n596, n597, n598, n599, n600, n601, n602, n603,
         n604, n605, n606, n607, n608, n609, n610, n611, n612, n613, n614,
         n615, n616, n617, n618, n619, n620, n621, n622, n623, n624, n625,
         n626, n627, n628, n629, n630, n631, n632, n633, n634, n635, n636,
         n637, n638, n639, n640, n641, n642, n643, n644, n645, n646, n647,
         n648, n649, n650, n651, n652, n653, n654, n655, n656, n657, n658,
         n659, n660, n661, n662, n663, n664, n665, n666, n667, n668, n669,
         n670, n671, n672, n673, n674, n675, n676, n677, n678, n679, n680,
         n681, n682, n683, n684, n685, n686, n687, n688, n689, n690, n691,
         n692, n693, n694, n695, n696, n697, n698, n699, n700, n701, n702,
         n703, n704, n705, n706, n707, n708, n709, n710, n711, n712, n713,
         n714, n715, n716, n717, n718, n719, n720, n721, n722, n723, n724,
         n725, n726, n727, n728, n729, n730, n731, n732, n733, n734, n735,
         n736, n737, n738, n739, n740, n741, n742, n743, n744, n745, n746,
         n747, n748, n749, n750, n751, n752, n753, n754, n755, n756, n757,
         n758, n759, n760, n761, n762, n763, n764, n765, n766, n767, n768,
         n769, n770, n771, n772, n773, n774, n775, n776, n777, n778, n779,
         n780, n781, n782, n783, n784, n785, n786, n787, n788, n789, n790,
         n791, n792, n793, n794, n795, n796, n797, n798, n799, n800, n801,
         n802, n803, n804, n805, n806, n807, n808, n809, n810, n811, n812,
         n813, n814, n815, n816, n817, n818, n819, n820, n821, n822, n823,
         n824, n825, n826, n827, n828, n829, n830, n831, n832, n833, n834,
         n835, n836, n837, n838, n839, n840, n841, n842, n843, n844, n845,
         n846, n847, n848, n849, n850, n851, n852, n853, n854, n855, n856,
         n857, n858, n859, n860, n861, n862, n863, n864, n865, n866, n867,
         n868, n869, n870, n871, n872, n873, n874, n875, n876, n877, n878,
         n879, n880, n881, n882, n883, n884, n885, n886, n887, n888, n889,
         n890, n891, n892, n893, n894, n895, n896, n897, n898, n899, n900,
         n901, n902, n903, n904, n905, n906, n907, n908, n909, n910, n911,
         n912, n913, n914, n915, n916, n917, n918, n919, n920, n921, n922,
         n923, n924, n925, n926, n927, n928, n929, n930, n931, n932, n933,
         n934, n935, n936, n937, n938, n939, n940, n941, n942, n943, n944,
         n945, n946, n947, n948, n949, n950, n951, n952, n953, n954, n955,
         n956, n957, n958, n959, n960, n961, n962, n963, n964, n965, n966,
         n967, n968, n969, n970, n971, n972, n973, n974, n975, n976, n977,
         n978, n979, n980, n981, n982, n983, n984, n985, n986, n987, n988,
         n989, n990, n991, n992, n993, n994, n995, n996, n997, n998, n999,
         n1000, n1001, n1002, n1003, n1004, n1005, n1006, n1007, n1008, n1009,
         n1010, n1011, n1012, n1013, n1014, n1015, n1016, n1017, n1018, n1019,
         n1020, n1021, n1022, n1023, n1024, n1025, n1026, n1027, n1028, n1029,
         n1030, n1031, n1032, n1033, n1034, n1035, n1036, n1037, n1038, n1039,
         n1040, n1041, n1042, n1043, n1044, n1045, n1046, n1047, n1048, n1049,
         n1050, n1051, n1052, n1053;
  wire   [15:0] A_reg;
  wire   [15:0] B_reg;
  wire   [2:0] ALUControl_reg;
  tri   [15:0] \ALU_INSTANCE/or_result ;
  tri   [15:0] \ALU_INSTANCE/and_result ;

  DFFQX1TAS7 \ALUControl_reg_reg[2]  ( .D(N37), .CK(clk), .Q(ALUControl_reg[2]) );
  DFFQX1TAS7 \ALUControl_reg_reg[1]  ( .D(N36), .CK(clk), .Q(ALUControl_reg[1]) );
  DFFQX1TAS7 \A_reg_reg[15]  ( .D(N18), .CK(clk), .Q(A_reg[15]) );
  DFFQX1TAS7 \A_reg_reg[14]  ( .D(N17), .CK(clk), .Q(A_reg[14]) );
  DFFQX1TAS7 \A_reg_reg[13]  ( .D(N16), .CK(clk), .Q(A_reg[13]) );
  DFFQX1TAS7 \B_reg_reg[15]  ( .D(N34), .CK(clk), .Q(B_reg[15]) );
  DFFQX1TAS7 \B_reg_reg[14]  ( .D(N33), .CK(clk), .Q(B_reg[14]) );
  DFFQX1TAS7 \B_reg_reg[13]  ( .D(N32), .CK(clk), .Q(B_reg[13]) );
  DFFQX1TAS7 \B_reg_reg[12]  ( .D(N31), .CK(clk), .Q(B_reg[12]) );
  DFFQX1TAS7 MulOverflow_reg ( .D(N58), .CK(clk), .Q(MulOverflow) );
  DFFQX1TAS7 \Result_reg[15]  ( .D(n1051), .CK(clk), .Q(Result[15]) );
  DFFQX1TAS7 \Result_reg[14]  ( .D(N52), .CK(clk), .Q(Result[14]) );
  DFFQX1TAS7 \Result_reg[13]  ( .D(N51), .CK(clk), .Q(Result[13]) );
  DFFQX1TAS7 \Result_reg[12]  ( .D(N50), .CK(clk), .Q(Result[12]) );
  DFFQX1TAS7 \Result_reg[11]  ( .D(N49), .CK(clk), .Q(Result[11]) );
  DFFQX1TAS7 \Result_reg[10]  ( .D(N48), .CK(clk), .Q(Result[10]) );
  DFFQX1TAS7 \Result_reg[9]  ( .D(N47), .CK(clk), .Q(Result[9]) );
  DFFQX1TAS7 \Result_reg[8]  ( .D(N46), .CK(clk), .Q(Result[8]) );
  DFFQX1TAS7 \Result_reg[7]  ( .D(N45), .CK(clk), .Q(Result[7]) );
  DFFQX1TAS7 \Result_reg[6]  ( .D(N44), .CK(clk), .Q(Result[6]) );
  DFFQX1TAS7 \Result_reg[5]  ( .D(N43), .CK(clk), .Q(Result[5]) );
  DFFQX1TAS7 \Result_reg[4]  ( .D(N42), .CK(clk), .Q(Result[4]) );
  DFFQX1TAS7 \Result_reg[3]  ( .D(N41), .CK(clk), .Q(Result[3]) );
  DFFQX1TAS7 \Result_reg[2]  ( .D(N40), .CK(clk), .Q(Result[2]) );
  DFFQX1TAS7 \Result_reg[1]  ( .D(N39), .CK(clk), .Q(Result[1]) );
  DFFQX1TAS7 \Result_reg[0]  ( .D(N38), .CK(clk), .Q(Result[0]) );
  DFFQX1TAS7 \NZCV_reg[3]  ( .D(n1051), .CK(clk), .Q(NZCV[3]) );
  DFFQX1TAS7 \NZCV_reg[1]  ( .D(n1049), .CK(clk), .Q(NZCV[1]) );
  DFFQX1TAS7 \NZCV_reg[0]  ( .D(n1048), .CK(clk), .Q(NZCV[0]) );
  TRIINVX1TAS7 \ALU_INSTANCE/TRI_AND/Y_tri[0]  ( .I(\ALU_INSTANCE/n1 ), .E(
        n1050), .O(\ALU_INSTANCE/and_result [0]) );
  TRIINVX1TAS7 \ALU_INSTANCE/TRI_AND/Y_tri[1]  ( .I(\ALU_INSTANCE/n3 ), .E(
        n1052), .O(\ALU_INSTANCE/and_result [1]) );
  TRIINVX1TAS7 \ALU_INSTANCE/TRI_AND/Y_tri[2]  ( .I(\ALU_INSTANCE/n5 ), .E(
        n1052), .O(\ALU_INSTANCE/and_result [2]) );
  TRIINVX1TAS7 \ALU_INSTANCE/TRI_AND/Y_tri[4]  ( .I(\ALU_INSTANCE/n9 ), .E(
        n1052), .O(\ALU_INSTANCE/and_result [4]) );
  TRIINVX1TAS7 \ALU_INSTANCE/TRI_AND/Y_tri[5]  ( .I(\ALU_INSTANCE/n11 ), .E(
        n1052), .O(\ALU_INSTANCE/and_result [5]) );
  TRIINVX1TAS7 \ALU_INSTANCE/TRI_AND/Y_tri[6]  ( .I(\ALU_INSTANCE/n13 ), .E(
        n1050), .O(\ALU_INSTANCE/and_result [6]) );
  TRIINVX1TAS7 \ALU_INSTANCE/TRI_AND/Y_tri[7]  ( .I(\ALU_INSTANCE/n15 ), .E(
        n1050), .O(\ALU_INSTANCE/and_result [7]) );
  TRIINVX1TAS7 \ALU_INSTANCE/TRI_AND/Y_tri[8]  ( .I(\ALU_INSTANCE/n17 ), .E(
        n1050), .O(\ALU_INSTANCE/and_result [8]) );
  TRIINVX1TAS7 \ALU_INSTANCE/TRI_AND/Y_tri[9]  ( .I(\ALU_INSTANCE/n19 ), .E(
        n1050), .O(\ALU_INSTANCE/and_result [9]) );
  TRIINVX1TAS7 \ALU_INSTANCE/TRI_AND/Y_tri[10]  ( .I(\ALU_INSTANCE/n21 ), .E(
        n1050), .O(\ALU_INSTANCE/and_result [10]) );
  TRIINVX1TAS7 \ALU_INSTANCE/TRI_AND/Y_tri[11]  ( .I(\ALU_INSTANCE/n23 ), .E(
        n1050), .O(\ALU_INSTANCE/and_result [11]) );
  TRIINVX1TAS7 \ALU_INSTANCE/TRI_AND/Y_tri[12]  ( .I(\ALU_INSTANCE/n25 ), .E(
        n1050), .O(\ALU_INSTANCE/and_result [12]) );
  TRIINVX1TAS7 \ALU_INSTANCE/TRI_AND/Y_tri[13]  ( .I(\ALU_INSTANCE/n27 ), .E(
        n1050), .O(\ALU_INSTANCE/and_result [13]) );
  TRIINVX1TAS7 \ALU_INSTANCE/TRI_AND/Y_tri[14]  ( .I(\ALU_INSTANCE/n29 ), .E(
        n1050), .O(\ALU_INSTANCE/and_result [14]) );
  TRIINVX1TAS7 \ALU_INSTANCE/TRI_AND/Y_tri[15]  ( .I(\ALU_INSTANCE/n31 ), .E(
        n1050), .O(\ALU_INSTANCE/and_result [15]) );
  TRIINVX1TAS7 \ALU_INSTANCE/TRI_OR/Y_tri[0]  ( .I(\ALU_INSTANCE/n33 ), .E(
        n1053), .O(\ALU_INSTANCE/or_result [0]) );
  TRIINVX1TAS7 \ALU_INSTANCE/TRI_OR/Y_tri[1]  ( .I(\ALU_INSTANCE/n35 ), .E(
        n1053), .O(\ALU_INSTANCE/or_result [1]) );
  TRIINVX1TAS7 \ALU_INSTANCE/TRI_OR/Y_tri[2]  ( .I(\ALU_INSTANCE/n37 ), .E(
        n1053), .O(\ALU_INSTANCE/or_result [2]) );
  TRIINVX1TAS7 \ALU_INSTANCE/TRI_OR/Y_tri[3]  ( .I(\ALU_INSTANCE/n39 ), .E(
        n1053), .O(\ALU_INSTANCE/or_result [3]) );
  TRIINVX1TAS7 \ALU_INSTANCE/TRI_OR/Y_tri[4]  ( .I(\ALU_INSTANCE/n41 ), .E(
        n1053), .O(\ALU_INSTANCE/or_result [4]) );
  TRIINVX1TAS7 \ALU_INSTANCE/TRI_OR/Y_tri[5]  ( .I(\ALU_INSTANCE/n43 ), .E(
        n1053), .O(\ALU_INSTANCE/or_result [5]) );
  TRIINVX1TAS7 \ALU_INSTANCE/TRI_OR/Y_tri[6]  ( .I(\ALU_INSTANCE/n45 ), .E(
        n1053), .O(\ALU_INSTANCE/or_result [6]) );
  TRIINVX1TAS7 \ALU_INSTANCE/TRI_OR/Y_tri[7]  ( .I(\ALU_INSTANCE/n47 ), .E(
        n1053), .O(\ALU_INSTANCE/or_result [7]) );
  TRIINVX1TAS7 \ALU_INSTANCE/TRI_OR/Y_tri[8]  ( .I(\ALU_INSTANCE/n49 ), .E(
        n1053), .O(\ALU_INSTANCE/or_result [8]) );
  TRIINVX1TAS7 \ALU_INSTANCE/TRI_OR/Y_tri[9]  ( .I(\ALU_INSTANCE/n51 ), .E(
        n1053), .O(\ALU_INSTANCE/or_result [9]) );
  TRIINVX1TAS7 \ALU_INSTANCE/TRI_OR/Y_tri[10]  ( .I(\ALU_INSTANCE/n53 ), .E(
        n1053), .O(\ALU_INSTANCE/or_result [10]) );
  TRIINVX1TAS7 \ALU_INSTANCE/TRI_OR/Y_tri[11]  ( .I(\ALU_INSTANCE/n55 ), .E(
        n1053), .O(\ALU_INSTANCE/or_result [11]) );
  TRIINVX1TAS7 \ALU_INSTANCE/TRI_OR/Y_tri[12]  ( .I(\ALU_INSTANCE/n57 ), .E(
        n1053), .O(\ALU_INSTANCE/or_result [12]) );
  TRIINVX1TAS7 \ALU_INSTANCE/TRI_OR/Y_tri[13]  ( .I(\ALU_INSTANCE/n59 ), .E(
        n1053), .O(\ALU_INSTANCE/or_result [13]) );
  TRIINVX1TAS7 \ALU_INSTANCE/TRI_OR/Y_tri[14]  ( .I(\ALU_INSTANCE/n61 ), .E(
        n1053), .O(\ALU_INSTANCE/or_result [14]) );
  TRIINVX1TAS7 \ALU_INSTANCE/TRI_OR/Y_tri[15]  ( .I(\ALU_INSTANCE/n63 ), .E(
        n1053), .O(\ALU_INSTANCE/or_result [15]) );
  DFFQX1TAS7 \A_reg_reg[12]  ( .D(N15), .CK(clk), .Q(A_reg[12]) );
  DFFQX1TAS7 \A_reg_reg[11]  ( .D(N14), .CK(clk), .Q(A_reg[11]) );
  DFFQX1TAS7 \A_reg_reg[10]  ( .D(N13), .CK(clk), .Q(A_reg[10]) );
  DFFQX1TAS7 \A_reg_reg[9]  ( .D(N12), .CK(clk), .Q(A_reg[9]) );
  DFFQX1TAS7 \A_reg_reg[8]  ( .D(N11), .CK(clk), .Q(A_reg[8]) );
  DFFQX1TAS7 \A_reg_reg[6]  ( .D(N9), .CK(clk), .Q(A_reg[6]) );
  DFFQX2TAS7 \A_reg_reg[5]  ( .D(N8), .CK(clk), .Q(A_reg[5]) );
  DFFQX1TAS7 \B_reg_reg[11]  ( .D(N30), .CK(clk), .Q(B_reg[11]) );
  DFFQX1TAS7 \B_reg_reg[10]  ( .D(N29), .CK(clk), .Q(B_reg[10]) );
  DFFQX1TAS7 \B_reg_reg[9]  ( .D(N28), .CK(clk), .Q(B_reg[9]) );
  DFFQX1TAS7 \B_reg_reg[7]  ( .D(N26), .CK(clk), .Q(B_reg[7]) );
  DFFQX1TAS7 \B_reg_reg[6]  ( .D(N25), .CK(clk), .Q(B_reg[6]) );
  DFFQX1TAS7 \B_reg_reg[5]  ( .D(N24), .CK(clk), .Q(B_reg[5]) );
  DFFQX2TAS7 \A_reg_reg[2]  ( .D(N5), .CK(clk), .Q(A_reg[2]) );
  DFFQX4TAS7 \A_reg_reg[0]  ( .D(N3), .CK(clk), .Q(A_reg[0]) );
  TRIINVX1TAS7 \ALU_INSTANCE/TRI_AND/Y_tri[3]  ( .I(\ALU_INSTANCE/n7 ), .E(
        n1050), .O(\ALU_INSTANCE/and_result [3]) );
  DFFQX4TAS7 \A_reg_reg[1]  ( .D(N4), .CK(clk), .Q(A_reg[1]) );
  DFFQX4TAS7 \B_reg_reg[2]  ( .D(N21), .CK(clk), .Q(B_reg[2]) );
  DFFQX4TAS7 \A_reg_reg[3]  ( .D(N6), .CK(clk), .Q(A_reg[3]) );
  DFFQX4TAS7 \B_reg_reg[0]  ( .D(N19), .CK(clk), .Q(B_reg[0]) );
  DFFQX4TAS7 \B_reg_reg[1]  ( .D(N20), .CK(clk), .Q(B_reg[1]) );
  DFFQX2TAS7 \B_reg_reg[4]  ( .D(N23), .CK(clk), .Q(B_reg[4]) );
  DFFQX2TAS7 \B_reg_reg[8]  ( .D(N27), .CK(clk), .Q(B_reg[8]) );
  DFFQX4TAS7 \NZCV_reg[2]  ( .D(N56), .CK(clk), .Q(NZCV[2]) );
  DFFQX4TAS7 \B_reg_reg[3]  ( .D(N22), .CK(clk), .Q(B_reg[3]) );
  DFFQX2TAS7 \A_reg_reg[4]  ( .D(N7), .CK(clk), .Q(A_reg[4]) );
  DFFQX2TAS7 \ALUControl_reg_reg[0]  ( .D(N35), .CK(clk), .Q(ALUControl_reg[0]) );
  DFFQX1TAS7 \A_reg_reg[7]  ( .D(N10), .CK(clk), .Q(A_reg[7]) );
  INVX1TAS7 U59 ( .I(n330), .O(n395) );
  XNOR2X1TAS7 U60 ( .I1(n163), .I2(n162), .O(n172) );
  INVX1TAS7 U61 ( .I(n82), .O(n20) );
  INVX1TAS7 U62 ( .I(A_reg[1]), .O(n938) );
  CLKINVX1TAS7 U63 ( .I(n589), .O(n648) );
  NOR2X1TAS7 U64 ( .I1(n643), .I2(n642), .O(n859) );
  CLKINVX1TAS7 U65 ( .I(n614), .O(n787) );
  OR2X1TAS7 U66 ( .I1(n191), .I2(n190), .O(n1) );
  XOR2X1TAS7 U67 ( .I1(n426), .I2(n425), .O(n2) );
  NAND2X1TAS7 U68 ( .I1(n90), .I2(n36), .O(n107) );
  OR2X1TAS7 U69 ( .I1(n32), .I2(n130), .O(n159) );
  NAND2X1TAS7 U70 ( .I1(A_reg[5]), .I2(B_reg[1]), .O(n130) );
  OAI112X1TAS7 U71 ( .C1(n276), .C2(n232), .A1(n231), .B1(n230), .O(n234) );
  NAND2X1TAS7 U72 ( .I1(n234), .I2(n233), .O(n303) );
  XOR2X1TAS7 U73 ( .I1(n147), .I2(n141), .O(n154) );
  NAND2X1TAS7 U74 ( .I1(n663), .I2(\ALU_INSTANCE/n1 ), .O(n738) );
  XOR2X1TAS7 U75 ( .I1(n624), .I2(n623), .O(n807) );
  XOR2X1TAS7 U76 ( .I1(n364), .I2(n363), .O(n777) );
  NAND2X1TAS7 U77 ( .I1(n357), .I2(n356), .O(n750) );
  OAI12X1TAS7 U78 ( .B1(n799), .B2(n798), .A1(n797), .O(n885) );
  XOR2X1TAS7 U79 ( .I1(n843), .I2(n842), .O(n852) );
  NAND2X1TAS7 U80 ( .I1(A_reg[0]), .I2(B_reg[0]), .O(\ALU_INSTANCE/n1 ) );
  NAND2X1TAS7 U81 ( .I1(B_reg[3]), .I2(A_reg[3]), .O(\ALU_INSTANCE/n7 ) );
  NAND2X1TAS7 U82 ( .I1(B_reg[1]), .I2(A_reg[1]), .O(\ALU_INSTANCE/n3 ) );
  NAND2X1TAS7 U83 ( .I1(B_reg[2]), .I2(A_reg[2]), .O(\ALU_INSTANCE/n5 ) );
  NAND2X1TAS7 U84 ( .I1(A_reg[7]), .I2(B_reg[7]), .O(\ALU_INSTANCE/n15 ) );
  NAND2X1TAS7 U85 ( .I1(B_reg[4]), .I2(A_reg[4]), .O(\ALU_INSTANCE/n9 ) );
  NAND2X1TAS7 U86 ( .I1(B_reg[5]), .I2(A_reg[5]), .O(\ALU_INSTANCE/n11 ) );
  NAND2X1TAS7 U87 ( .I1(A_reg[6]), .I2(B_reg[6]), .O(\ALU_INSTANCE/n13 ) );
  CLKINVX1TAS7 U88 ( .I(ALUControl_reg[2]), .O(n695) );
  NAND3B1X1TAS7 U89 ( .B3(ALUControl_reg[1]), .I1(n695), .I2(ALUControl_reg[0]), .O(n3) );
  CLKINVX1TAS7 U90 ( .I(n3), .O(n1053) );
  OR2X1TAS7 U91 ( .I1(ALUControl_reg[1]), .I2(ALUControl_reg[0]), .O(n661) );
  NOR2X1TAS7 U92 ( .I1(n661), .I2(ALUControl_reg[2]), .O(n1052) );
  BUFX1TAS7 U93 ( .I(n1052), .O(n1050) );
  NAND2X1TAS7 U94 ( .I1(A_reg[11]), .I2(B_reg[3]), .O(n1003) );
  NAND2X1TAS7 U95 ( .I1(A_reg[10]), .I2(B_reg[2]), .O(n54) );
  OR2X1TAS7 U96 ( .I1(n1003), .I2(n54), .O(n199) );
  NAND2X1TAS7 U97 ( .I1(A_reg[10]), .I2(B_reg[3]), .O(n52) );
  OAI12B2X1TAS7 U98 ( .B1B(A_reg[11]), .B2B(B_reg[2]), .A1(n52), .O(n4) );
  NAND2X1TAS7 U99 ( .I1(n199), .I2(n4), .O(n200) );
  CLKINVX1TAS7 U100 ( .I(n200), .O(n998) );
  NAND2X1TAS7 U101 ( .I1(A_reg[9]), .I2(B_reg[2]), .O(n51) );
  CLKINVX1TAS7 U102 ( .I(n51), .O(n74) );
  NAND2X1TAS7 U103 ( .I1(A_reg[8]), .I2(B_reg[3]), .O(n49) );
  CLKINVX1TAS7 U104 ( .I(n49), .O(n73) );
  NAND2X1TAS7 U105 ( .I1(B_reg[2]), .I2(B_reg[3]), .O(n164) );
  CLKINVX1TAS7 U106 ( .I(A_reg[2]), .O(n728) );
  NAND2X1TAS7 U107 ( .I1(A_reg[0]), .I2(A_reg[3]), .O(n5) );
  NAND2X1TAS7 U108 ( .I1(n728), .I2(n5), .O(n9) );
  NAND2X1TAS7 U109 ( .I1(A_reg[3]), .I2(A_reg[2]), .O(n6) );
  NAND2X1TAS7 U110 ( .I1(n6), .I2(n938), .O(n8) );
  NAND4B2X1TAS7 U111 ( .B3(n164), .B4(\ALU_INSTANCE/n7 ), .I1(n9), .I2(n8), 
        .O(n7) );
  NAND2X1TAS7 U112 ( .I1(B_reg[2]), .I2(A_reg[4]), .O(n132) );
  NAND2X1TAS7 U113 ( .I1(n7), .I2(n132), .O(n124) );
  CLKINVX1TAS7 U114 ( .I(n124), .O(n12) );
  NAND2X1TAS7 U115 ( .I1(B_reg[2]), .I2(A_reg[5]), .O(n127) );
  CLKINVX1TAS7 U116 ( .I(n127), .O(n11) );
  NAND2X1TAS7 U117 ( .I1(B_reg[3]), .I2(A_reg[4]), .O(n126) );
  CLKINVX1TAS7 U118 ( .I(n126), .O(n10) );
  NAND3B1X1TAS7 U119 ( .B3(n164), .I1(n9), .I2(n8), .O(n131) );
  NAND2X1TAS7 U120 ( .I1(n131), .I2(\ALU_INSTANCE/n7 ), .O(n123) );
  OAI12X1TAS7 U121 ( .B1(n11), .B2(n10), .A1(n123), .O(n100) );
  OR2X1TAS7 U122 ( .I1(n127), .I2(n126), .O(n98) );
  OAI12X2TAS7 U123 ( .B1(n12), .B2(n100), .A1(n98), .O(n105) );
  NAND2X1TAS7 U124 ( .I1(B_reg[3]), .I2(A_reg[6]), .O(n15) );
  OR2X1TAS7 U125 ( .I1(n15), .I2(n127), .O(n97) );
  NAND2X1TAS7 U126 ( .I1(B_reg[2]), .I2(A_reg[6]), .O(n16) );
  NAND2X1TAS7 U127 ( .I1(B_reg[3]), .I2(A_reg[5]), .O(n13) );
  NAND2X1TAS7 U128 ( .I1(n16), .I2(n13), .O(n96) );
  AND2X1TAS7 U129 ( .I1(n97), .I2(n96), .O(n104) );
  NAND2X1TAS7 U130 ( .I1(n105), .I2(n104), .O(n103) );
  NAND2X1TAS7 U131 ( .I1(A_reg[7]), .I2(B_reg[2]), .O(n14) );
  AND2X1TAS7 U132 ( .I1(n15), .I2(n14), .O(n94) );
  NOR2X1TAS7 U133 ( .I1(n103), .I2(n94), .O(n19) );
  NAND2X1TAS7 U134 ( .I1(A_reg[7]), .I2(B_reg[3]), .O(n83) );
  NOR2X1TAS7 U135 ( .I1(n83), .I2(n16), .O(n95) );
  CLKINVX1TAS7 U136 ( .I(n97), .O(n17) );
  OR2X1TAS7 U137 ( .I1(n95), .I2(n17), .O(n18) );
  OR2X2TAS7 U138 ( .I1(n19), .I2(n18), .O(n82) );
  NAND2X2TAS7 U139 ( .I1(n20), .I2(n83), .O(n70) );
  OAI12X1TAS7 U140 ( .B1(n74), .B2(n73), .A1(n70), .O(n50) );
  CLKINVX1TAS7 U141 ( .I(n83), .O(n21) );
  AND2X1TAS7 U142 ( .I1(A_reg[8]), .I2(B_reg[2]), .O(n84) );
  AOI12X1TAS7 U143 ( .B1(n82), .B2(n21), .A1(n84), .O(n69) );
  OR2X1TAS7 U144 ( .I1(A_reg[10]), .I2(A_reg[9]), .O(n970) );
  CLKINVX1TAS7 U145 ( .I(n970), .O(n24) );
  CLKINVX1TAS7 U146 ( .I(n52), .O(n22) );
  OAI12X1TAS7 U147 ( .B1(n22), .B2(n73), .A1(n74), .O(n23) );
  OAI13X1TAS7 U148 ( .B1(n50), .B2(n69), .B3(n24), .A1(n23), .O(n25) );
  XOR2X1TAS7 U149 ( .I1(n998), .I2(n25), .O(n193) );
  NAND2X1TAS7 U150 ( .I1(A_reg[13]), .I2(B_reg[1]), .O(n918) );
  NAND2X1TAS7 U151 ( .I1(A_reg[12]), .I2(B_reg[0]), .O(n64) );
  OR2X1TAS7 U152 ( .I1(n918), .I2(n64), .O(n203) );
  NAND2X1TAS7 U153 ( .I1(A_reg[12]), .I2(B_reg[1]), .O(n61) );
  NAND2X1TAS7 U154 ( .I1(A_reg[13]), .I2(B_reg[0]), .O(n26) );
  NAND2X1TAS7 U155 ( .I1(n61), .I2(n26), .O(n27) );
  NAND2X1TAS7 U156 ( .I1(n203), .I2(n27), .O(n204) );
  CLKINVX1TAS7 U157 ( .I(n204), .O(n913) );
  NAND2X1TAS7 U158 ( .I1(A_reg[11]), .I2(B_reg[0]), .O(n62) );
  CLKINVX1TAS7 U159 ( .I(n62), .O(n80) );
  NAND2X1TAS7 U160 ( .I1(A_reg[10]), .I2(B_reg[1]), .O(n59) );
  CLKINVX1TAS7 U161 ( .I(n59), .O(n79) );
  NAND2X1TAS7 U162 ( .I1(A_reg[3]), .I2(B_reg[0]), .O(n149) );
  NAND2X1TAS7 U163 ( .I1(A_reg[2]), .I2(B_reg[1]), .O(n150) );
  NAND2X1TAS7 U164 ( .I1(n149), .I2(n150), .O(n28) );
  OR2X1TAS7 U165 ( .I1(A_reg[0]), .I2(A_reg[2]), .O(n467) );
  NAND3B1X2TAS7 U166 ( .B3(\ALU_INSTANCE/n3 ), .I1(B_reg[0]), .I2(n467), .O(
        n148) );
  NOR2B1X1TAS7 U167 ( .B2(n28), .I1(n148), .O(n134) );
  NAND2X1TAS7 U168 ( .I1(A_reg[4]), .I2(B_reg[1]), .O(n135) );
  NAND2X1TAS7 U169 ( .I1(A_reg[5]), .I2(B_reg[0]), .O(n29) );
  NAND2X1TAS7 U170 ( .I1(n135), .I2(n29), .O(n158) );
  NAND2X1TAS7 U171 ( .I1(A_reg[4]), .I2(B_reg[0]), .O(n32) );
  NAND2X1TAS7 U172 ( .I1(A_reg[3]), .I2(B_reg[1]), .O(n30) );
  NAND2X1TAS7 U173 ( .I1(n32), .I2(n30), .O(n136) );
  NAND2X1TAS7 U174 ( .I1(n158), .I2(n136), .O(n116) );
  CLKINVX1TAS7 U175 ( .I(n116), .O(n34) );
  AOI12X1TAS7 U176 ( .B1(A_reg[5]), .B2(A_reg[2]), .A1(A_reg[4]), .O(n31) );
  CLKINVX1TAS7 U177 ( .I(B_reg[1]), .O(n735) );
  OR3X1TAS7 U178 ( .I1(n31), .I2(n149), .I3(n735), .O(n33) );
  NAND2X1TAS7 U179 ( .I1(n33), .I2(n159), .O(n118) );
  AOI12X1TAS7 U180 ( .B1(n134), .B2(n34), .A1(n118), .O(n128) );
  NAND2X1TAS7 U181 ( .I1(A_reg[6]), .I2(B_reg[0]), .O(n129) );
  NAND2X1TAS7 U182 ( .I1(A_reg[7]), .I2(B_reg[0]), .O(n115) );
  NAND2X1TAS7 U183 ( .I1(A_reg[6]), .I2(B_reg[1]), .O(n114) );
  OR2X1TAS7 U184 ( .I1(n115), .I2(n114), .O(n35) );
  OAI12X1TAS7 U185 ( .B1(n130), .B2(n129), .A1(n35), .O(n108) );
  CLKINVX1TAS7 U186 ( .I(n108), .O(n38) );
  NAND2X1TAS7 U187 ( .I1(A_reg[8]), .I2(B_reg[1]), .O(n40) );
  OR2X1TAS7 U188 ( .I1(n40), .I2(n115), .O(n90) );
  NAND2X1TAS7 U189 ( .I1(A_reg[8]), .I2(B_reg[0]), .O(n41) );
  OAI12B2X1TAS7 U190 ( .B1B(A_reg[7]), .B2B(B_reg[1]), .A1(n41), .O(n36) );
  AOI22X1TAS7 U191 ( .A1(n130), .A2(n129), .B1(n115), .B2(n114), .O(n110) );
  NAND2B1X1TAS7 U192 ( .B2(n107), .I1(n110), .O(n37) );
  AOI12X1TAS7 U193 ( .B1(n128), .B2(n38), .A1(n37), .O(n113) );
  NAND2X1TAS7 U194 ( .I1(A_reg[9]), .I2(B_reg[0]), .O(n39) );
  NAND2X1TAS7 U195 ( .I1(n40), .I2(n39), .O(n88) );
  NAND2X1TAS7 U196 ( .I1(A_reg[9]), .I2(B_reg[1]), .O(n43) );
  OR2X1TAS7 U197 ( .I1(n41), .I2(n43), .O(n89) );
  NAND2X1TAS7 U198 ( .I1(n90), .I2(n89), .O(n42) );
  AOI12X1TAS7 U199 ( .B1(n113), .B2(n88), .A1(n42), .O(n85) );
  NAND2X1TAS7 U200 ( .I1(n85), .I2(n43), .O(n75) );
  OAI12X1TAS7 U201 ( .B1(n80), .B2(n79), .A1(n75), .O(n60) );
  CLKINVX1TAS7 U202 ( .I(n85), .O(n44) );
  CLKINVX1TAS7 U203 ( .I(n43), .O(n86) );
  AND2X1TAS7 U204 ( .I1(A_reg[10]), .I2(B_reg[0]), .O(n87) );
  AOI12X1TAS7 U205 ( .B1(n44), .B2(n86), .A1(n87), .O(n77) );
  OR2X1TAS7 U206 ( .I1(A_reg[12]), .I2(A_reg[11]), .O(n979) );
  CLKINVX1TAS7 U207 ( .I(n979), .O(n47) );
  CLKINVX1TAS7 U208 ( .I(n61), .O(n45) );
  OAI12X1TAS7 U209 ( .B1(n79), .B2(n45), .A1(n80), .O(n46) );
  OAI13X1TAS7 U210 ( .B1(n60), .B2(n77), .B3(n47), .A1(n46), .O(n48) );
  XOR2X1TAS7 U211 ( .I1(n913), .I2(n48), .O(n192) );
  OR2X1TAS7 U212 ( .I1(n193), .I2(n192), .O(n320) );
  OAI22X1TAS7 U213 ( .A1(n50), .A2(n69), .B1(n51), .B2(n49), .O(n999) );
  NAND2X1TAS7 U214 ( .I1(A_reg[9]), .I2(B_reg[3]), .O(n53) );
  OR2X1TAS7 U215 ( .I1(n52), .I2(n51), .O(n198) );
  OAI12B2X1TAS7 U216 ( .B1B(n54), .B2B(n53), .A1(n198), .O(n55) );
  CLKINVX1TAS7 U217 ( .I(n55), .O(n58) );
  AND2X1TAS7 U218 ( .I1(n198), .I2(n970), .O(n56) );
  NAND2X1TAS7 U219 ( .I1(n999), .I2(n56), .O(n201) );
  CLKINVX1TAS7 U220 ( .I(n201), .O(n57) );
  AOI12B2X1TAS7 U221 ( .B1B(n999), .B2B(n58), .A1(n57), .O(n191) );
  OAI22X1TAS7 U222 ( .A1(n60), .A2(n77), .B1(n62), .B2(n59), .O(n914) );
  NAND2X1TAS7 U223 ( .I1(A_reg[11]), .I2(B_reg[1]), .O(n63) );
  OR2X1TAS7 U224 ( .I1(n62), .I2(n61), .O(n202) );
  OAI12B2X1TAS7 U225 ( .B1B(n64), .B2B(n63), .A1(n202), .O(n65) );
  CLKINVX1TAS7 U226 ( .I(n65), .O(n67) );
  AND2X1TAS7 U227 ( .I1(n202), .I2(n979), .O(n66) );
  NAND2X1TAS7 U228 ( .I1(n914), .I2(n66), .O(n205) );
  OAI12X1TAS7 U229 ( .B1(n914), .B2(n67), .A1(n205), .O(n68) );
  CLKINVX1TAS7 U230 ( .I(n68), .O(n190) );
  NAND2X1TAS7 U231 ( .I1(n320), .I2(n1), .O(n197) );
  CLKINVX1TAS7 U232 ( .I(n69), .O(n71) );
  NAND2X1TAS7 U233 ( .I1(n71), .I2(n70), .O(n72) );
  XNOR3X1TAS7 U234 ( .I1(n74), .I2(n73), .I3(n72), .O(n189) );
  CLKINVX1TAS7 U235 ( .I(n75), .O(n76) );
  OR2X1TAS7 U236 ( .I1(n77), .I2(n76), .O(n78) );
  XNOR3X1TAS7 U237 ( .I1(n80), .I2(n79), .I3(n78), .O(n188) );
  CLKINVX1TAS7 U238 ( .I(n188), .O(n81) );
  NAND2B1X1TAS7 U239 ( .B2(n189), .I1(n81), .O(n424) );
  XNOR3X1TAS7 U240 ( .I1(n84), .I2(n83), .I3(n82), .O(n184) );
  XNOR3X1TAS7 U241 ( .I1(n87), .I2(n86), .I3(n85), .O(n183) );
  OR2X1TAS7 U242 ( .I1(n184), .I2(n183), .O(n329) );
  NAND2X1TAS7 U243 ( .I1(n89), .I2(n88), .O(n93) );
  CLKINVX1TAS7 U244 ( .I(n90), .O(n91) );
  NOR2X1TAS7 U245 ( .I1(n113), .I2(n91), .O(n92) );
  XOR2X1TAS7 U246 ( .I1(n93), .I2(n92), .O(n182) );
  NOR2X1TAS7 U247 ( .I1(n95), .I2(n94), .O(n102) );
  NAND2X1TAS7 U248 ( .I1(n124), .I2(n96), .O(n99) );
  OAI112X1TAS7 U249 ( .C1(n100), .C2(n99), .A1(n98), .B1(n97), .O(n101) );
  XOR2X1TAS7 U250 ( .I1(n102), .I2(n101), .O(n181) );
  NOR2X1TAS7 U251 ( .I1(n182), .I2(n181), .O(n339) );
  OAI12X1TAS7 U252 ( .B1(n105), .B2(n104), .A1(n103), .O(n106) );
  CLKINVX1TAS7 U253 ( .I(n106), .O(n180) );
  CLKINVX1TAS7 U254 ( .I(n128), .O(n111) );
  CLKINVX1TAS7 U255 ( .I(n107), .O(n109) );
  AOI112X1TAS7 U256 ( .C1(n111), .C2(n110), .A1(n109), .B1(n108), .O(n112) );
  NOR2X1TAS7 U257 ( .I1(n113), .I2(n112), .O(n179) );
  NOR2X1TAS7 U258 ( .I1(n180), .I2(n179), .O(n342) );
  NOR2X1TAS7 U259 ( .I1(n339), .I2(n342), .O(n332) );
  NAND2X1TAS7 U260 ( .I1(n329), .I2(n332), .O(n187) );
  XNOR2X1TAS7 U261 ( .I1(n115), .I2(n114), .O(n122) );
  CLKINVX1TAS7 U262 ( .I(n130), .O(n119) );
  OAI13X1TAS7 U263 ( .B1(n148), .B2(n116), .B3(n130), .A1(n129), .O(n117) );
  AOI12X1TAS7 U264 ( .B1(n119), .B2(n118), .A1(n117), .O(n120) );
  AOI12X1TAS7 U265 ( .B1(n128), .B2(n130), .A1(n120), .O(n121) );
  XNOR2X1TAS7 U266 ( .I1(n122), .I2(n121), .O(n176) );
  NAND2X1TAS7 U267 ( .I1(n124), .I2(n123), .O(n125) );
  XNOR3X1TAS7 U268 ( .I1(n127), .I2(n126), .I3(n125), .O(n175) );
  NOR2X1TAS7 U269 ( .I1(n176), .I2(n175), .O(n384) );
  XNOR3X1TAS7 U270 ( .I1(n130), .I2(n129), .I3(n128), .O(n174) );
  XNOR3X1TAS7 U271 ( .I1(n132), .I2(\ALU_INSTANCE/n7 ), .I3(n131), .O(n173) );
  NOR2X1TAS7 U272 ( .I1(n174), .I2(n173), .O(n382) );
  NOR2X1TAS7 U273 ( .I1(n384), .I2(n382), .O(n178) );
  NOR2X1TAS7 U274 ( .I1(n150), .I2(n149), .O(n133) );
  OR2X2TAS7 U275 ( .I1(n134), .I2(n133), .O(n138) );
  OR2X1TAS7 U276 ( .I1(n149), .I2(n135), .O(n160) );
  AND2X1TAS7 U277 ( .I1(n160), .I2(n136), .O(n137) );
  NAND2X1TAS7 U278 ( .I1(n138), .I2(n137), .O(n161) );
  OAI12X1TAS7 U279 ( .B1(n138), .B2(n137), .A1(n161), .O(n153) );
  NAND2X1TAS7 U280 ( .I1(B_reg[2]), .I2(A_reg[0]), .O(n145) );
  NAND2X1TAS7 U281 ( .I1(B_reg[3]), .I2(A_reg[1]), .O(n140) );
  NOR2X1TAS7 U282 ( .I1(n145), .I2(n140), .O(n147) );
  NOR2X1TAS7 U283 ( .I1(\ALU_INSTANCE/n5 ), .I2(n140), .O(n139) );
  AOI12X1TAS7 U284 ( .B1(n140), .B2(\ALU_INSTANCE/n5 ), .A1(n139), .O(n141) );
  CLKINVX1TAS7 U285 ( .I(n154), .O(n142) );
  AND2X1TAS7 U286 ( .I1(n153), .I2(n142), .O(n360) );
  NAND2X1TAS7 U287 ( .I1(B_reg[0]), .I2(A_reg[2]), .O(n144) );
  NAND2B1X1TAS7 U288 ( .B2(\ALU_INSTANCE/n3 ), .I1(\ALU_INSTANCE/n1 ), .O(n143) );
  XOR2X1TAS7 U289 ( .I1(n144), .I2(n143), .O(n731) );
  CLKINVX1TAS7 U290 ( .I(n145), .O(n730) );
  NAND2X1TAS7 U291 ( .I1(n731), .I2(n730), .O(n729) );
  CLKINVX1TAS7 U292 ( .I(n729), .O(n152) );
  AOI22X1TAS7 U293 ( .A1(B_reg[3]), .A2(A_reg[0]), .B1(B_reg[2]), .B2(A_reg[1]), .O(n146) );
  NOR2X1TAS7 U294 ( .I1(n147), .I2(n146), .O(n151) );
  NOR2X1TAS7 U295 ( .I1(n152), .I2(n151), .O(n358) );
  NOR2X1TAS7 U296 ( .I1(n360), .I2(n358), .O(n157) );
  XNOR3X1TAS7 U297 ( .I1(n150), .I2(n149), .I3(n148), .O(n721) );
  NAND2X1TAS7 U298 ( .I1(n152), .I2(n151), .O(n718) );
  CLKINVX1TAS7 U299 ( .I(n153), .O(n155) );
  NAND2X1TAS7 U300 ( .I1(n155), .I2(n154), .O(n361) );
  OAI12X1TAS7 U301 ( .B1(n360), .B2(n718), .A1(n361), .O(n156) );
  AOI12X1TAS7 U302 ( .B1(n157), .B2(n721), .A1(n156), .O(n375) );
  NAND2X1TAS7 U303 ( .I1(n159), .I2(n158), .O(n163) );
  NAND2X1TAS7 U304 ( .I1(n161), .I2(n160), .O(n162) );
  NAND2X1TAS7 U305 ( .I1(n467), .I2(A_reg[1]), .O(n269) );
  NOR2X1TAS7 U306 ( .I1(n269), .I2(n164), .O(n170) );
  CLKINVX1TAS7 U307 ( .I(n170), .O(n169) );
  CLKINVX1TAS7 U308 ( .I(B_reg[2]), .O(n166) );
  CLKINVX1TAS7 U309 ( .I(A_reg[3]), .O(n717) );
  CLKINVX1TAS7 U310 ( .I(B_reg[3]), .O(n165) );
  OAI22X1TAS7 U311 ( .A1(n166), .A2(n717), .B1(n165), .B2(n728), .O(n167) );
  OAI12X1TAS7 U312 ( .B1(\ALU_INSTANCE/n5 ), .B2(\ALU_INSTANCE/n7 ), .A1(n167), 
        .O(n168) );
  MUX2BX1TAS7 U313 ( .I0(n170), .I1(n169), .S(n168), .OB(n171) );
  NOR2X1TAS7 U314 ( .I1(n172), .I2(n171), .O(n371) );
  NAND2X1TAS7 U315 ( .I1(n172), .I2(n171), .O(n372) );
  OAI12X1TAS7 U316 ( .B1(n375), .B2(n371), .A1(n372), .O(n351) );
  NAND2X1TAS7 U317 ( .I1(n174), .I2(n173), .O(n381) );
  NAND2X1TAS7 U318 ( .I1(n176), .I2(n175), .O(n385) );
  OAI12X1TAS7 U319 ( .B1(n384), .B2(n381), .A1(n385), .O(n177) );
  AOI12X2TAS7 U320 ( .B1(n178), .B2(n351), .A1(n177), .O(n330) );
  NAND2X1TAS7 U321 ( .I1(n180), .I2(n179), .O(n393) );
  NAND2X1TAS7 U322 ( .I1(n182), .I2(n181), .O(n340) );
  OAI12X1TAS7 U323 ( .B1(n339), .B2(n393), .A1(n340), .O(n331) );
  NAND2X1TAS7 U324 ( .I1(n184), .I2(n183), .O(n328) );
  CLKINVX1TAS7 U325 ( .I(n328), .O(n185) );
  AOI12X1TAS7 U326 ( .B1(n329), .B2(n331), .A1(n185), .O(n186) );
  OAI12X1TAS7 U327 ( .B1(n187), .B2(n330), .A1(n186), .O(n426) );
  NAND2X1TAS7 U328 ( .I1(n189), .I2(n188), .O(n423) );
  OAI12B2X1TAS7 U329 ( .B1B(n424), .B2B(n426), .A1(n423), .O(n417) );
  CLKINVX1TAS7 U330 ( .I(n417), .O(n196) );
  NAND2X1TAS7 U331 ( .I1(n191), .I2(n190), .O(n415) );
  CLKINVX1TAS7 U332 ( .I(n415), .O(n321) );
  NAND2X1TAS7 U333 ( .I1(n193), .I2(n192), .O(n319) );
  CLKINVX1TAS7 U334 ( .I(n319), .O(n194) );
  AOI12X1TAS7 U335 ( .B1(n320), .B2(n321), .A1(n194), .O(n195) );
  OAI12X1TAS7 U336 ( .B1(n197), .B2(n196), .A1(n195), .O(n585) );
  CLKINVX1TAS7 U337 ( .I(n1003), .O(n573) );
  NAND2X1TAS7 U338 ( .I1(A_reg[12]), .I2(B_reg[2]), .O(n1002) );
  AND2X1TAS7 U339 ( .I1(n199), .I2(n198), .O(n1000) );
  OAI12X1TAS7 U340 ( .B1(n201), .B2(n200), .A1(n1000), .O(n572) );
  XNOR3X1TAS7 U341 ( .I1(n573), .I2(n1002), .I3(n572), .O(n207) );
  CLKINVX1TAS7 U342 ( .I(n918), .O(n580) );
  NAND2X1TAS7 U343 ( .I1(A_reg[14]), .I2(B_reg[0]), .O(n917) );
  AND2X1TAS7 U344 ( .I1(n203), .I2(n202), .O(n915) );
  OAI12X1TAS7 U345 ( .B1(n205), .B2(n204), .A1(n915), .O(n579) );
  XNOR3X1TAS7 U346 ( .I1(n580), .I2(n917), .I3(n579), .O(n206) );
  OR2X1TAS7 U347 ( .I1(n207), .I2(n206), .O(n584) );
  NAND2X1TAS7 U348 ( .I1(n207), .I2(n206), .O(n582) );
  NAND2X1TAS7 U349 ( .I1(n584), .I2(n582), .O(n208) );
  XOR2X1TAS7 U350 ( .I1(n585), .I2(n208), .O(n440) );
  CLKINVX1TAS7 U351 ( .I(\ALU_INSTANCE/n15 ), .O(n458) );
  NAND2X1TAS7 U352 ( .I1(A_reg[8]), .I2(B_reg[6]), .O(n925) );
  NAND2X1TAS7 U353 ( .I1(B_reg[6]), .I2(A_reg[4]), .O(n285) );
  NAND2X1TAS7 U354 ( .I1(B_reg[7]), .I2(A_reg[3]), .O(n286) );
  BUFX1TAS7 U355 ( .I(A_reg[2]), .O(n942) );
  NAND2X1TAS7 U356 ( .I1(B_reg[6]), .I2(n942), .O(n249) );
  OR2X1TAS7 U357 ( .I1(n286), .I2(n249), .O(n210) );
  NAND2X1TAS7 U358 ( .I1(B_reg[7]), .I2(n942), .O(n211) );
  OAI12B2X1TAS7 U359 ( .B1B(B_reg[6]), .B2B(A_reg[3]), .A1(n211), .O(n209) );
  NAND2X1TAS7 U360 ( .I1(n210), .I2(n209), .O(n270) );
  NAND2X1TAS7 U361 ( .I1(B_reg[7]), .I2(A_reg[0]), .O(n254) );
  NAND2X1TAS7 U362 ( .I1(B_reg[6]), .I2(A_reg[1]), .O(n255) );
  OR2X1TAS7 U363 ( .I1(n254), .I2(n255), .O(n253) );
  OR2X1TAS7 U364 ( .I1(n270), .I2(n253), .O(n214) );
  CLKINVX1TAS7 U365 ( .I(n210), .O(n212) );
  NOR2X1TAS7 U366 ( .I1(n211), .I2(n255), .O(n247) );
  NOR2X1TAS7 U367 ( .I1(n212), .I2(n247), .O(n213) );
  NAND2X1TAS7 U368 ( .I1(n214), .I2(n213), .O(n284) );
  NAND2X1TAS7 U369 ( .I1(n286), .I2(n285), .O(n215) );
  NAND2X1TAS7 U370 ( .I1(n284), .I2(n215), .O(n216) );
  OAI12X1TAS7 U371 ( .B1(n285), .B2(n286), .A1(n216), .O(n289) );
  NAND2X1TAS7 U372 ( .I1(B_reg[6]), .I2(A_reg[5]), .O(n220) );
  CLKINVX1TAS7 U373 ( .I(n220), .O(n291) );
  NAND2X1TAS7 U374 ( .I1(B_reg[7]), .I2(A_reg[4]), .O(n290) );
  CLKINVX1TAS7 U375 ( .I(n290), .O(n217) );
  OAI12X1TAS7 U376 ( .B1(n289), .B2(n291), .A1(n217), .O(n219) );
  NAND2X1TAS7 U377 ( .I1(n289), .I2(n291), .O(n218) );
  NAND2X1TAS7 U378 ( .I1(n219), .I2(n218), .O(n922) );
  NAND2X1TAS7 U379 ( .I1(B_reg[7]), .I2(A_reg[6]), .O(n222) );
  OR2X1TAS7 U380 ( .I1(n222), .I2(n220), .O(n295) );
  OR2X1TAS7 U381 ( .I1(A_reg[6]), .I2(A_reg[5]), .O(n972) );
  AND2X1TAS7 U382 ( .I1(n295), .I2(n972), .O(n221) );
  NAND2X1TAS7 U383 ( .I1(n922), .I2(n221), .O(n297) );
  NAND2X1TAS7 U384 ( .I1(A_reg[7]), .I2(B_reg[6]), .O(n223) );
  XNOR2X1TAS7 U385 ( .I1(n222), .I2(n223), .O(n311) );
  OAI12X1TAS7 U386 ( .B1(n223), .B2(n222), .A1(n295), .O(n224) );
  CLKINVX1TAS7 U387 ( .I(n224), .O(n923) );
  OAI12X1TAS7 U388 ( .B1(n297), .B2(n311), .A1(n923), .O(n457) );
  XNOR3X1TAS7 U389 ( .I1(n458), .I2(n925), .I3(n457), .O(n242) );
  NAND2X1TAS7 U390 ( .I1(A_reg[9]), .I2(B_reg[5]), .O(n908) );
  CLKINVX1TAS7 U391 ( .I(n908), .O(n449) );
  NAND2X1TAS7 U392 ( .I1(A_reg[10]), .I2(B_reg[4]), .O(n909) );
  NAND2X1TAS7 U393 ( .I1(A_reg[5]), .I2(B_reg[4]), .O(n225) );
  NAND2X1TAS7 U394 ( .I1(B_reg[5]), .I2(A_reg[4]), .O(n265) );
  XOR2X1TAS7 U395 ( .I1(n225), .I2(n265), .O(n276) );
  CLKINVX1TAS7 U396 ( .I(\ALU_INSTANCE/n9 ), .O(n227) );
  NAND2X1TAS7 U397 ( .I1(B_reg[5]), .I2(A_reg[3]), .O(n244) );
  NAND2X1TAS7 U398 ( .I1(\ALU_INSTANCE/n11 ), .I2(n244), .O(n226) );
  NAND2X1TAS7 U399 ( .I1(n227), .I2(n226), .O(n277) );
  CLKINVX1TAS7 U400 ( .I(n277), .O(n232) );
  NAND2X1TAS7 U401 ( .I1(B_reg[4]), .I2(A_reg[1]), .O(n366) );
  NAND3B1X1TAS7 U402 ( .B3(n366), .I1(B_reg[5]), .I2(n467), .O(n251) );
  NAND2X1TAS7 U403 ( .I1(B_reg[5]), .I2(A_reg[2]), .O(n252) );
  NAND2X1TAS7 U404 ( .I1(n251), .I2(n252), .O(n229) );
  NAND2X1TAS7 U405 ( .I1(B_reg[4]), .I2(A_reg[3]), .O(n264) );
  CLKINVX1TAS7 U406 ( .I(n264), .O(n228) );
  NAND2X1TAS7 U407 ( .I1(n229), .I2(n228), .O(n245) );
  OR2X1TAS7 U408 ( .I1(n251), .I2(n252), .O(n246) );
  NAND3X1TAS7 U409 ( .I1(n245), .I2(n246), .I3(n277), .O(n231) );
  NAND2X1TAS7 U410 ( .I1(A_reg[6]), .I2(B_reg[4]), .O(n281) );
  AOI22X1TAS7 U411 ( .A1(\ALU_INSTANCE/n11 ), .A2(n281), .B1(\ALU_INSTANCE/n9 ), .B2(n244), .O(n230) );
  OR2X1TAS7 U412 ( .I1(\ALU_INSTANCE/n11 ), .I2(n281), .O(n233) );
  NAND2X1TAS7 U413 ( .I1(B_reg[5]), .I2(A_reg[6]), .O(n300) );
  NAND2X1TAS7 U414 ( .I1(A_reg[7]), .I2(B_reg[4]), .O(n305) );
  NOR2X1TAS7 U415 ( .I1(n300), .I2(n305), .O(n237) );
  NAND2X1TAS7 U416 ( .I1(A_reg[8]), .I2(B_reg[5]), .O(n238) );
  OR2X1TAS7 U417 ( .I1(n238), .I2(n305), .O(n299) );
  NAND2X1TAS7 U418 ( .I1(n305), .I2(n300), .O(n235) );
  OR2X1TAS7 U419 ( .I1(A_reg[8]), .I2(A_reg[7]), .O(n968) );
  AND3X1TAS7 U420 ( .I1(n299), .I2(n235), .I3(n968), .O(n236) );
  OAI12X1TAS7 U421 ( .B1(n303), .B2(n237), .A1(n236), .O(n307) );
  NAND2X1TAS7 U422 ( .I1(A_reg[9]), .I2(B_reg[4]), .O(n239) );
  XNOR2X1TAS7 U423 ( .I1(n239), .I2(n238), .O(n313) );
  OAI12X1TAS7 U424 ( .B1(n239), .B2(n238), .A1(n299), .O(n240) );
  CLKINVX1TAS7 U425 ( .I(n240), .O(n907) );
  OAI12X1TAS7 U426 ( .B1(n307), .B2(n313), .A1(n907), .O(n448) );
  XNOR3X1TAS7 U427 ( .I1(n449), .I2(n909), .I3(n448), .O(n241) );
  NOR2X1TAS7 U428 ( .I1(n242), .I2(n241), .O(n566) );
  CLKINVX1TAS7 U429 ( .I(n566), .O(n243) );
  NAND2X1TAS7 U430 ( .I1(n242), .I2(n241), .O(n565) );
  NAND2X1TAS7 U431 ( .I1(n243), .I2(n565), .O(n318) );
  XNOR2X1TAS7 U432 ( .I1(n244), .I2(\ALU_INSTANCE/n9 ), .O(n278) );
  AND2X1TAS7 U433 ( .I1(n246), .I2(n245), .O(n280) );
  XOR2X1TAS7 U434 ( .I1(n278), .I2(n280), .O(n263) );
  NAND2X1TAS7 U435 ( .I1(B_reg[7]), .I2(A_reg[1]), .O(n248) );
  AOI12X1TAS7 U436 ( .B1(n249), .B2(n248), .A1(n247), .O(n250) );
  XNOR2X1TAS7 U437 ( .I1(n253), .I2(n250), .O(n262) );
  NOR2X1TAS7 U438 ( .I1(n263), .I2(n262), .O(n397) );
  XNOR3X1TAS7 U439 ( .I1(n252), .I2(n264), .I3(n251), .O(n260) );
  OAI12B2X1TAS7 U440 ( .B1B(n255), .B2B(n254), .A1(n253), .O(n256) );
  CLKINVX1TAS7 U441 ( .I(n256), .O(n259) );
  OR2X1TAS7 U442 ( .I1(n260), .I2(n259), .O(n390) );
  NAND2X1TAS7 U443 ( .I1(B_reg[4]), .I2(n942), .O(n258) );
  NAND2X1TAS7 U444 ( .I1(B_reg[5]), .I2(A_reg[1]), .O(n370) );
  NAND2X1TAS7 U445 ( .I1(B_reg[4]), .I2(A_reg[0]), .O(n778) );
  NAND2B1X1TAS7 U446 ( .B2(n370), .I1(n778), .O(n257) );
  XOR2X1TAS7 U447 ( .I1(n258), .I2(n257), .O(n355) );
  AND2X1TAS7 U448 ( .I1(B_reg[6]), .I2(A_reg[0]), .O(n354) );
  NAND2X1TAS7 U449 ( .I1(n355), .I2(n354), .O(n353) );
  CLKINVX1TAS7 U450 ( .I(n353), .O(n392) );
  NAND2X1TAS7 U451 ( .I1(n260), .I2(n259), .O(n389) );
  CLKINVX1TAS7 U452 ( .I(n389), .O(n261) );
  AOI12X1TAS7 U453 ( .B1(n390), .B2(n392), .A1(n261), .O(n401) );
  NAND2X1TAS7 U454 ( .I1(n263), .I2(n262), .O(n398) );
  OAI12X1TAS7 U455 ( .B1(n397), .B2(n401), .A1(n398), .O(n349) );
  OAI22X1TAS7 U456 ( .A1(n280), .A2(n278), .B1(n265), .B2(n264), .O(n266) );
  XOR2X1TAS7 U457 ( .I1(n276), .I2(n266), .O(n274) );
  CLKINVX1TAS7 U458 ( .I(B_reg[6]), .O(n268) );
  CLKINVX1TAS7 U459 ( .I(B_reg[7]), .O(n267) );
  NOR3X1TAS7 U460 ( .I1(n269), .I2(n268), .I3(n267), .O(n272) );
  CLKINVX1TAS7 U461 ( .I(n272), .O(n271) );
  MUX2BX1TAS7 U462 ( .I0(n272), .I1(n271), .S(n270), .OB(n273) );
  OR2X1TAS7 U463 ( .I1(n274), .I2(n273), .O(n347) );
  NAND2X1TAS7 U464 ( .I1(n274), .I2(n273), .O(n346) );
  CLKINVX1TAS7 U465 ( .I(n346), .O(n275) );
  AOI12X1TAS7 U466 ( .B1(n349), .B2(n347), .A1(n275), .O(n337) );
  CLKINVX1TAS7 U467 ( .I(n276), .O(n279) );
  OAI13X1TAS7 U468 ( .B1(n280), .B2(n279), .B3(n278), .A1(n277), .O(n283) );
  XNOR2X1TAS7 U469 ( .I1(\ALU_INSTANCE/n11 ), .I2(n281), .O(n282) );
  XNOR2X1TAS7 U470 ( .I1(n283), .I2(n282), .O(n288) );
  XOR3X1TAS7 U471 ( .I1(n286), .I2(n285), .I3(n284), .O(n287) );
  NOR2X1TAS7 U472 ( .I1(n288), .I2(n287), .O(n336) );
  NAND2X1TAS7 U473 ( .I1(n288), .I2(n287), .O(n335) );
  OAI12X1TAS7 U474 ( .B1(n337), .B2(n336), .A1(n335), .O(n429) );
  CLKINVX1TAS7 U475 ( .I(n305), .O(n302) );
  XNOR3X1TAS7 U476 ( .I1(n302), .I2(n300), .I3(n303), .O(n293) );
  XNOR3X1TAS7 U477 ( .I1(n291), .I2(n290), .I3(n289), .O(n292) );
  OR2X1TAS7 U478 ( .I1(n293), .I2(n292), .O(n428) );
  NAND2X1TAS7 U479 ( .I1(n293), .I2(n292), .O(n427) );
  CLKINVX1TAS7 U480 ( .I(n427), .O(n294) );
  AOI12X1TAS7 U481 ( .B1(n429), .B2(n428), .A1(n294), .O(n421) );
  NAND2X1TAS7 U482 ( .I1(n297), .I2(n295), .O(n312) );
  OAI12B2X1TAS7 U483 ( .B1B(B_reg[7]), .B2B(A_reg[5]), .A1(\ALU_INSTANCE/n13 ), 
        .O(n296) );
  CLKINVX1TAS7 U484 ( .I(n296), .O(n298) );
  OAI22B2X1TAS7 U485 ( .A1(n312), .A2(n298), .B1B(n922), .B2B(n297), .O(n310)
         );
  NAND2X1TAS7 U486 ( .I1(n307), .I2(n299), .O(n314) );
  AOI22X1TAS7 U487 ( .A1(A_reg[7]), .A2(B_reg[5]), .B1(A_reg[8]), .B2(B_reg[4]), .O(n308) );
  CLKINVX1TAS7 U488 ( .I(n303), .O(n306) );
  CLKINVX1TAS7 U489 ( .I(n300), .O(n301) );
  OAI12X1TAS7 U490 ( .B1(n303), .B2(n302), .A1(n301), .O(n304) );
  OAI12X1TAS7 U491 ( .B1(n306), .B2(n305), .A1(n304), .O(n912) );
  OAI22B2X1TAS7 U492 ( .A1(n314), .A2(n308), .B1B(n307), .B2B(n912), .O(n309)
         );
  NOR2X1TAS7 U493 ( .I1(n310), .I2(n309), .O(n418) );
  NAND2X1TAS7 U494 ( .I1(n310), .I2(n309), .O(n419) );
  OAI12X1TAS7 U495 ( .B1(n421), .B2(n418), .A1(n419), .O(n326) );
  CLKINVX1TAS7 U496 ( .I(n311), .O(n921) );
  XOR2X1TAS7 U497 ( .I1(n921), .I2(n312), .O(n316) );
  CLKINVX1TAS7 U498 ( .I(n313), .O(n911) );
  XOR2X1TAS7 U499 ( .I1(n911), .I2(n314), .O(n315) );
  OR2X1TAS7 U500 ( .I1(n316), .I2(n315), .O(n325) );
  NAND2X1TAS7 U501 ( .I1(n316), .I2(n315), .O(n324) );
  CLKINVX1TAS7 U502 ( .I(n324), .O(n317) );
  AOI12X1TAS7 U503 ( .B1(n326), .B2(n325), .A1(n317), .O(n567) );
  XNOR2X1TAS7 U504 ( .I1(n318), .I2(n567), .O(n439) );
  NOR2X1TAS7 U505 ( .I1(n440), .I2(n439), .O(n652) );
  NAND2X1TAS7 U506 ( .I1(n320), .I2(n319), .O(n323) );
  AOI12X1TAS7 U507 ( .B1(n417), .B2(n1), .A1(n321), .O(n322) );
  XNOR2X1TAS7 U508 ( .I1(n323), .I2(n322), .O(n438) );
  NAND2X1TAS7 U509 ( .I1(n325), .I2(n324), .O(n327) );
  XOR2X1TAS7 U510 ( .I1(n327), .I2(n326), .O(n437) );
  NOR2X1TAS7 U511 ( .I1(n438), .I2(n437), .O(n589) );
  NOR2X1TAS7 U512 ( .I1(n652), .I2(n589), .O(n442) );
  NAND2X1TAS7 U513 ( .I1(n329), .I2(n328), .O(n334) );
  AOI12X1TAS7 U514 ( .B1(n395), .B2(n332), .A1(n331), .O(n333) );
  XNOR2X1TAS7 U515 ( .I1(n334), .I2(n333), .O(n412) );
  NAND2B1X1TAS7 U516 ( .B2(n336), .I1(n335), .O(n338) );
  XNOR2X1TAS7 U517 ( .I1(n338), .I2(n337), .O(n411) );
  NOR2X1TAS7 U518 ( .I1(n412), .I2(n411), .O(n603) );
  CLKINVX1TAS7 U519 ( .I(n339), .O(n341) );
  NAND2X1TAS7 U520 ( .I1(n341), .I2(n340), .O(n345) );
  CLKINVX1TAS7 U521 ( .I(n342), .O(n394) );
  CLKINVX1TAS7 U522 ( .I(n393), .O(n343) );
  AOI12X1TAS7 U523 ( .B1(n395), .B2(n394), .A1(n343), .O(n344) );
  XNOR2X1TAS7 U524 ( .I1(n345), .I2(n344), .O(n410) );
  NAND2X1TAS7 U525 ( .I1(n347), .I2(n346), .O(n348) );
  XOR2X1TAS7 U526 ( .I1(n349), .I2(n348), .O(n409) );
  NOR2X1TAS7 U527 ( .I1(n410), .I2(n409), .O(n620) );
  NOR2X1TAS7 U528 ( .I1(n603), .I2(n620), .O(n414) );
  CLKINVX1TAS7 U529 ( .I(n382), .O(n350) );
  NAND2X1TAS7 U530 ( .I1(n350), .I2(n381), .O(n352) );
  INVX1TAS7 U531 ( .I(n351), .O(n383) );
  XNOR2X1TAS7 U532 ( .I1(n352), .I2(n383), .O(n379) );
  CLKINVX1TAS7 U533 ( .I(n379), .O(n357) );
  OAI12X1TAS7 U534 ( .B1(n355), .B2(n354), .A1(n353), .O(n378) );
  CLKINVX1TAS7 U535 ( .I(n378), .O(n356) );
  CLKINVX1TAS7 U536 ( .I(n358), .O(n719) );
  CLKINVX1TAS7 U537 ( .I(n718), .O(n359) );
  AOI12X1TAS7 U538 ( .B1(n721), .B2(n719), .A1(n359), .O(n364) );
  CLKINVX1TAS7 U539 ( .I(n360), .O(n362) );
  NAND2X1TAS7 U540 ( .I1(n362), .I2(n361), .O(n363) );
  CLKINVX1TAS7 U541 ( .I(n778), .O(n365) );
  NAND2X1TAS7 U542 ( .I1(n777), .I2(n365), .O(n377) );
  CLKINVX1TAS7 U543 ( .I(B_reg[5]), .O(n368) );
  CLKINVX1TAS7 U544 ( .I(A_reg[0]), .O(n367) );
  OAI12X1TAS7 U545 ( .B1(n368), .B2(n367), .A1(n366), .O(n369) );
  OAI12X1TAS7 U546 ( .B1(n370), .B2(n778), .A1(n369), .O(n376) );
  NOR2X1TAS7 U547 ( .I1(n377), .I2(n376), .O(n765) );
  CLKINVX1TAS7 U548 ( .I(n371), .O(n373) );
  NAND2X1TAS7 U549 ( .I1(n373), .I2(n372), .O(n374) );
  XOR2X1TAS7 U550 ( .I1(n375), .I2(n374), .O(n764) );
  NAND2X1TAS7 U551 ( .I1(n377), .I2(n376), .O(n766) );
  OAI12X1TAS7 U552 ( .B1(n765), .B2(n764), .A1(n766), .O(n752) );
  NAND2X1TAS7 U553 ( .I1(n379), .I2(n378), .O(n749) );
  CLKINVX1TAS7 U554 ( .I(n749), .O(n380) );
  AOI12X1TAS7 U555 ( .B1(n750), .B2(n752), .A1(n380), .O(n614) );
  OAI12X1TAS7 U556 ( .B1(n383), .B2(n382), .A1(n381), .O(n388) );
  CLKINVX1TAS7 U557 ( .I(n384), .O(n386) );
  NAND2X1TAS7 U558 ( .I1(n386), .I2(n385), .O(n387) );
  XOR2X1TAS7 U559 ( .I1(n388), .I2(n387), .O(n403) );
  NAND2X1TAS7 U560 ( .I1(n390), .I2(n389), .O(n391) );
  XOR2X1TAS7 U561 ( .I1(n392), .I2(n391), .O(n402) );
  OR2X1TAS7 U562 ( .I1(n403), .I2(n402), .O(n785) );
  AND2X1TAS7 U563 ( .I1(n394), .I2(n393), .O(n396) );
  XNOR2X1TAS7 U564 ( .I1(n396), .I2(n395), .O(n405) );
  CLKINVX1TAS7 U565 ( .I(n397), .O(n399) );
  NAND2X1TAS7 U566 ( .I1(n399), .I2(n398), .O(n400) );
  XNOR2X1TAS7 U567 ( .I1(n401), .I2(n400), .O(n404) );
  OR2X1TAS7 U568 ( .I1(n405), .I2(n404), .O(n613) );
  NAND2X1TAS7 U569 ( .I1(n785), .I2(n613), .O(n408) );
  NAND2X1TAS7 U570 ( .I1(n403), .I2(n402), .O(n784) );
  CLKINVX1TAS7 U571 ( .I(n784), .O(n615) );
  NAND2X1TAS7 U572 ( .I1(n405), .I2(n404), .O(n612) );
  CLKINVX1TAS7 U573 ( .I(n612), .O(n406) );
  AOI12X1TAS7 U574 ( .B1(n615), .B2(n613), .A1(n406), .O(n407) );
  OAI12X1TAS7 U575 ( .B1(n614), .B2(n408), .A1(n407), .O(n606) );
  NAND2X1TAS7 U576 ( .I1(n410), .I2(n409), .O(n621) );
  NAND2X1TAS7 U577 ( .I1(n412), .I2(n411), .O(n604) );
  OAI12X1TAS7 U578 ( .B1(n603), .B2(n621), .A1(n604), .O(n413) );
  AOI12X1TAS7 U579 ( .B1(n414), .B2(n606), .A1(n413), .O(n593) );
  NAND2X1TAS7 U580 ( .I1(n1), .I2(n415), .O(n416) );
  XOR2X1TAS7 U581 ( .I1(n417), .I2(n416), .O(n433) );
  CLKINVX1TAS7 U582 ( .I(n418), .O(n420) );
  NAND2X1TAS7 U583 ( .I1(n420), .I2(n419), .O(n422) );
  XNOR2X1TAS7 U584 ( .I1(n422), .I2(n421), .O(n432) );
  OR2X1TAS7 U585 ( .I1(n433), .I2(n432), .O(n596) );
  NAND2X1TAS7 U586 ( .I1(n424), .I2(n423), .O(n425) );
  NAND2X1TAS7 U587 ( .I1(n428), .I2(n427), .O(n430) );
  XOR2X1TAS7 U588 ( .I1(n430), .I2(n429), .O(n431) );
  OR2X1TAS7 U589 ( .I1(n2), .I2(n431), .O(n631) );
  NAND2X1TAS7 U590 ( .I1(n596), .I2(n631), .O(n436) );
  NAND2X1TAS7 U591 ( .I1(n2), .I2(n431), .O(n630) );
  CLKINVX1TAS7 U592 ( .I(n630), .O(n594) );
  NAND2X1TAS7 U593 ( .I1(n433), .I2(n432), .O(n595) );
  CLKINVX1TAS7 U594 ( .I(n595), .O(n434) );
  AOI12X1TAS7 U595 ( .B1(n596), .B2(n594), .A1(n434), .O(n435) );
  OAI12X1TAS7 U596 ( .B1(n593), .B2(n436), .A1(n435), .O(n649) );
  NAND2X1TAS7 U597 ( .I1(n438), .I2(n437), .O(n646) );
  NAND2X1TAS7 U598 ( .I1(n440), .I2(n439), .O(n650) );
  OAI12X1TAS7 U599 ( .B1(n652), .B2(n646), .A1(n650), .O(n441) );
  AOI12X1TAS7 U600 ( .B1(n442), .B2(n649), .A1(n441), .O(n443) );
  CLKINVX1TAS7 U601 ( .I(n443), .O(n902) );
  NAND2X1TAS7 U602 ( .I1(A_reg[11]), .I2(B_reg[4]), .O(n445) );
  NAND2X1TAS7 U603 ( .I1(A_reg[10]), .I2(B_reg[5]), .O(n444) );
  XNOR2X1TAS7 U604 ( .I1(n445), .I2(n444), .O(n989) );
  NAND2X1TAS7 U605 ( .I1(n448), .I2(n449), .O(n446) );
  NAND2X1TAS7 U606 ( .I1(n446), .I2(n909), .O(n447) );
  OAI12X1TAS7 U607 ( .B1(n449), .B2(n448), .A1(n447), .O(n450) );
  XOR2X1TAS7 U608 ( .I1(n989), .I2(n450), .O(n906) );
  NAND2X1TAS7 U609 ( .I1(A_reg[9]), .I2(B_reg[7]), .O(n454) );
  NAND2X1TAS7 U610 ( .I1(A_reg[8]), .I2(B_reg[7]), .O(n452) );
  NAND2X1TAS7 U611 ( .I1(A_reg[9]), .I2(B_reg[6]), .O(n451) );
  NAND2X1TAS7 U612 ( .I1(n452), .I2(n451), .O(n453) );
  OAI12X1TAS7 U613 ( .B1(n925), .B2(n454), .A1(n453), .O(n926) );
  NAND2X1TAS7 U614 ( .I1(n457), .I2(n458), .O(n455) );
  NAND2X1TAS7 U615 ( .I1(n455), .I2(n925), .O(n456) );
  OAI12X1TAS7 U616 ( .B1(n458), .B2(n457), .A1(n456), .O(n459) );
  XOR2X1TAS7 U617 ( .I1(n926), .I2(n459), .O(n1011) );
  NAND2X1TAS7 U618 ( .I1(B_reg[12]), .I2(n942), .O(n461) );
  NAND2X1TAS7 U619 ( .I1(B_reg[12]), .I2(A_reg[0]), .O(n525) );
  NAND3X1TAS7 U620 ( .I1(n525), .I2(B_reg[13]), .I3(A_reg[1]), .O(n460) );
  XOR2X1TAS7 U621 ( .I1(n461), .I2(n460), .O(n463) );
  NAND2X1TAS7 U622 ( .I1(B_reg[14]), .I2(A_reg[0]), .O(n464) );
  CLKINVX1TAS7 U623 ( .I(n464), .O(n462) );
  NAND2X1TAS7 U624 ( .I1(n463), .I2(n462), .O(n958) );
  CLKINVX1TAS7 U625 ( .I(n463), .O(n465) );
  NAND2X1TAS7 U626 ( .I1(n465), .I2(n464), .O(n466) );
  NAND2X1TAS7 U627 ( .I1(n958), .I2(n466), .O(n532) );
  NAND2X1TAS7 U628 ( .I1(B_reg[9]), .I2(A_reg[2]), .O(n478) );
  NAND2X1TAS7 U629 ( .I1(B_reg[8]), .I2(A_reg[3]), .O(n481) );
  NAND2X1TAS7 U630 ( .I1(B_reg[8]), .I2(A_reg[1]), .O(n618) );
  NAND3B1X1TAS7 U631 ( .B3(n618), .I1(B_reg[9]), .I2(n467), .O(n477) );
  XNOR3X1TAS7 U632 ( .I1(n478), .I2(n481), .I3(n477), .O(n636) );
  NAND2X1TAS7 U633 ( .I1(B_reg[8]), .I2(A_reg[2]), .O(n469) );
  NAND2X1TAS7 U634 ( .I1(B_reg[8]), .I2(A_reg[0]), .O(n820) );
  NAND3X1TAS7 U635 ( .I1(n820), .I2(B_reg[9]), .I3(A_reg[1]), .O(n468) );
  XOR2X1TAS7 U636 ( .I1(n469), .I2(n468), .O(n611) );
  NAND2X1TAS7 U637 ( .I1(B_reg[10]), .I2(A_reg[0]), .O(n470) );
  CLKINVX1TAS7 U638 ( .I(n470), .O(n610) );
  NAND2X1TAS7 U639 ( .I1(n611), .I2(n610), .O(n609) );
  CLKINVX1TAS7 U640 ( .I(n609), .O(n474) );
  AOI22X1TAS7 U641 ( .A1(A_reg[0]), .A2(B_reg[11]), .B1(B_reg[10]), .B2(
        A_reg[1]), .O(n471) );
  NAND2X1TAS7 U642 ( .I1(B_reg[11]), .I2(A_reg[1]), .O(n497) );
  OR2X1TAS7 U643 ( .I1(n470), .I2(n497), .O(n509) );
  NAND2B1X1TAS7 U644 ( .B2(n471), .I1(n509), .O(n472) );
  CLKINVX1TAS7 U645 ( .I(n472), .O(n473) );
  OR2X1TAS7 U646 ( .I1(n474), .I2(n473), .O(n635) );
  NAND2X1TAS7 U647 ( .I1(n474), .I2(n473), .O(n634) );
  CLKINVX1TAS7 U648 ( .I(n634), .O(n475) );
  AOI12X1TAS7 U649 ( .B1(n636), .B2(n635), .A1(n475), .O(n523) );
  NAND2X1TAS7 U650 ( .I1(n481), .I2(n478), .O(n476) );
  NAND2B1X1TAS7 U651 ( .B2(n477), .I1(n476), .O(n480) );
  OR2X1TAS7 U652 ( .I1(n481), .I2(n478), .O(n479) );
  NAND2X1TAS7 U653 ( .I1(n480), .I2(n479), .O(n932) );
  NAND2X1TAS7 U654 ( .I1(B_reg[8]), .I2(A_reg[4]), .O(n489) );
  NAND2X1TAS7 U655 ( .I1(B_reg[9]), .I2(A_reg[3]), .O(n482) );
  NAND2X1TAS7 U656 ( .I1(B_reg[9]), .I2(A_reg[4]), .O(n490) );
  OR2X1TAS7 U657 ( .I1(n490), .I2(n481), .O(n927) );
  OAI12B2X1TAS7 U658 ( .B1B(n489), .B2B(n482), .A1(n927), .O(n483) );
  CLKINVX1TAS7 U659 ( .I(n483), .O(n484) );
  OAI112X1TAS7 U660 ( .C1(A_reg[4]), .C2(A_reg[3]), .A1(n932), .B1(n927), .O(
        n503) );
  OAI12X1TAS7 U661 ( .B1(n932), .B2(n484), .A1(n503), .O(n485) );
  CLKINVX1TAS7 U662 ( .I(n485), .O(n488) );
  NAND2X1TAS7 U663 ( .I1(B_reg[10]), .I2(A_reg[2]), .O(n498) );
  NOR2X1TAS7 U664 ( .I1(n610), .I2(n497), .O(n486) );
  XNOR2X1TAS7 U665 ( .I1(n498), .I2(n486), .O(n487) );
  NOR2X1TAS7 U666 ( .I1(n488), .I2(n487), .O(n520) );
  NAND2X1TAS7 U667 ( .I1(n488), .I2(n487), .O(n521) );
  OAI12X1TAS7 U668 ( .B1(n523), .B2(n520), .A1(n521), .O(n560) );
  CLKINVX1TAS7 U669 ( .I(n560), .O(n519) );
  NAND2X1TAS7 U670 ( .I1(B_reg[9]), .I2(A_reg[5]), .O(n929) );
  OR2X1TAS7 U671 ( .I1(n929), .I2(n489), .O(n504) );
  OAI12B2X1TAS7 U672 ( .B1B(B_reg[8]), .B2B(A_reg[5]), .A1(n490), .O(n491) );
  AND2X1TAS7 U673 ( .I1(n504), .I2(n491), .O(n931) );
  NAND2X1TAS7 U674 ( .I1(n503), .I2(n927), .O(n492) );
  XOR2X1TAS7 U675 ( .I1(n931), .I2(n492), .O(n502) );
  NAND2X1TAS7 U676 ( .I1(B_reg[11]), .I2(A_reg[3]), .O(n542) );
  NOR2X1TAS7 U677 ( .I1(n542), .I2(n498), .O(n507) );
  CLKINVX1TAS7 U678 ( .I(n507), .O(n496) );
  NAND2X1TAS7 U679 ( .I1(B_reg[10]), .I2(A_reg[3]), .O(n494) );
  NAND2X1TAS7 U680 ( .I1(B_reg[11]), .I2(n942), .O(n493) );
  NAND2X1TAS7 U681 ( .I1(n494), .I2(n493), .O(n495) );
  NAND2X1TAS7 U682 ( .I1(n496), .I2(n495), .O(n510) );
  NOR2X1TAS7 U683 ( .I1(n498), .I2(n497), .O(n933) );
  CLKINVX1TAS7 U684 ( .I(n933), .O(n499) );
  NAND2X1TAS7 U685 ( .I1(n499), .I2(n509), .O(n500) );
  XNOR2X1TAS7 U686 ( .I1(n510), .I2(n500), .O(n501) );
  NOR2X1TAS7 U687 ( .I1(n502), .I2(n501), .O(n555) );
  NAND2X1TAS7 U688 ( .I1(n502), .I2(n501), .O(n557) );
  OAI12X1TAS7 U689 ( .B1(n519), .B2(n555), .A1(n557), .O(n515) );
  CLKINVX1TAS7 U690 ( .I(n929), .O(n553) );
  NAND2X1TAS7 U691 ( .I1(B_reg[8]), .I2(A_reg[6]), .O(n928) );
  NAND2B1X1TAS7 U692 ( .B2(n503), .I1(n931), .O(n506) );
  AND2X1TAS7 U693 ( .I1(n504), .I2(n927), .O(n505) );
  NAND2X1TAS7 U694 ( .I1(n506), .I2(n505), .O(n552) );
  XNOR3X1TAS7 U695 ( .I1(n553), .I2(n928), .I3(n552), .O(n512) );
  NAND2X1TAS7 U696 ( .I1(B_reg[10]), .I2(A_reg[4]), .O(n543) );
  CLKINVX1TAS7 U697 ( .I(n543), .O(n934) );
  NOR2X1TAS7 U698 ( .I1(n507), .I2(n933), .O(n508) );
  OAI12X1TAS7 U699 ( .B1(n510), .B2(n509), .A1(n508), .O(n546) );
  XNOR3X1TAS7 U700 ( .I1(n934), .I2(n542), .I3(n546), .O(n511) );
  NOR2X1TAS7 U701 ( .I1(n512), .I2(n511), .O(n558) );
  CLKINVX1TAS7 U702 ( .I(n558), .O(n513) );
  NAND2X1TAS7 U703 ( .I1(n512), .I2(n511), .O(n556) );
  NAND2X1TAS7 U704 ( .I1(n513), .I2(n556), .O(n514) );
  XNOR2X1TAS7 U705 ( .I1(n515), .I2(n514), .O(n656) );
  CLKINVX1TAS7 U706 ( .I(n656), .O(n531) );
  CLKINVX1TAS7 U707 ( .I(n532), .O(n657) );
  NAND2X1TAS7 U708 ( .I1(B_reg[13]), .I2(A_reg[0]), .O(n516) );
  NAND2X1TAS7 U709 ( .I1(B_reg[12]), .I2(A_reg[1]), .O(n533) );
  XOR2X1TAS7 U710 ( .I1(n516), .I2(n533), .O(n592) );
  CLKINVX1TAS7 U711 ( .I(n592), .O(n529) );
  CLKINVX1TAS7 U712 ( .I(n557), .O(n517) );
  OR2X1TAS7 U713 ( .I1(n555), .I2(n517), .O(n518) );
  XOR2X1TAS7 U714 ( .I1(n519), .I2(n518), .O(n527) );
  CLKINVX1TAS7 U715 ( .I(n527), .O(n591) );
  CLKINVX1TAS7 U716 ( .I(n520), .O(n522) );
  NAND2X1TAS7 U717 ( .I1(n522), .I2(n521), .O(n524) );
  XOR2X1TAS7 U718 ( .I1(n524), .I2(n523), .O(n601) );
  CLKINVX1TAS7 U719 ( .I(n525), .O(n600) );
  NAND2X1TAS7 U720 ( .I1(n601), .I2(n600), .O(n599) );
  CLKINVX1TAS7 U721 ( .I(n599), .O(n526) );
  OAI12X1TAS7 U722 ( .B1(n527), .B2(n592), .A1(n526), .O(n528) );
  OAI12X1TAS7 U723 ( .B1(n529), .B2(n591), .A1(n528), .O(n655) );
  OAI12X1TAS7 U724 ( .B1(n656), .B2(n657), .A1(n655), .O(n530) );
  OAI12X1TAS7 U725 ( .B1(n532), .B2(n531), .A1(n530), .O(n994) );
  NAND3B1X1TAS7 U726 ( .B3(n533), .I1(B_reg[13]), .I2(n467), .O(n953) );
  NAND2X1TAS7 U727 ( .I1(B_reg[12]), .I2(A_reg[3]), .O(n535) );
  NAND2X1TAS7 U728 ( .I1(B_reg[13]), .I2(n942), .O(n534) );
  XNOR2X1TAS7 U729 ( .I1(n535), .I2(n534), .O(n954) );
  XOR2X1TAS7 U730 ( .I1(n953), .I2(n954), .O(n539) );
  NAND2X1TAS7 U731 ( .I1(B_reg[15]), .I2(A_reg[0]), .O(n537) );
  NAND2X1TAS7 U732 ( .I1(B_reg[14]), .I2(A_reg[1]), .O(n536) );
  XNOR2X1TAS7 U733 ( .I1(n537), .I2(n536), .O(n955) );
  XOR2X1TAS7 U734 ( .I1(n955), .I2(n958), .O(n538) );
  XOR2X1TAS7 U735 ( .I1(n539), .I2(n538), .O(n992) );
  NAND2X1TAS7 U736 ( .I1(B_reg[11]), .I2(A_reg[4]), .O(n541) );
  NAND2X1TAS7 U737 ( .I1(B_reg[10]), .I2(A_reg[5]), .O(n540) );
  XNOR2X1TAS7 U738 ( .I1(n541), .I2(n540), .O(n951) );
  CLKINVX1TAS7 U739 ( .I(n542), .O(n935) );
  NAND2X1TAS7 U740 ( .I1(n546), .I2(n935), .O(n544) );
  NAND2X1TAS7 U741 ( .I1(n544), .I2(n543), .O(n545) );
  OAI12X1TAS7 U742 ( .B1(n935), .B2(n546), .A1(n545), .O(n547) );
  XOR2X1TAS7 U743 ( .I1(n951), .I2(n547), .O(n995) );
  NAND2X1TAS7 U744 ( .I1(B_reg[9]), .I2(A_reg[6]), .O(n549) );
  NAND2X1TAS7 U745 ( .I1(B_reg[8]), .I2(A_reg[7]), .O(n548) );
  XNOR2X1TAS7 U746 ( .I1(n549), .I2(n548), .O(n960) );
  NAND2X1TAS7 U747 ( .I1(n552), .I2(n553), .O(n550) );
  NAND2X1TAS7 U748 ( .I1(n550), .I2(n928), .O(n551) );
  OAI12X1TAS7 U749 ( .B1(n553), .B2(n552), .A1(n551), .O(n554) );
  XOR2X1TAS7 U750 ( .I1(n960), .I2(n554), .O(n996) );
  XOR2X1TAS7 U751 ( .I1(n995), .I2(n996), .O(n563) );
  NOR2X1TAS7 U752 ( .I1(n558), .I2(n555), .O(n561) );
  OAI12X1TAS7 U753 ( .B1(n558), .B2(n557), .A1(n556), .O(n559) );
  AOI12X1TAS7 U754 ( .B1(n561), .B2(n560), .A1(n559), .O(n562) );
  CLKINVX1TAS7 U755 ( .I(n562), .O(n997) );
  XNOR2X1TAS7 U756 ( .I1(n563), .I2(n997), .O(n991) );
  XOR2X1TAS7 U757 ( .I1(n992), .I2(n991), .O(n564) );
  XNOR2X1TAS7 U758 ( .I1(n994), .I2(n564), .O(n1024) );
  XNOR3X1TAS7 U759 ( .I1(n906), .I2(n1011), .I3(n1024), .O(n587) );
  OAI12X1TAS7 U760 ( .B1(n567), .B2(n566), .A1(n565), .O(n1012) );
  NAND2X1TAS7 U761 ( .I1(A_reg[12]), .I2(B_reg[3]), .O(n569) );
  NAND2X1TAS7 U762 ( .I1(A_reg[13]), .I2(B_reg[2]), .O(n568) );
  XNOR2X1TAS7 U763 ( .I1(n569), .I2(n568), .O(n1005) );
  NAND2X1TAS7 U764 ( .I1(n572), .I2(n573), .O(n570) );
  NAND2X1TAS7 U765 ( .I1(n570), .I2(n1002), .O(n571) );
  OAI12X1TAS7 U766 ( .B1(n573), .B2(n572), .A1(n571), .O(n574) );
  XOR2X1TAS7 U767 ( .I1(n1005), .I2(n574), .O(n1014) );
  NAND2X1TAS7 U768 ( .I1(A_reg[14]), .I2(B_reg[1]), .O(n576) );
  NAND2X1TAS7 U769 ( .I1(A_reg[15]), .I2(B_reg[0]), .O(n575) );
  XOR2X1TAS7 U770 ( .I1(n576), .I2(n575), .O(n919) );
  NAND2X1TAS7 U771 ( .I1(n579), .I2(n580), .O(n577) );
  NAND2X1TAS7 U772 ( .I1(n577), .I2(n917), .O(n578) );
  OAI12X1TAS7 U773 ( .B1(n580), .B2(n579), .A1(n578), .O(n581) );
  XOR2X1TAS7 U774 ( .I1(n919), .I2(n581), .O(n1013) );
  CLKINVX1TAS7 U775 ( .I(n582), .O(n583) );
  AOI12X1TAS7 U776 ( .B1(n585), .B2(n584), .A1(n583), .O(n586) );
  CLKINVX1TAS7 U777 ( .I(n586), .O(n1016) );
  XNOR3X1TAS7 U778 ( .I1(n1014), .I2(n1013), .I3(n1016), .O(n900) );
  XNOR3X1TAS7 U779 ( .I1(n587), .I2(n1012), .I3(n900), .O(n588) );
  XNOR2X1TAS7 U780 ( .I1(n443), .I2(n588), .O(n660) );
  NAND2X1TAS7 U781 ( .I1(n648), .I2(n646), .O(n590) );
  XOR2X1TAS7 U782 ( .I1(n649), .I2(n590), .O(n643) );
  XOR3X1TAS7 U783 ( .I1(n592), .I2(n599), .I3(n591), .O(n642) );
  INVX1TAS7 U784 ( .I(n593), .O(n632) );
  AOI12X1TAS7 U785 ( .B1(n632), .B2(n631), .A1(n594), .O(n598) );
  AND2X1TAS7 U786 ( .I1(n596), .I2(n595), .O(n597) );
  XOR2X1TAS7 U787 ( .I1(n598), .I2(n597), .O(n641) );
  OAI12X1TAS7 U788 ( .B1(n601), .B2(n600), .A1(n599), .O(n602) );
  CLKINVX1TAS7 U789 ( .I(n602), .O(n640) );
  NOR2X1TAS7 U790 ( .I1(n641), .I2(n640), .O(n862) );
  NOR2X1TAS7 U791 ( .I1(n859), .I2(n862), .O(n645) );
  CLKINVX1TAS7 U792 ( .I(n603), .O(n605) );
  NAND2X1TAS7 U793 ( .I1(n605), .I2(n604), .O(n608) );
  CLKINVX1TAS7 U794 ( .I(n606), .O(n624) );
  OAI12X1TAS7 U795 ( .B1(n624), .B2(n620), .A1(n621), .O(n607) );
  XOR2X1TAS7 U796 ( .I1(n608), .I2(n607), .O(n628) );
  OAI12X1TAS7 U797 ( .B1(n611), .B2(n610), .A1(n609), .O(n626) );
  NAND2B1X1TAS7 U798 ( .B2(n628), .I1(n626), .O(n831) );
  NAND2X1TAS7 U799 ( .I1(n613), .I2(n612), .O(n617) );
  AOI12X1TAS7 U800 ( .B1(n787), .B2(n785), .A1(n615), .O(n616) );
  XOR2X1TAS7 U801 ( .I1(n617), .I2(n616), .O(n821) );
  NOR2X4TAS7 U802 ( .I1(n821), .I2(n820), .O(n823) );
  NAND2X1TAS7 U803 ( .I1(B_reg[9]), .I2(A_reg[0]), .O(n619) );
  XOR2X1TAS7 U804 ( .I1(n619), .I2(n618), .O(n625) );
  NOR2X1TAS7 U805 ( .I1(n823), .I2(n625), .O(n808) );
  CLKINVX1TAS7 U806 ( .I(n620), .O(n622) );
  NAND2X1TAS7 U807 ( .I1(n622), .I2(n621), .O(n623) );
  NAND2X1TAS7 U808 ( .I1(n823), .I2(n625), .O(n809) );
  OAI12X1TAS7 U809 ( .B1(n808), .B2(n807), .A1(n809), .O(n833) );
  CLKINVX1TAS7 U810 ( .I(n626), .O(n627) );
  NAND2X1TAS7 U811 ( .I1(n628), .I2(n627), .O(n830) );
  CLKINVX1TAS7 U812 ( .I(n830), .O(n629) );
  AOI12X1TAS7 U813 ( .B1(n831), .B2(n833), .A1(n629), .O(n843) );
  NAND2X1TAS7 U814 ( .I1(n631), .I2(n630), .O(n633) );
  XOR2X1TAS7 U815 ( .I1(n633), .I2(n632), .O(n639) );
  NAND2X1TAS7 U816 ( .I1(n635), .I2(n634), .O(n637) );
  XNOR2X1TAS7 U817 ( .I1(n637), .I2(n636), .O(n638) );
  NOR2X1TAS7 U818 ( .I1(n639), .I2(n638), .O(n839) );
  NAND2X1TAS7 U819 ( .I1(n639), .I2(n638), .O(n840) );
  OAI12X1TAS7 U820 ( .B1(n843), .B2(n839), .A1(n840), .O(n704) );
  NAND2X1TAS7 U821 ( .I1(n641), .I2(n640), .O(n863) );
  NAND2X1TAS7 U822 ( .I1(n643), .I2(n642), .O(n860) );
  OAI12X1TAS7 U823 ( .B1(n859), .B2(n863), .A1(n860), .O(n644) );
  AOI12X1TAS7 U824 ( .B1(n645), .B2(n704), .A1(n644), .O(n858) );
  CLKINVX1TAS7 U825 ( .I(n646), .O(n647) );
  AOI12X1TAS7 U826 ( .B1(n649), .B2(n648), .A1(n647), .O(n654) );
  CLKINVX1TAS7 U827 ( .I(n650), .O(n651) );
  OR2X1TAS7 U828 ( .I1(n652), .I2(n651), .O(n653) );
  XNOR2X1TAS7 U829 ( .I1(n654), .I2(n653), .O(n659) );
  XOR3X1TAS7 U830 ( .I1(n657), .I2(n656), .I3(n655), .O(n658) );
  NOR2X1TAS7 U831 ( .I1(n659), .I2(n658), .O(n856) );
  NAND2X1TAS7 U832 ( .I1(n659), .I2(n658), .O(n855) );
  OAI12X1TAS7 U833 ( .B1(n858), .B2(n856), .A1(n855), .O(n1022) );
  XNOR2X1TAS7 U834 ( .I1(n660), .I2(n1022), .O(n662) );
  NOR2X1TAS7 U835 ( .I1(n661), .I2(n695), .O(n1023) );
  NAND2X1TAS7 U836 ( .I1(n662), .I2(n1023), .O(n703) );
  CLKINVX1TAS7 U837 ( .I(A_reg[14]), .O(n799) );
  XNOR2X1TAS7 U838 ( .I1(ALUControl_reg[0]), .I2(B_reg[14]), .O(n798) );
  XNOR2X1TAS7 U839 ( .I1(ALUControl_reg[0]), .I2(B_reg[13]), .O(n874) );
  CLKINVX1TAS7 U840 ( .I(A_reg[13]), .O(n692) );
  XNOR2X1TAS7 U841 ( .I1(ALUControl_reg[0]), .I2(B_reg[11]), .O(n847) );
  CLKINVX1TAS7 U842 ( .I(A_reg[11]), .O(n848) );
  XNOR2X1TAS7 U843 ( .I1(ALUControl_reg[0]), .I2(B_reg[9]), .O(n805) );
  CLKINVX1TAS7 U844 ( .I(A_reg[9]), .O(n806) );
  XNOR2X1TAS7 U845 ( .I1(ALUControl_reg[0]), .I2(B_reg[7]), .O(n791) );
  CLKINVX1TAS7 U846 ( .I(A_reg[7]), .O(n792) );
  XNOR2X1TAS7 U847 ( .I1(ALUControl_reg[0]), .I2(B_reg[5]), .O(n762) );
  CLKINVX1TAS7 U848 ( .I(A_reg[5]), .O(n763) );
  XNOR2X1TAS7 U849 ( .I1(ALUControl_reg[0]), .I2(B_reg[3]), .O(n716) );
  XNOR2X1TAS7 U850 ( .I1(ALUControl_reg[0]), .I2(B_reg[1]), .O(n665) );
  NAND2X1TAS7 U851 ( .I1(n665), .I2(n938), .O(n664) );
  NAND2B1X1TAS7 U852 ( .B2(B_reg[0]), .I1(ALUControl_reg[0]), .O(n663) );
  NAND2X1TAS7 U853 ( .I1(n664), .I2(n738), .O(n667) );
  CLKINVX1TAS7 U854 ( .I(n665), .O(n740) );
  NAND2X1TAS7 U855 ( .I1(n740), .I2(A_reg[1]), .O(n666) );
  NAND2X1TAS7 U856 ( .I1(n667), .I2(n666), .O(n726) );
  NAND2X1TAS7 U857 ( .I1(n726), .I2(n942), .O(n714) );
  CLKINVX1TAS7 U858 ( .I(n738), .O(n669) );
  OAI12X1TAS7 U859 ( .B1(A_reg[1]), .B2(n738), .A1(n740), .O(n668) );
  OAI112X1TAS7 U860 ( .C1(n669), .C2(n938), .A1(n668), .B1(n728), .O(n670) );
  XOR2X1TAS7 U861 ( .I1(ALUControl_reg[0]), .I2(B_reg[2]), .O(n727) );
  NAND2X1TAS7 U862 ( .I1(n670), .I2(n727), .O(n713) );
  OAI112X1TAS7 U863 ( .C1(n716), .C2(n717), .A1(n714), .B1(n713), .O(n672) );
  NAND2X1TAS7 U864 ( .I1(n716), .I2(n717), .O(n671) );
  NAND2X1TAS7 U865 ( .I1(n672), .I2(n671), .O(n776) );
  CLKINVX1TAS7 U866 ( .I(A_reg[4]), .O(n775) );
  NAND2X1TAS7 U867 ( .I1(n776), .I2(n775), .O(n673) );
  XOR2X1TAS7 U868 ( .I1(ALUControl_reg[0]), .I2(B_reg[4]), .O(n774) );
  NAND2X1TAS7 U869 ( .I1(n673), .I2(n774), .O(n759) );
  CLKINVX1TAS7 U870 ( .I(n776), .O(n674) );
  NAND2X1TAS7 U871 ( .I1(n674), .I2(A_reg[4]), .O(n760) );
  OAI112X1TAS7 U872 ( .C1(n762), .C2(n763), .A1(n759), .B1(n760), .O(n676) );
  NAND2X1TAS7 U873 ( .I1(n762), .I2(n763), .O(n675) );
  NAND2X1TAS7 U874 ( .I1(n676), .I2(n675), .O(n753) );
  CLKINVX1TAS7 U875 ( .I(n753), .O(n677) );
  NAND2X1TAS7 U876 ( .I1(n677), .I2(A_reg[6]), .O(n789) );
  CLKINVX1TAS7 U877 ( .I(A_reg[6]), .O(n678) );
  NAND2X1TAS7 U878 ( .I1(n753), .I2(n678), .O(n679) );
  XOR2X1TAS7 U879 ( .I1(ALUControl_reg[0]), .I2(B_reg[6]), .O(n754) );
  NAND2X1TAS7 U880 ( .I1(n679), .I2(n754), .O(n788) );
  OAI112X1TAS7 U881 ( .C1(n791), .C2(n792), .A1(n789), .B1(n788), .O(n681) );
  NAND2X1TAS7 U882 ( .I1(n791), .I2(n792), .O(n680) );
  NAND2X1TAS7 U883 ( .I1(n681), .I2(n680), .O(n817) );
  CLKINVX1TAS7 U884 ( .I(n817), .O(n682) );
  NAND2X1TAS7 U885 ( .I1(n682), .I2(A_reg[8]), .O(n803) );
  CLKINVX1TAS7 U886 ( .I(A_reg[8]), .O(n818) );
  NAND2X1TAS7 U887 ( .I1(n817), .I2(n818), .O(n683) );
  XOR2X1TAS7 U888 ( .I1(ALUControl_reg[0]), .I2(B_reg[8]), .O(n819) );
  NAND2X1TAS7 U889 ( .I1(n683), .I2(n819), .O(n802) );
  OAI112X1TAS7 U890 ( .C1(n805), .C2(n806), .A1(n803), .B1(n802), .O(n685) );
  NAND2X1TAS7 U891 ( .I1(n805), .I2(n806), .O(n684) );
  NAND2X1TAS7 U892 ( .I1(n685), .I2(n684), .O(n827) );
  CLKINVX1TAS7 U893 ( .I(A_reg[10]), .O(n828) );
  NAND2X1TAS7 U894 ( .I1(n827), .I2(n828), .O(n686) );
  XOR2X1TAS7 U895 ( .I1(ALUControl_reg[0]), .I2(B_reg[10]), .O(n829) );
  NAND2X1TAS7 U896 ( .I1(n686), .I2(n829), .O(n844) );
  CLKINVX1TAS7 U897 ( .I(n827), .O(n687) );
  NAND2X1TAS7 U898 ( .I1(n687), .I2(A_reg[10]), .O(n845) );
  OAI112X1TAS7 U899 ( .C1(n847), .C2(n848), .A1(n844), .B1(n845), .O(n689) );
  NAND2X1TAS7 U900 ( .I1(n847), .I2(n848), .O(n688) );
  NAND2X1TAS7 U901 ( .I1(n689), .I2(n688), .O(n706) );
  CLKINVX1TAS7 U902 ( .I(A_reg[12]), .O(n707) );
  NAND2X1TAS7 U903 ( .I1(n706), .I2(n707), .O(n690) );
  XOR2X1TAS7 U904 ( .I1(ALUControl_reg[0]), .I2(B_reg[12]), .O(n708) );
  NAND2X1TAS7 U905 ( .I1(n690), .I2(n708), .O(n871) );
  CLKINVX1TAS7 U906 ( .I(n706), .O(n691) );
  NAND2X1TAS7 U907 ( .I1(n691), .I2(A_reg[12]), .O(n872) );
  OAI112X1TAS7 U908 ( .C1(n874), .C2(n692), .A1(n871), .B1(n872), .O(n694) );
  NAND2X1TAS7 U909 ( .I1(n874), .I2(n692), .O(n693) );
  NAND2X1TAS7 U910 ( .I1(n694), .I2(n693), .O(n797) );
  XOR2X1TAS7 U911 ( .I1(ALUControl_reg[0]), .I2(B_reg[15]), .O(n886) );
  XOR2X1TAS7 U912 ( .I1(A_reg[15]), .I2(n886), .O(n699) );
  CLKINVX1TAS7 U913 ( .I(n699), .O(n895) );
  NAND2X1TAS7 U914 ( .I1(n798), .I2(n799), .O(n884) );
  CLKINVX1TAS7 U915 ( .I(n884), .O(n696) );
  NAND2X1TAS7 U916 ( .I1(n695), .I2(ALUControl_reg[1]), .O(n889) );
  AOI12X1TAS7 U917 ( .B1(n895), .B2(n696), .A1(n889), .O(n698) );
  NAND3X1TAS7 U918 ( .I1(n885), .I2(n699), .I3(n884), .O(n697) );
  OAI112X1TAS7 U919 ( .C1(n885), .C2(n699), .A1(n698), .B1(n697), .O(n701) );
  AOI22X1TAS7 U920 ( .A1(n1053), .A2(\ALU_INSTANCE/or_result [15]), .B1(
        \ALU_INSTANCE/and_result [15]), .B2(n1050), .O(n700) );
  AND2X1TAS7 U921 ( .I1(n701), .I2(n700), .O(n702) );
  NAND2X1TAS7 U922 ( .I1(n703), .I2(n702), .O(n883) );
  AND2X1TAS7 U923 ( .I1(n883), .I2(n1038), .O(n1051) );
  NOR2X1TAS7 U924 ( .I1(A_reg[0]), .I2(B_reg[0]), .O(\ALU_INSTANCE/n33 ) );
  CLKINVX1TAS7 U925 ( .I(n704), .O(n864) );
  NAND2B1X1TAS7 U926 ( .B2(n862), .I1(n863), .O(n705) );
  XOR2X1TAS7 U927 ( .I1(n864), .I2(n705), .O(n712) );
  XNOR3X1TAS7 U928 ( .I1(n708), .I2(n707), .I3(n706), .O(n710) );
  AOI22X1TAS7 U929 ( .A1(n1050), .A2(\ALU_INSTANCE/and_result [12]), .B1(n1053), .B2(\ALU_INSTANCE/or_result [12]), .O(n709) );
  OAI12X1TAS7 U930 ( .B1(n710), .B2(n889), .A1(n709), .O(n711) );
  AOI12X1TAS7 U931 ( .B1(n712), .B2(n1023), .A1(n711), .O(n1032) );
  NAND2X1TAS7 U932 ( .I1(n714), .I2(n713), .O(n715) );
  XNOR3X1TAS7 U933 ( .I1(n717), .I2(n716), .I3(n715), .O(n725) );
  CLKINVX1TAS7 U934 ( .I(n1023), .O(n1035) );
  NAND2X1TAS7 U935 ( .I1(n719), .I2(n718), .O(n720) );
  XNOR2X1TAS7 U936 ( .I1(n721), .I2(n720), .O(n722) );
  NAND2B1X1TAS7 U937 ( .B2(n1035), .I1(n722), .O(n724) );
  AOI22X1TAS7 U938 ( .A1(n1052), .A2(\ALU_INSTANCE/and_result [3]), .B1(n1053), 
        .B2(\ALU_INSTANCE/or_result [3]), .O(n723) );
  OAI112X1TAS7 U939 ( .C1(n725), .C2(n889), .A1(n724), .B1(n723), .O(n1045) );
  XOR3X1TAS7 U940 ( .I1(n728), .I2(n727), .I3(n726), .O(n734) );
  AOI22X1TAS7 U941 ( .A1(n1052), .A2(\ALU_INSTANCE/and_result [2]), .B1(n1053), 
        .B2(\ALU_INSTANCE/or_result [2]), .O(n733) );
  OAI112X1TAS7 U942 ( .C1(n731), .C2(n730), .A1(n1023), .B1(n729), .O(n732) );
  OAI112X1TAS7 U943 ( .C1(n734), .C2(n889), .A1(n733), .B1(n732), .O(n1044) );
  OAI112X1TAS7 U944 ( .C1(\ALU_INSTANCE/n1 ), .C2(n735), .A1(B_reg[0]), .B1(
        A_reg[1]), .O(n737) );
  OAI112X1TAS7 U945 ( .C1(\ALU_INSTANCE/n1 ), .C2(n938), .A1(B_reg[1]), .B1(
        A_reg[0]), .O(n736) );
  AND2X1TAS7 U946 ( .I1(n737), .I2(n736), .O(n744) );
  XOR2X1TAS7 U947 ( .I1(A_reg[1]), .I2(n738), .O(n739) );
  XOR2X1TAS7 U948 ( .I1(n740), .I2(n739), .O(n741) );
  CLKINVX1TAS7 U949 ( .I(n889), .O(n876) );
  NAND2X1TAS7 U950 ( .I1(n741), .I2(n876), .O(n743) );
  AOI22X1TAS7 U951 ( .A1(n1052), .A2(\ALU_INSTANCE/and_result [1]), .B1(n1053), 
        .B2(\ALU_INSTANCE/or_result [1]), .O(n742) );
  OAI112X1TAS7 U952 ( .C1(n744), .C2(n1035), .A1(n743), .B1(n742), .O(n1043)
         );
  NOR2X1TAS7 U953 ( .I1(\ALU_INSTANCE/n33 ), .I2(n889), .O(n745) );
  MUX2BX1TAS7 U954 ( .I0(n1023), .I1(n745), .S(\ALU_INSTANCE/n1 ), .OB(n747)
         );
  AOI22X1TAS7 U955 ( .A1(n1052), .A2(\ALU_INSTANCE/and_result [0]), .B1(n1053), 
        .B2(\ALU_INSTANCE/or_result [0]), .O(n746) );
  NAND2X1TAS7 U956 ( .I1(n747), .I2(n746), .O(n1042) );
  NAND2X1TAS7 U957 ( .I1(\ALU_INSTANCE/and_result [14]), .I2(n1052), .O(n1034)
         );
  NAND2X1TAS7 U958 ( .I1(\ALU_INSTANCE/or_result [14]), .I2(n1053), .O(n1033)
         );
  CLKINVX1TAS7 U959 ( .I(reset), .O(n1038) );
  NAND4B1X1TAS7 U960 ( .B4(n1042), .I1(n1034), .I2(n1033), .I3(n1038), .O(n748) );
  NOR4X1TAS7 U961 ( .I1(n1045), .I2(n1044), .I3(n1043), .I4(n748), .O(n783) );
  NAND2X1TAS7 U962 ( .I1(n750), .I2(n749), .O(n751) );
  XNOR2X1TAS7 U963 ( .I1(n752), .I2(n751), .O(n758) );
  AOI22X1TAS7 U964 ( .A1(n1052), .A2(\ALU_INSTANCE/and_result [6]), .B1(n1053), 
        .B2(\ALU_INSTANCE/or_result [6]), .O(n757) );
  XNOR3X1TAS7 U965 ( .I1(A_reg[6]), .I2(n754), .I3(n753), .O(n755) );
  NAND2X1TAS7 U966 ( .I1(n755), .I2(n876), .O(n756) );
  OAI112X1TAS7 U967 ( .C1(n758), .C2(n1035), .A1(n757), .B1(n756), .O(n891) );
  NAND2X1TAS7 U968 ( .I1(n760), .I2(n759), .O(n761) );
  XNOR3X1TAS7 U969 ( .I1(n763), .I2(n762), .I3(n761), .O(n773) );
  CLKINVX1TAS7 U970 ( .I(n764), .O(n769) );
  CLKINVX1TAS7 U971 ( .I(n765), .O(n767) );
  NAND2X1TAS7 U972 ( .I1(n767), .I2(n766), .O(n768) );
  XNOR2X1TAS7 U973 ( .I1(n769), .I2(n768), .O(n770) );
  NAND2B1X1TAS7 U974 ( .B2(n770), .I1(n1023), .O(n772) );
  AOI22X1TAS7 U975 ( .A1(n1052), .A2(\ALU_INSTANCE/and_result [5]), .B1(n1053), 
        .B2(\ALU_INSTANCE/or_result [5]), .O(n771) );
  OAI112X1TAS7 U976 ( .C1(n773), .C2(n889), .A1(n772), .B1(n771), .O(n1047) );
  XNOR3X1TAS7 U977 ( .I1(n776), .I2(n775), .I3(n774), .O(n782) );
  XNOR2X1TAS7 U978 ( .I1(n778), .I2(n777), .O(n779) );
  NAND2X1TAS7 U979 ( .I1(n779), .I2(n1023), .O(n781) );
  AOI22X1TAS7 U980 ( .A1(n1052), .A2(\ALU_INSTANCE/and_result [4]), .B1(n1053), 
        .B2(\ALU_INSTANCE/or_result [4]), .O(n780) );
  OAI112X1TAS7 U981 ( .C1(n889), .C2(n782), .A1(n781), .B1(n780), .O(n1046) );
  NOR4B1X1TAS7 U982 ( .B4(n783), .I1(n891), .I2(n1047), .I3(n1046), .O(n801)
         );
  NAND2X1TAS7 U983 ( .I1(n785), .I2(n784), .O(n786) );
  XNOR2X1TAS7 U984 ( .I1(n787), .I2(n786), .O(n796) );
  NAND2X1TAS7 U985 ( .I1(n789), .I2(n788), .O(n790) );
  XNOR3X1TAS7 U986 ( .I1(n792), .I2(n791), .I3(n790), .O(n794) );
  AOI22X1TAS7 U987 ( .A1(n1052), .A2(\ALU_INSTANCE/and_result [7]), .B1(n1053), 
        .B2(\ALU_INSTANCE/or_result [7]), .O(n793) );
  OAI12X1TAS7 U988 ( .B1(n794), .B2(n889), .A1(n793), .O(n795) );
  AOI12B2X1TAS7 U989 ( .B1B(n796), .B2B(n1035), .A1(n795), .O(n1028) );
  XNOR3X1TAS7 U990 ( .I1(n799), .I2(n798), .I3(n797), .O(n800) );
  NAND2X1TAS7 U991 ( .I1(n800), .I2(n876), .O(n1036) );
  NAND3X1TAS7 U992 ( .I1(n801), .I2(n1028), .I3(n1036), .O(n838) );
  NAND2X1TAS7 U993 ( .I1(n803), .I2(n802), .O(n804) );
  XNOR3X1TAS7 U994 ( .I1(n806), .I2(n805), .I3(n804), .O(n816) );
  CLKINVX1TAS7 U995 ( .I(n807), .O(n812) );
  CLKINVX1TAS7 U996 ( .I(n808), .O(n810) );
  NAND2X1TAS7 U997 ( .I1(n810), .I2(n809), .O(n811) );
  XNOR2X1TAS7 U998 ( .I1(n812), .I2(n811), .O(n813) );
  NAND2X1TAS7 U999 ( .I1(n813), .I2(n1023), .O(n815) );
  AOI22X1TAS7 U1000 ( .A1(n1052), .A2(\ALU_INSTANCE/and_result [9]), .B1(n1053), .B2(\ALU_INSTANCE/or_result [9]), .O(n814) );
  OAI112X1TAS7 U1001 ( .C1(n816), .C2(n889), .A1(n815), .B1(n814), .O(n1029)
         );
  XNOR3X1TAS7 U1002 ( .I1(n819), .I2(n818), .I3(n817), .O(n826) );
  AOI12X1TAS7 U1003 ( .B1(n821), .B2(n820), .A1(n1035), .O(n822) );
  NAND2B1X1TAS7 U1004 ( .B2(n823), .I1(n822), .O(n825) );
  AOI22X1TAS7 U1005 ( .A1(n1052), .A2(\ALU_INSTANCE/and_result [8]), .B1(n1053), .B2(\ALU_INSTANCE/or_result [8]), .O(n824) );
  OAI112X1TAS7 U1006 ( .C1(n889), .C2(n826), .A1(n825), .B1(n824), .O(n892) );
  XNOR3X1TAS7 U1007 ( .I1(n829), .I2(n828), .I3(n827), .O(n837) );
  NAND2X1TAS7 U1008 ( .I1(n831), .I2(n830), .O(n832) );
  XNOR2X1TAS7 U1009 ( .I1(n833), .I2(n832), .O(n834) );
  NAND2X1TAS7 U1010 ( .I1(n834), .I2(n1023), .O(n836) );
  AOI22X1TAS7 U1011 ( .A1(n1052), .A2(\ALU_INSTANCE/and_result [10]), .B1(
        n1053), .B2(\ALU_INSTANCE/or_result [10]), .O(n835) );
  OAI112X1TAS7 U1012 ( .C1(n889), .C2(n837), .A1(n836), .B1(n835), .O(n1030)
         );
  NOR4X2TAS7 U1013 ( .I1(n838), .I2(n1029), .I3(n892), .I4(n1030), .O(n853) );
  CLKINVX1TAS7 U1014 ( .I(n839), .O(n841) );
  NAND2X1TAS7 U1015 ( .I1(n841), .I2(n840), .O(n842) );
  NAND2X1TAS7 U1016 ( .I1(n845), .I2(n844), .O(n846) );
  XNOR3X1TAS7 U1017 ( .I1(n848), .I2(n847), .I3(n846), .O(n850) );
  AOI22X1TAS7 U1018 ( .A1(n1052), .A2(\ALU_INSTANCE/and_result [11]), .B1(
        n1053), .B2(\ALU_INSTANCE/or_result [11]), .O(n849) );
  OAI12X1TAS7 U1019 ( .B1(n850), .B2(n889), .A1(n849), .O(n851) );
  AOI12X1TAS7 U1020 ( .B1(n852), .B2(n1023), .A1(n851), .O(n1031) );
  NAND3X1TAS7 U1021 ( .I1(n1032), .I2(n853), .I3(n1031), .O(n854) );
  CLKINVX1TAS7 U1022 ( .I(n854), .O(n881) );
  NAND2B1X1TAS7 U1023 ( .B2(n856), .I1(n855), .O(n857) );
  XOR2X1TAS7 U1024 ( .I1(n858), .I2(n857), .O(n1040) );
  NAND2X1TAS7 U1025 ( .I1(n1040), .I2(n1023), .O(n880) );
  CLKINVX1TAS7 U1026 ( .I(n859), .O(n861) );
  NAND2X1TAS7 U1027 ( .I1(n861), .I2(n860), .O(n865) );
  OAI12X1TAS7 U1028 ( .B1(n864), .B2(n862), .A1(n863), .O(n866) );
  NAND2X1TAS7 U1029 ( .I1(n865), .I2(n866), .O(n870) );
  CLKINVX1TAS7 U1030 ( .I(n865), .O(n867) );
  NOR2B1X1TAS7 U1031 ( .B2(n867), .I1(n866), .O(n868) );
  CLKINVX1TAS7 U1032 ( .I(n868), .O(n869) );
  NAND2X1TAS7 U1033 ( .I1(n870), .I2(n869), .O(n879) );
  NAND2X1TAS7 U1034 ( .I1(n872), .I2(n871), .O(n873) );
  XNOR3X1TAS7 U1035 ( .I1(A_reg[13]), .I2(n874), .I3(n873), .O(n877) );
  AOI22X1TAS7 U1036 ( .A1(n1053), .A2(\ALU_INSTANCE/or_result [13]), .B1(
        \ALU_INSTANCE/and_result [13]), .B2(n1050), .O(n875) );
  OAI12B2X1TAS7 U1037 ( .B1B(n877), .B2B(n876), .A1(n875), .O(n878) );
  AOI12X1TAS7 U1038 ( .B1(n879), .B2(n1023), .A1(n878), .O(n898) );
  NAND3X1TAS7 U1039 ( .I1(n881), .I2(n880), .I3(n898), .O(n882) );
  NOR2X1TAS7 U1040 ( .I1(n883), .I2(n882), .O(N56) );
  NAND2X1TAS7 U1041 ( .I1(n885), .I2(n884), .O(n893) );
  NOR2X1TAS7 U1042 ( .I1(n886), .I2(A_reg[15]), .O(n888) );
  CLKINVX1TAS7 U1043 ( .I(A_reg[15]), .O(n887) );
  CLKINVX1TAS7 U1044 ( .I(n886), .O(n894) );
  OAI22X1TAS7 U1045 ( .A1(n893), .A2(n888), .B1(n887), .B2(n894), .O(n890) );
  NOR2X1TAS7 U1046 ( .I1(n889), .I2(reset), .O(n896) );
  AND2X1TAS7 U1047 ( .I1(n890), .I2(n896), .O(n1049) );
  AND2X1TAS7 U1048 ( .I1(n891), .I2(n1038), .O(N44) );
  AND2X1TAS7 U1049 ( .I1(n892), .I2(n1038), .O(N46) );
  XOR2X1TAS7 U1050 ( .I1(n894), .I2(n893), .O(n897) );
  AND3X1TAS7 U1051 ( .I1(n897), .I2(n896), .I3(n895), .O(n1048) );
  NOR2B1X1TAS7 U1052 ( .B2(B[1]), .I1(reset), .O(N20) );
  NOR2B1X1TAS7 U1053 ( .B2(A[1]), .I1(reset), .O(N4) );
  NOR2B1X1TAS7 U1054 ( .B2(B[0]), .I1(reset), .O(N19) );
  NOR2B1X1TAS7 U1055 ( .B2(B[2]), .I1(reset), .O(N21) );
  NOR2B1X1TAS7 U1056 ( .B2(A[3]), .I1(reset), .O(N6) );
  NOR2B1X1TAS7 U1057 ( .B2(A[4]), .I1(reset), .O(N7) );
  NOR2B1X1TAS7 U1058 ( .B2(A[0]), .I1(reset), .O(N3) );
  NOR2B1X1TAS7 U1059 ( .B2(B[3]), .I1(reset), .O(N22) );
  NOR2B1X1TAS7 U1060 ( .B2(A[5]), .I1(reset), .O(N8) );
  NOR2B1X1TAS7 U1061 ( .B2(A[2]), .I1(reset), .O(N5) );
  NOR2B1X1TAS7 U1062 ( .B2(A[15]), .I1(reset), .O(N18) );
  NOR2B1X1TAS7 U1063 ( .B2(B[7]), .I1(reset), .O(N26) );
  NOR2B1X1TAS7 U1064 ( .B2(B[10]), .I1(reset), .O(N29) );
  NOR2B1X1TAS7 U1065 ( .B2(A[9]), .I1(reset), .O(N12) );
  NOR2B1X1TAS7 U1066 ( .B2(B[6]), .I1(reset), .O(N25) );
  NOR2B1X1TAS7 U1067 ( .B2(A[8]), .I1(reset), .O(N11) );
  NOR2B1X1TAS7 U1068 ( .B2(A[13]), .I1(reset), .O(N16) );
  NOR2B1X1TAS7 U1069 ( .B2(A[14]), .I1(reset), .O(N17) );
  NOR2B1X1TAS7 U1070 ( .B2(B[4]), .I1(reset), .O(N23) );
  NOR2B1X1TAS7 U1071 ( .B2(B[5]), .I1(reset), .O(N24) );
  NOR2B1X1TAS7 U1072 ( .B2(A[6]), .I1(reset), .O(N9) );
  NOR2B1X1TAS7 U1073 ( .B2(ALUControl[0]), .I1(reset), .O(N35) );
  NOR2B1X1TAS7 U1074 ( .B2(A[7]), .I1(reset), .O(N10) );
  NOR2B1X1TAS7 U1075 ( .B2(A[11]), .I1(reset), .O(N14) );
  NOR2B1X1TAS7 U1076 ( .B2(B[9]), .I1(reset), .O(N28) );
  NOR2B1X1TAS7 U1077 ( .B2(A[10]), .I1(reset), .O(N13) );
  NOR2B1X1TAS7 U1078 ( .B2(B[11]), .I1(reset), .O(N30) );
  NOR2B1X1TAS7 U1079 ( .B2(B[8]), .I1(reset), .O(N27) );
  NOR2B1X1TAS7 U1080 ( .B2(A[12]), .I1(reset), .O(N15) );
  NAND2X1TAS7 U1081 ( .I1(B_reg[8]), .I2(A_reg[8]), .O(\ALU_INSTANCE/n17 ) );
  NOR2X1TAS7 U1082 ( .I1(A_reg[1]), .I2(B_reg[1]), .O(\ALU_INSTANCE/n35 ) );
  NOR2X1TAS7 U1083 ( .I1(B_reg[2]), .I2(n942), .O(\ALU_INSTANCE/n37 ) );
  NOR2X1TAS7 U1084 ( .I1(n898), .I2(reset), .O(N51) );
  NOR2X1TAS7 U1085 ( .I1(B_reg[3]), .I2(A_reg[3]), .O(\ALU_INSTANCE/n39 ) );
  NOR2X1TAS7 U1086 ( .I1(A_reg[12]), .I2(B_reg[12]), .O(\ALU_INSTANCE/n57 ) );
  NOR2X1TAS7 U1087 ( .I1(A_reg[11]), .I2(B_reg[11]), .O(\ALU_INSTANCE/n55 ) );
  NOR2X1TAS7 U1088 ( .I1(A_reg[10]), .I2(B_reg[10]), .O(\ALU_INSTANCE/n53 ) );
  NOR2X1TAS7 U1089 ( .I1(A_reg[9]), .I2(B_reg[9]), .O(\ALU_INSTANCE/n51 ) );
  NOR2X1TAS7 U1090 ( .I1(A_reg[8]), .I2(B_reg[8]), .O(\ALU_INSTANCE/n49 ) );
  NOR2X1TAS7 U1091 ( .I1(A_reg[7]), .I2(B_reg[7]), .O(\ALU_INSTANCE/n47 ) );
  NOR2X1TAS7 U1092 ( .I1(A_reg[6]), .I2(B_reg[6]), .O(\ALU_INSTANCE/n45 ) );
  NOR2X1TAS7 U1093 ( .I1(A_reg[5]), .I2(B_reg[5]), .O(\ALU_INSTANCE/n43 ) );
  NOR2X1TAS7 U1094 ( .I1(A_reg[4]), .I2(B_reg[4]), .O(\ALU_INSTANCE/n41 ) );
  NAND2X1TAS7 U1095 ( .I1(A_reg[12]), .I2(B_reg[12]), .O(\ALU_INSTANCE/n25 )
         );
  NAND2X1TAS7 U1096 ( .I1(A_reg[11]), .I2(B_reg[11]), .O(\ALU_INSTANCE/n23 )
         );
  NAND2X1TAS7 U1097 ( .I1(A_reg[10]), .I2(B_reg[10]), .O(\ALU_INSTANCE/n21 )
         );
  NAND2X1TAS7 U1098 ( .I1(A_reg[9]), .I2(B_reg[9]), .O(\ALU_INSTANCE/n19 ) );
  OR2X1TAS7 U1099 ( .I1(n1011), .I2(n906), .O(n899) );
  NOR2X1TAS7 U1100 ( .I1(n1012), .I2(n899), .O(n903) );
  NAND2X1TAS7 U1101 ( .I1(n902), .I2(n903), .O(n1021) );
  CLKINVX1TAS7 U1102 ( .I(n900), .O(n901) );
  NAND2X1TAS7 U1103 ( .I1(n902), .I2(n901), .O(n905) );
  CLKINVX1TAS7 U1104 ( .I(n903), .O(n904) );
  NAND2X1TAS7 U1105 ( .I1(n905), .I2(n904), .O(n1020) );
  NAND2X1TAS7 U1106 ( .I1(n906), .I2(n1011), .O(n1019) );
  OAI12X1TAS7 U1107 ( .B1(n909), .B2(n908), .A1(n907), .O(n910) );
  AOI12X1TAS7 U1108 ( .B1(n912), .B2(n911), .A1(n910), .O(n990) );
  NAND2X1TAS7 U1109 ( .I1(n914), .I2(n913), .O(n916) );
  OAI112X1TAS7 U1110 ( .C1(n918), .C2(n917), .A1(n916), .B1(n915), .O(n920) );
  NAND2X1TAS7 U1111 ( .I1(n920), .I2(n919), .O(n988) );
  NAND2X1TAS7 U1112 ( .I1(n922), .I2(n921), .O(n924) );
  OAI112X1TAS7 U1113 ( .C1(\ALU_INSTANCE/n15 ), .C2(n925), .A1(n924), .B1(n923), .O(n986) );
  CLKINVX1TAS7 U1114 ( .I(n926), .O(n985) );
  OAI12X1TAS7 U1115 ( .B1(n929), .B2(n928), .A1(n927), .O(n930) );
  AOI12X1TAS7 U1116 ( .B1(n932), .B2(n931), .A1(n930), .O(n961) );
  AOI12X1TAS7 U1117 ( .B1(n935), .B2(n934), .A1(n933), .O(n952) );
  NOR2X1TAS7 U1118 ( .I1(B_reg[14]), .I2(B_reg[15]), .O(n941) );
  CLKINVX1TAS7 U1119 ( .I(B_reg[13]), .O(n936) );
  NAND2X1TAS7 U1120 ( .I1(n941), .I2(n936), .O(n948) );
  CLKINVX1TAS7 U1121 ( .I(B_reg[15]), .O(n939) );
  OR2X1TAS7 U1122 ( .I1(A_reg[14]), .I2(A_reg[15]), .O(n966) );
  NAND2X1TAS7 U1123 ( .I1(n966), .I2(B_reg[2]), .O(n937) );
  OAI112X1TAS7 U1124 ( .C1(n939), .C2(n938), .A1(n937), .B1(\ALU_INSTANCE/n17 ), .O(n940) );
  AOI12X1TAS7 U1125 ( .B1(n948), .B2(A_reg[3]), .A1(n940), .O(n947) );
  AOI22X1TAS7 U1126 ( .A1(A_reg[10]), .A2(B_reg[6]), .B1(B_reg[10]), .B2(
        A_reg[6]), .O(n946) );
  AOI22X1TAS7 U1127 ( .A1(B_reg[1]), .A2(A_reg[15]), .B1(A_reg[12]), .B2(
        B_reg[4]), .O(n945) );
  CLKINVX1TAS7 U1128 ( .I(n941), .O(n943) );
  NAND2X1TAS7 U1129 ( .I1(n943), .I2(n942), .O(n944) );
  AND4X1TAS7 U1130 ( .I1(n947), .I2(n946), .I3(n945), .I4(n944), .O(n950) );
  NOR2X1TAS7 U1131 ( .I1(n948), .I2(B_reg[12]), .O(n963) );
  CLKINVX1TAS7 U1132 ( .I(n963), .O(n973) );
  NAND2X1TAS7 U1133 ( .I1(n973), .I2(A_reg[4]), .O(n949) );
  OAI112X1TAS7 U1134 ( .C1(n952), .C2(n951), .A1(n950), .B1(n949), .O(n957) );
  AOI12X1TAS7 U1135 ( .B1(n955), .B2(n954), .A1(n953), .O(n956) );
  NOR2X1TAS7 U1136 ( .I1(n957), .I2(n956), .O(n959) );
  OAI112X1TAS7 U1137 ( .C1(n961), .C2(n960), .A1(n959), .B1(n958), .O(n983) );
  NOR3X1TAS7 U1138 ( .I1(B_reg[10]), .I2(B_reg[11]), .I3(B_reg[9]), .O(n962)
         );
  NAND2X1TAS7 U1139 ( .I1(n963), .I2(n962), .O(n969) );
  OR3X1TAS7 U1140 ( .I1(n969), .I2(B_reg[8]), .I3(B_reg[7]), .O(n971) );
  CLKINVX1TAS7 U1141 ( .I(n971), .O(n965) );
  NOR2X1TAS7 U1142 ( .I1(B_reg[5]), .I2(B_reg[6]), .O(n964) );
  NAND2X1TAS7 U1143 ( .I1(n965), .I2(n964), .O(n980) );
  OR2X1TAS7 U1144 ( .I1(B_reg[3]), .I2(B_reg[4]), .O(n967) );
  OAI22X1TAS7 U1145 ( .A1(n980), .A2(n967), .B1(A_reg[13]), .B2(n966), .O(n982) );
  CLKINVX1TAS7 U1146 ( .I(n968), .O(n977) );
  CLKINVX1TAS7 U1147 ( .I(n969), .O(n976) );
  NAND2X1TAS7 U1148 ( .I1(n971), .I2(n970), .O(n975) );
  OAI12X1TAS7 U1149 ( .B1(n973), .B2(B_reg[11]), .A1(n972), .O(n974) );
  OAI112X1TAS7 U1150 ( .C1(n977), .C2(n976), .A1(n975), .B1(n974), .O(n978) );
  AOI12X1TAS7 U1151 ( .B1(n980), .B2(n979), .A1(n978), .O(n981) );
  NAND3B1X1TAS7 U1152 ( .B3(n983), .I1(n982), .I2(n981), .O(n984) );
  AOI12X1TAS7 U1153 ( .B1(n986), .B2(n985), .A1(n984), .O(n987) );
  OAI112X1TAS7 U1154 ( .C1(n990), .C2(n989), .A1(n988), .B1(n987), .O(n1009)
         );
  CLKINVX1TAS7 U1155 ( .I(n991), .O(n993) );
  OAI12X1TAS7 U1156 ( .B1(n994), .B2(n993), .A1(n992), .O(n1008) );
  OAI12X1TAS7 U1157 ( .B1(n997), .B2(n996), .A1(n995), .O(n1007) );
  NAND2X1TAS7 U1158 ( .I1(n999), .I2(n998), .O(n1001) );
  OAI112X1TAS7 U1159 ( .C1(n1003), .C2(n1002), .A1(n1001), .B1(n1000), .O(
        n1004) );
  NAND2B1X1TAS7 U1160 ( .B2(n1005), .I1(n1004), .O(n1006) );
  NAND4B1X1TAS7 U1161 ( .B4(n1009), .I1(n1008), .I2(n1007), .I3(n1006), .O(
        n1010) );
  AOI12X1TAS7 U1162 ( .B1(n1012), .B2(n1011), .A1(n1010), .O(n1018) );
  CLKINVX1TAS7 U1163 ( .I(n1013), .O(n1015) );
  OAI12X1TAS7 U1164 ( .B1(n1016), .B2(n1015), .A1(n1014), .O(n1017) );
  NAND4X1TAS7 U1165 ( .I1(n1020), .I2(n1019), .I3(n1018), .I4(n1017), .O(n1025) );
  NOR3X1TAS7 U1166 ( .I1(n1022), .I2(n1021), .I3(n1025), .O(n1027) );
  OAI112X1TAS7 U1167 ( .C1(n1025), .C2(n1024), .A1(n1023), .B1(n1038), .O(
        n1026) );
  NOR2X1TAS7 U1168 ( .I1(n1027), .I2(n1026), .O(N58) );
  NOR2X1TAS7 U1169 ( .I1(n1028), .I2(reset), .O(N45) );
  AND2X1TAS7 U1170 ( .I1(n1029), .I2(n1038), .O(N47) );
  AND2X1TAS7 U1171 ( .I1(n1030), .I2(n1038), .O(N48) );
  NOR2X1TAS7 U1172 ( .I1(n1031), .I2(reset), .O(N49) );
  NOR2X1TAS7 U1173 ( .I1(n1032), .I2(reset), .O(N50) );
  NAND3X1TAS7 U1174 ( .I1(n1036), .I2(n1034), .I3(n1033), .O(n1039) );
  NAND4X1TAS7 U1175 ( .I1(n1036), .I2(n1035), .I3(n1034), .I4(n1033), .O(n1037) );
  OAI112X1TAS7 U1176 ( .C1(n1040), .C2(n1039), .A1(n1038), .B1(n1037), .O(
        n1041) );
  CLKINVX1TAS7 U1177 ( .I(n1041), .O(N52) );
  NAND2X1TAS7 U1178 ( .I1(A_reg[13]), .I2(B_reg[13]), .O(\ALU_INSTANCE/n27 )
         );
  NAND2X1TAS7 U1179 ( .I1(A_reg[14]), .I2(B_reg[14]), .O(\ALU_INSTANCE/n29 )
         );
  NAND2X1TAS7 U1180 ( .I1(A_reg[15]), .I2(B_reg[15]), .O(\ALU_INSTANCE/n31 )
         );
  NOR2X1TAS7 U1181 ( .I1(A_reg[13]), .I2(B_reg[13]), .O(\ALU_INSTANCE/n59 ) );
  NOR2X1TAS7 U1182 ( .I1(A_reg[14]), .I2(B_reg[14]), .O(\ALU_INSTANCE/n61 ) );
  NOR2X1TAS7 U1183 ( .I1(A_reg[15]), .I2(B_reg[15]), .O(\ALU_INSTANCE/n63 ) );
  NOR2B1X1TAS7 U1184 ( .B2(n1042), .I1(reset), .O(N38) );
  NOR2B1X1TAS7 U1185 ( .B2(n1043), .I1(reset), .O(N39) );
  NOR2B1X1TAS7 U1186 ( .B2(n1044), .I1(reset), .O(N40) );
  NOR2B1X1TAS7 U1187 ( .B2(n1045), .I1(reset), .O(N41) );
  NOR2B1X1TAS7 U1188 ( .B2(n1046), .I1(reset), .O(N42) );
  NOR2B1X1TAS7 U1189 ( .B2(n1047), .I1(reset), .O(N43) );
  NOR2B1X1TAS7 U1190 ( .B2(ALUControl[1]), .I1(reset), .O(N36) );
  NOR2B1X1TAS7 U1191 ( .B2(ALUControl[2]), .I1(reset), .O(N37) );
  NOR2B1X1TAS7 U1192 ( .B2(B[12]), .I1(reset), .O(N31) );
  NOR2B1X1TAS7 U1193 ( .B2(B[13]), .I1(reset), .O(N32) );
  NOR2B1X1TAS7 U1194 ( .B2(B[14]), .I1(reset), .O(N33) );
  NOR2B1X1TAS7 U1195 ( .B2(B[15]), .I1(reset), .O(N34) );
endmodule

