module odo_sbox_large5(clk, a_in, b_in, a_out, b_out);
    input clk;
    input [9:0] a_in;
    output reg [9:0] a_out;
    input [9:0] b_in;
    output reg [9:0] b_out;
    reg [9:0] mem[0:1023];
    always @(posedge clk) begin
        a_out <= mem[a_in];
        b_out <= mem[b_in];
    end
    initial begin
        mem[0] = 10'h103;
        mem[1] = 10'h384;
        mem[2] = 10'h2e6;
        mem[3] = 10'h08c;
        mem[4] = 10'h39d;
        mem[5] = 10'h343;
        mem[6] = 10'h1c5;
        mem[7] = 10'h084;
        mem[8] = 10'h1f0;
        mem[9] = 10'h0a9;
        mem[10] = 10'h2b7;
        mem[11] = 10'h218;
        mem[12] = 10'h1e6;
        mem[13] = 10'h288;
        mem[14] = 10'h3c6;
        mem[15] = 10'h21e;
        mem[16] = 10'h1be;
        mem[17] = 10'h35a;
        mem[18] = 10'h265;
        mem[19] = 10'h118;
        mem[20] = 10'h057;
        mem[21] = 10'h3cb;
        mem[22] = 10'h23e;
        mem[23] = 10'h05a;
        mem[24] = 10'h2da;
        mem[25] = 10'h0aa;
        mem[26] = 10'h128;
        mem[27] = 10'h0c4;
        mem[28] = 10'h352;
        mem[29] = 10'h2c8;
        mem[30] = 10'h0be;
        mem[31] = 10'h3f5;
        mem[32] = 10'h04c;
        mem[33] = 10'h396;
        mem[34] = 10'h195;
        mem[35] = 10'h145;
        mem[36] = 10'h0a5;
        mem[37] = 10'h3f3;
        mem[38] = 10'h1e1;
        mem[39] = 10'h06e;
        mem[40] = 10'h271;
        mem[41] = 10'h108;
        mem[42] = 10'h1c2;
        mem[43] = 10'h19a;
        mem[44] = 10'h2bf;
        mem[45] = 10'h0c8;
        mem[46] = 10'h1ea;
        mem[47] = 10'h309;
        mem[48] = 10'h170;
        mem[49] = 10'h220;
        mem[50] = 10'h1a0;
        mem[51] = 10'h098;
        mem[52] = 10'h125;
        mem[53] = 10'h2bc;
        mem[54] = 10'h12c;
        mem[55] = 10'h2e9;
        mem[56] = 10'h232;
        mem[57] = 10'h03f;
        mem[58] = 10'h0c9;
        mem[59] = 10'h3e3;
        mem[60] = 10'h045;
        mem[61] = 10'h30f;
        mem[62] = 10'h3c7;
        mem[63] = 10'h15b;
        mem[64] = 10'h031;
        mem[65] = 10'h1c8;
        mem[66] = 10'h187;
        mem[67] = 10'h039;
        mem[68] = 10'h04b;
        mem[69] = 10'h101;
        mem[70] = 10'h012;
        mem[71] = 10'h081;
        mem[72] = 10'h139;
        mem[73] = 10'h10f;
        mem[74] = 10'h391;
        mem[75] = 10'h1b9;
        mem[76] = 10'h0a0;
        mem[77] = 10'h2cc;
        mem[78] = 10'h0e9;
        mem[79] = 10'h0de;
        mem[80] = 10'h2ea;
        mem[81] = 10'h33b;
        mem[82] = 10'h191;
        mem[83] = 10'h2c9;
        mem[84] = 10'h3fe;
        mem[85] = 10'h2b5;
        mem[86] = 10'h36e;
        mem[87] = 10'h3a4;
        mem[88] = 10'h397;
        mem[89] = 10'h2c0;
        mem[90] = 10'h3dc;
        mem[91] = 10'h133;
        mem[92] = 10'h252;
        mem[93] = 10'h048;
        mem[94] = 10'h255;
        mem[95] = 10'h33a;
        mem[96] = 10'h0a6;
        mem[97] = 10'h152;
        mem[98] = 10'h149;
        mem[99] = 10'h138;
        mem[100] = 10'h1d1;
        mem[101] = 10'h242;
        mem[102] = 10'h0ec;
        mem[103] = 10'h0ee;
        mem[104] = 10'h003;
        mem[105] = 10'h1fc;
        mem[106] = 10'h2f5;
        mem[107] = 10'h104;
        mem[108] = 10'h39c;
        mem[109] = 10'h0e0;
        mem[110] = 10'h18a;
        mem[111] = 10'h23c;
        mem[112] = 10'h0a3;
        mem[113] = 10'h240;
        mem[114] = 10'h006;
        mem[115] = 10'h03e;
        mem[116] = 10'h12e;
        mem[117] = 10'h338;
        mem[118] = 10'h2df;
        mem[119] = 10'h047;
        mem[120] = 10'h32d;
        mem[121] = 10'h261;
        mem[122] = 10'h2a4;
        mem[123] = 10'h25c;
        mem[124] = 10'h22a;
        mem[125] = 10'h1d9;
        mem[126] = 10'h079;
        mem[127] = 10'h112;
        mem[128] = 10'h3d8;
        mem[129] = 10'h075;
        mem[130] = 10'h221;
        mem[131] = 10'h276;
        mem[132] = 10'h22f;
        mem[133] = 10'h1fb;
        mem[134] = 10'h26a;
        mem[135] = 10'h2c2;
        mem[136] = 10'h1a2;
        mem[137] = 10'h028;
        mem[138] = 10'h07a;
        mem[139] = 10'h353;
        mem[140] = 10'h03b;
        mem[141] = 10'h291;
        mem[142] = 10'h110;
        mem[143] = 10'h1b8;
        mem[144] = 10'h2ba;
        mem[145] = 10'h2c4;
        mem[146] = 10'h284;
        mem[147] = 10'h011;
        mem[148] = 10'h3a8;
        mem[149] = 10'h2cf;
        mem[150] = 10'h08f;
        mem[151] = 10'h364;
        mem[152] = 10'h2d0;
        mem[153] = 10'h026;
        mem[154] = 10'h19f;
        mem[155] = 10'h30e;
        mem[156] = 10'h2f3;
        mem[157] = 10'h2a9;
        mem[158] = 10'h185;
        mem[159] = 10'h222;
        mem[160] = 10'h368;
        mem[161] = 10'h085;
        mem[162] = 10'h09f;
        mem[163] = 10'h1f7;
        mem[164] = 10'h350;
        mem[165] = 10'h31f;
        mem[166] = 10'h1b3;
        mem[167] = 10'h07c;
        mem[168] = 10'h31e;
        mem[169] = 10'h29b;
        mem[170] = 10'h1a7;
        mem[171] = 10'h372;
        mem[172] = 10'h2a8;
        mem[173] = 10'h2f7;
        mem[174] = 10'h229;
        mem[175] = 10'h063;
        mem[176] = 10'h09a;
        mem[177] = 10'h2f1;
        mem[178] = 10'h15a;
        mem[179] = 10'h0b0;
        mem[180] = 10'h0e7;
        mem[181] = 10'h27d;
        mem[182] = 10'h3a2;
        mem[183] = 10'h038;
        mem[184] = 10'h3b5;
        mem[185] = 10'h29c;
        mem[186] = 10'h001;
        mem[187] = 10'h1df;
        mem[188] = 10'h1de;
        mem[189] = 10'h06f;
        mem[190] = 10'h0b2;
        mem[191] = 10'h319;
        mem[192] = 10'h1b6;
        mem[193] = 10'h1d3;
        mem[194] = 10'h3ed;
        mem[195] = 10'h30b;
        mem[196] = 10'h24d;
        mem[197] = 10'h088;
        mem[198] = 10'h3a1;
        mem[199] = 10'h23f;
        mem[200] = 10'h354;
        mem[201] = 10'h27e;
        mem[202] = 10'h245;
        mem[203] = 10'h0ce;
        mem[204] = 10'h377;
        mem[205] = 10'h07f;
        mem[206] = 10'h386;
        mem[207] = 10'h283;
        mem[208] = 10'h0ad;
        mem[209] = 10'h180;
        mem[210] = 10'h11c;
        mem[211] = 10'h13d;
        mem[212] = 10'h019;
        mem[213] = 10'h349;
        mem[214] = 10'h320;
        mem[215] = 10'h080;
        mem[216] = 10'h096;
        mem[217] = 10'h1f3;
        mem[218] = 10'h3d2;
        mem[219] = 10'h325;
        mem[220] = 10'h059;
        mem[221] = 10'h3f7;
        mem[222] = 10'h06a;
        mem[223] = 10'h3b2;
        mem[224] = 10'h0b8;
        mem[225] = 10'h09d;
        mem[226] = 10'h05e;
        mem[227] = 10'h304;
        mem[228] = 10'h1f8;
        mem[229] = 10'h109;
        mem[230] = 10'h3f8;
        mem[231] = 10'h37e;
        mem[232] = 10'h06d;
        mem[233] = 10'h310;
        mem[234] = 10'h280;
        mem[235] = 10'h1a5;
        mem[236] = 10'h3bb;
        mem[237] = 10'h044;
        mem[238] = 10'h34b;
        mem[239] = 10'h077;
        mem[240] = 10'h200;
        mem[241] = 10'h086;
        mem[242] = 10'h04a;
        mem[243] = 10'h18d;
        mem[244] = 10'h127;
        mem[245] = 10'h173;
        mem[246] = 10'h300;
        mem[247] = 10'h296;
        mem[248] = 10'h0dc;
        mem[249] = 10'h398;
        mem[250] = 10'h14f;
        mem[251] = 10'h182;
        mem[252] = 10'h3d7;
        mem[253] = 10'h26b;
        mem[254] = 10'h270;
        mem[255] = 10'h33d;
        mem[256] = 10'h311;
        mem[257] = 10'h3e9;
        mem[258] = 10'h00b;
        mem[259] = 10'h0fe;
        mem[260] = 10'h0eb;
        mem[261] = 10'h0af;
        mem[262] = 10'h32b;
        mem[263] = 10'h093;
        mem[264] = 10'h3fc;
        mem[265] = 10'h0d3;
        mem[266] = 10'h322;
        mem[267] = 10'h022;
        mem[268] = 10'h11e;
        mem[269] = 10'h3a6;
        mem[270] = 10'h3a7;
        mem[271] = 10'h12d;
        mem[272] = 10'h030;
        mem[273] = 10'h263;
        mem[274] = 10'h1c4;
        mem[275] = 10'h068;
        mem[276] = 10'h2b6;
        mem[277] = 10'h226;
        mem[278] = 10'h27a;
        mem[279] = 10'h20a;
        mem[280] = 10'h335;
        mem[281] = 10'h231;
        mem[282] = 10'h326;
        mem[283] = 10'h22e;
        mem[284] = 10'h3e1;
        mem[285] = 10'h16b;
        mem[286] = 10'h137;
        mem[287] = 10'h04f;
        mem[288] = 10'h215;
        mem[289] = 10'h143;
        mem[290] = 10'h33e;
        mem[291] = 10'h2a3;
        mem[292] = 10'h237;
        mem[293] = 10'h367;
        mem[294] = 10'h018;
        mem[295] = 10'h1a4;
        mem[296] = 10'h31c;
        mem[297] = 10'h07b;
        mem[298] = 10'h142;
        mem[299] = 10'h285;
        mem[300] = 10'h09e;
        mem[301] = 10'h100;
        mem[302] = 10'h22b;
        mem[303] = 10'h2b9;
        mem[304] = 10'h040;
        mem[305] = 10'h3ef;
        mem[306] = 10'h1b7;
        mem[307] = 10'h36a;
        mem[308] = 10'h28c;
        mem[309] = 10'h107;
        mem[310] = 10'h28a;
        mem[311] = 10'h2e8;
        mem[312] = 10'h184;
        mem[313] = 10'h0dd;
        mem[314] = 10'h12a;
        mem[315] = 10'h0bf;
        mem[316] = 10'h3d3;
        mem[317] = 10'h3bf;
        mem[318] = 10'h3a3;
        mem[319] = 10'h32e;
        mem[320] = 10'h399;
        mem[321] = 10'h0f7;
        mem[322] = 10'h105;
        mem[323] = 10'h3b4;
        mem[324] = 10'h14b;
        mem[325] = 10'h122;
        mem[326] = 10'h3c8;
        mem[327] = 10'h0bd;
        mem[328] = 10'h15d;
        mem[329] = 10'h01d;
        mem[330] = 10'h095;
        mem[331] = 10'h334;
        mem[332] = 10'h157;
        mem[333] = 10'h3a5;
        mem[334] = 10'h2c5;
        mem[335] = 10'h17a;
        mem[336] = 10'h0e4;
        mem[337] = 10'h192;
        mem[338] = 10'h156;
        mem[339] = 10'h10a;
        mem[340] = 10'h166;
        mem[341] = 10'h094;
        mem[342] = 10'h321;
        mem[343] = 10'h204;
        mem[344] = 10'h00e;
        mem[345] = 10'h1cd;
        mem[346] = 10'h35d;
        mem[347] = 10'h360;
        mem[348] = 10'h297;
        mem[349] = 10'h2f4;
        mem[350] = 10'h37a;
        mem[351] = 10'h2de;
        mem[352] = 10'h268;
        mem[353] = 10'h1a8;
        mem[354] = 10'h2b4;
        mem[355] = 10'h0ae;
        mem[356] = 10'h017;
        mem[357] = 10'h35f;
        mem[358] = 10'h196;
        mem[359] = 10'h3ad;
        mem[360] = 10'h239;
        mem[361] = 10'h235;
        mem[362] = 10'h1bb;
        mem[363] = 10'h0a8;
        mem[364] = 10'h35b;
        mem[365] = 10'h3d5;
        mem[366] = 10'h25f;
        mem[367] = 10'h206;
        mem[368] = 10'h0a7;
        mem[369] = 10'h264;
        mem[370] = 10'h37d;
        mem[371] = 10'h31a;
        mem[372] = 10'h193;
        mem[373] = 10'h0b4;
        mem[374] = 10'h163;
        mem[375] = 10'h070;
        mem[376] = 10'h17b;
        mem[377] = 10'h277;
        mem[378] = 10'h020;
        mem[379] = 10'h0c5;
        mem[380] = 10'h35c;
        mem[381] = 10'h36c;
        mem[382] = 10'h11b;
        mem[383] = 10'h015;
        mem[384] = 10'h38d;
        mem[385] = 10'h3ff;
        mem[386] = 10'h021;
        mem[387] = 10'h0ab;
        mem[388] = 10'h295;
        mem[389] = 10'h2f0;
        mem[390] = 10'h362;
        mem[391] = 10'h340;
        mem[392] = 10'h043;
        mem[393] = 10'h298;
        mem[394] = 10'h1da;
        mem[395] = 10'h0fc;
        mem[396] = 10'h344;
        mem[397] = 10'h302;
        mem[398] = 10'h3f9;
        mem[399] = 10'h1cf;
        mem[400] = 10'h2ab;
        mem[401] = 10'h15e;
        mem[402] = 10'h257;
        mem[403] = 10'h0b5;
        mem[404] = 10'h17e;
        mem[405] = 10'h253;
        mem[406] = 10'h1c0;
        mem[407] = 10'h22c;
        mem[408] = 10'h0ba;
        mem[409] = 10'h36d;
        mem[410] = 10'h275;
        mem[411] = 10'h0f2;
        mem[412] = 10'h3b1;
        mem[413] = 10'h056;
        mem[414] = 10'h3e0;
        mem[415] = 10'h014;
        mem[416] = 10'h119;
        mem[417] = 10'h178;
        mem[418] = 10'h294;
        mem[419] = 10'h3e7;
        mem[420] = 10'h13f;
        mem[421] = 10'h3cf;
        mem[422] = 10'h379;
        mem[423] = 10'h2e2;
        mem[424] = 10'h3b7;
        mem[425] = 10'h3f1;
        mem[426] = 10'h005;
        mem[427] = 10'h008;
        mem[428] = 10'h18c;
        mem[429] = 10'h066;
        mem[430] = 10'h0fa;
        mem[431] = 10'h1af;
        mem[432] = 10'h3ac;
        mem[433] = 10'h342;
        mem[434] = 10'h2b0;
        mem[435] = 10'h301;
        mem[436] = 10'h380;
        mem[437] = 10'h25b;
        mem[438] = 10'h27f;
        mem[439] = 10'h286;
        mem[440] = 10'h383;
        mem[441] = 10'h258;
        mem[442] = 10'h111;
        mem[443] = 10'h02e;
        mem[444] = 10'h331;
        mem[445] = 10'h28e;
        mem[446] = 10'h2f2;
        mem[447] = 10'h256;
        mem[448] = 10'h31d;
        mem[449] = 10'h2a0;
        mem[450] = 10'h176;
        mem[451] = 10'h089;
        mem[452] = 10'h21f;
        mem[453] = 10'h371;
        mem[454] = 10'h3d0;
        mem[455] = 10'h272;
        mem[456] = 10'h1a9;
        mem[457] = 10'h042;
        mem[458] = 10'h14d;
        mem[459] = 10'h1c3;
        mem[460] = 10'h05b;
        mem[461] = 10'h24b;
        mem[462] = 10'h2b1;
        mem[463] = 10'h2d8;
        mem[464] = 10'h22d;
        mem[465] = 10'h369;
        mem[466] = 10'h330;
        mem[467] = 10'h097;
        mem[468] = 10'h073;
        mem[469] = 10'h161;
        mem[470] = 10'h38e;
        mem[471] = 10'h029;
        mem[472] = 10'h027;
        mem[473] = 10'h0d5;
        mem[474] = 10'h062;
        mem[475] = 10'h211;
        mem[476] = 10'h099;
        mem[477] = 10'h058;
        mem[478] = 10'h305;
        mem[479] = 10'h1a1;
        mem[480] = 10'h1e3;
        mem[481] = 10'h1f9;
        mem[482] = 10'h090;
        mem[483] = 10'h385;
        mem[484] = 10'h179;
        mem[485] = 10'h2bb;
        mem[486] = 10'h024;
        mem[487] = 10'h1ab;
        mem[488] = 10'h13a;
        mem[489] = 10'h154;
        mem[490] = 10'h126;
        mem[491] = 10'h370;
        mem[492] = 10'h303;
        mem[493] = 10'h210;
        mem[494] = 10'h21b;
        mem[495] = 10'h1e8;
        mem[496] = 10'h0cf;
        mem[497] = 10'h373;
        mem[498] = 10'h1aa;
        mem[499] = 10'h273;
        mem[500] = 10'h3cd;
        mem[501] = 10'h18f;
        mem[502] = 10'h214;
        mem[503] = 10'h1b4;
        mem[504] = 10'h08d;
        mem[505] = 10'h013;
        mem[506] = 10'h106;
        mem[507] = 10'h316;
        mem[508] = 10'h3a9;
        mem[509] = 10'h17f;
        mem[510] = 10'h1fa;
        mem[511] = 10'h357;
        mem[512] = 10'h19c;
        mem[513] = 10'h3d4;
        mem[514] = 10'h2dd;
        mem[515] = 10'h0c6;
        mem[516] = 10'h217;
        mem[517] = 10'h395;
        mem[518] = 10'h207;
        mem[519] = 10'h3e2;
        mem[520] = 10'h117;
        mem[521] = 10'h3c4;
        mem[522] = 10'h1d0;
        mem[523] = 10'h250;
        mem[524] = 10'h050;
        mem[525] = 10'h26d;
        mem[526] = 10'h1c1;
        mem[527] = 10'h28b;
        mem[528] = 10'h375;
        mem[529] = 10'h060;
        mem[530] = 10'h046;
        mem[531] = 10'h0e6;
        mem[532] = 10'h3aa;
        mem[533] = 10'h293;
        mem[534] = 10'h216;
        mem[535] = 10'h0f9;
        mem[536] = 10'h032;
        mem[537] = 10'h38f;
        mem[538] = 10'h3d1;
        mem[539] = 10'h11d;
        mem[540] = 10'h1b2;
        mem[541] = 10'h121;
        mem[542] = 10'h0c0;
        mem[543] = 10'h25e;
        mem[544] = 10'h189;
        mem[545] = 10'h31b;
        mem[546] = 10'h1e0;
        mem[547] = 10'h2c3;
        mem[548] = 10'h00a;
        mem[549] = 10'h3dd;
        mem[550] = 10'h2f6;
        mem[551] = 10'h3fa;
        mem[552] = 10'h0d1;
        mem[553] = 10'h0ed;
        mem[554] = 10'h212;
        mem[555] = 10'h2a1;
        mem[556] = 10'h11a;
        mem[557] = 10'h0e1;
        mem[558] = 10'h290;
        mem[559] = 10'h3f4;
        mem[560] = 10'h172;
        mem[561] = 10'h205;
        mem[562] = 10'h054;
        mem[563] = 10'h09b;
        mem[564] = 10'h34d;
        mem[565] = 10'h3ae;
        mem[566] = 10'h1f4;
        mem[567] = 10'h287;
        mem[568] = 10'h1e9;
        mem[569] = 10'h233;
        mem[570] = 10'h3f6;
        mem[571] = 10'h091;
        mem[572] = 10'h279;
        mem[573] = 10'h067;
        mem[574] = 10'h129;
        mem[575] = 10'h055;
        mem[576] = 10'h2b3;
        mem[577] = 10'h2eb;
        mem[578] = 10'h36f;
        mem[579] = 10'h1c6;
        mem[580] = 10'h2cd;
        mem[581] = 10'h2ac;
        mem[582] = 10'h14e;
        mem[583] = 10'h16a;
        mem[584] = 10'h382;
        mem[585] = 10'h0a1;
        mem[586] = 10'h289;
        mem[587] = 10'h246;
        mem[588] = 10'h3fb;
        mem[589] = 10'h02c;
        mem[590] = 10'h1b0;
        mem[591] = 10'h356;
        mem[592] = 10'h148;
        mem[593] = 10'h144;
        mem[594] = 10'h2aa;
        mem[595] = 10'h34c;
        mem[596] = 10'h38c;
        mem[597] = 10'h033;
        mem[598] = 10'h315;
        mem[599] = 10'h07d;
        mem[600] = 10'h3b3;
        mem[601] = 10'h1a3;
        mem[602] = 10'h27b;
        mem[603] = 10'h16e;
        mem[604] = 10'h3fd;
        mem[605] = 10'h0cc;
        mem[606] = 10'h113;
        mem[607] = 10'h135;
        mem[608] = 10'h10c;
        mem[609] = 10'h169;
        mem[610] = 10'h333;
        mem[611] = 10'h1d6;
        mem[612] = 10'h238;
        mem[613] = 10'h124;
        mem[614] = 10'h132;
        mem[615] = 10'h1e2;
        mem[616] = 10'h1cc;
        mem[617] = 10'h1d5;
        mem[618] = 10'h3af;
        mem[619] = 10'h0d9;
        mem[620] = 10'h0f1;
        mem[621] = 10'h08e;
        mem[622] = 10'h378;
        mem[623] = 10'h3ea;
        mem[624] = 10'h3ca;
        mem[625] = 10'h102;
        mem[626] = 10'h3ab;
        mem[627] = 10'h38b;
        mem[628] = 10'h376;
        mem[629] = 10'h188;
        mem[630] = 10'h12b;
        mem[631] = 10'h158;
        mem[632] = 10'h36b;
        mem[633] = 10'h09c;
        mem[634] = 10'h136;
        mem[635] = 10'h147;
        mem[636] = 10'h20b;
        mem[637] = 10'h393;
        mem[638] = 10'h2c7;
        mem[639] = 10'h2ad;
        mem[640] = 10'h208;
        mem[641] = 10'h2dc;
        mem[642] = 10'h199;
        mem[643] = 10'h1d8;
        mem[644] = 10'h072;
        mem[645] = 10'h02f;
        mem[646] = 10'h1f6;
        mem[647] = 10'h230;
        mem[648] = 10'h2a5;
        mem[649] = 10'h225;
        mem[650] = 10'h3f2;
        mem[651] = 10'h21a;
        mem[652] = 10'h37f;
        mem[653] = 10'h2a6;
        mem[654] = 10'h1bf;
        mem[655] = 10'h052;
        mem[656] = 10'h1ba;
        mem[657] = 10'h2c6;
        mem[658] = 10'h30d;
        mem[659] = 10'h332;
        mem[660] = 10'h016;
        mem[661] = 10'h0b7;
        mem[662] = 10'h244;
        mem[663] = 10'h2d9;
        mem[664] = 10'h2af;
        mem[665] = 10'h0d6;
        mem[666] = 10'h2ef;
        mem[667] = 10'h313;
        mem[668] = 10'h02d;
        mem[669] = 10'h3c2;
        mem[670] = 10'h05d;
        mem[671] = 10'h282;
        mem[672] = 10'h2d1;
        mem[673] = 10'h19e;
        mem[674] = 10'h1fd;
        mem[675] = 10'h34a;
        mem[676] = 10'h2ae;
        mem[677] = 10'h0ef;
        mem[678] = 10'h04e;
        mem[679] = 10'h308;
        mem[680] = 10'h18b;
        mem[681] = 10'h115;
        mem[682] = 10'h3c0;
        mem[683] = 10'h19d;
        mem[684] = 10'h351;
        mem[685] = 10'h306;
        mem[686] = 10'h17d;
        mem[687] = 10'h0f5;
        mem[688] = 10'h3e8;
        mem[689] = 10'h0a2;
        mem[690] = 10'h00c;
        mem[691] = 10'h361;
        mem[692] = 10'h141;
        mem[693] = 10'h0da;
        mem[694] = 10'h2be;
        mem[695] = 10'h3bc;
        mem[696] = 10'h312;
        mem[697] = 10'h314;
        mem[698] = 10'h15c;
        mem[699] = 10'h39f;
        mem[700] = 10'h3eb;
        mem[701] = 10'h002;
        mem[702] = 10'h3c5;
        mem[703] = 10'h328;
        mem[704] = 10'h0c1;
        mem[705] = 10'h2e0;
        mem[706] = 10'h186;
        mem[707] = 10'h2d3;
        mem[708] = 10'h1ed;
        mem[709] = 10'h0ea;
        mem[710] = 10'h155;
        mem[711] = 10'h25d;
        mem[712] = 10'h247;
        mem[713] = 10'h1e7;
        mem[714] = 10'h1b5;
        mem[715] = 10'h08a;
        mem[716] = 10'h146;
        mem[717] = 10'h0fb;
        mem[718] = 10'h3ce;
        mem[719] = 10'h3ba;
        mem[720] = 10'h174;
        mem[721] = 10'h168;
        mem[722] = 10'h01e;
        mem[723] = 10'h123;
        mem[724] = 10'h0c2;
        mem[725] = 10'h004;
        mem[726] = 10'h0c3;
        mem[727] = 10'h164;
        mem[728] = 10'h387;
        mem[729] = 10'h381;
        mem[730] = 10'h19b;
        mem[731] = 10'h2d4;
        mem[732] = 10'h1c7;
        mem[733] = 10'h1bc;
        mem[734] = 10'h01f;
        mem[735] = 10'h2e4;
        mem[736] = 10'h02a;
        mem[737] = 10'h069;
        mem[738] = 10'h26e;
        mem[739] = 10'h278;
        mem[740] = 10'h14c;
        mem[741] = 10'h114;
        mem[742] = 10'h1f2;
        mem[743] = 10'h3b0;
        mem[744] = 10'h33f;
        mem[745] = 10'h23a;
        mem[746] = 10'h1d2;
        mem[747] = 10'h3d9;
        mem[748] = 10'h010;
        mem[749] = 10'h1c9;
        mem[750] = 10'h336;
        mem[751] = 10'h37b;
        mem[752] = 10'h05c;
        mem[753] = 10'h078;
        mem[754] = 10'h3ec;
        mem[755] = 10'h134;
        mem[756] = 10'h2d7;
        mem[757] = 10'h236;
        mem[758] = 10'h259;
        mem[759] = 10'h227;
        mem[760] = 10'h037;
        mem[761] = 10'h17c;
        mem[762] = 10'h11f;
        mem[763] = 10'h071;
        mem[764] = 10'h162;
        mem[765] = 10'h234;
        mem[766] = 10'h3e4;
        mem[767] = 10'h1e4;
        mem[768] = 10'h0ff;
        mem[769] = 10'h30a;
        mem[770] = 10'h3de;
        mem[771] = 10'h2ff;
        mem[772] = 10'h18e;
        mem[773] = 10'h34e;
        mem[774] = 10'h065;
        mem[775] = 10'h16c;
        mem[776] = 10'h346;
        mem[777] = 10'h12f;
        mem[778] = 10'h249;
        mem[779] = 10'h00f;
        mem[780] = 10'h266;
        mem[781] = 10'h26f;
        mem[782] = 10'h051;
        mem[783] = 10'h2fd;
        mem[784] = 10'h035;
        mem[785] = 10'h0f3;
        mem[786] = 10'h3e6;
        mem[787] = 10'h28d;
        mem[788] = 10'h32f;
        mem[789] = 10'h327;
        mem[790] = 10'h181;
        mem[791] = 10'h116;
        mem[792] = 10'h165;
        mem[793] = 10'h0b6;
        mem[794] = 10'h0c7;
        mem[795] = 10'h05f;
        mem[796] = 10'h0f6;
        mem[797] = 10'h08b;
        mem[798] = 10'h347;
        mem[799] = 10'h1f1;
        mem[800] = 10'h1ad;
        mem[801] = 10'h26c;
        mem[802] = 10'h190;
        mem[803] = 10'h243;
        mem[804] = 10'h2ca;
        mem[805] = 10'h241;
        mem[806] = 10'h281;
        mem[807] = 10'h087;
        mem[808] = 10'h203;
        mem[809] = 10'h0ca;
        mem[810] = 10'h1d4;
        mem[811] = 10'h29f;
        mem[812] = 10'h167;
        mem[813] = 10'h1b1;
        mem[814] = 10'h197;
        mem[815] = 10'h20f;
        mem[816] = 10'h38a;
        mem[817] = 10'h1a6;
        mem[818] = 10'h318;
        mem[819] = 10'h323;
        mem[820] = 10'h339;
        mem[821] = 10'h3b8;
        mem[822] = 10'h0d2;
        mem[823] = 10'h2fb;
        mem[824] = 10'h1ce;
        mem[825] = 10'h2ed;
        mem[826] = 10'h2d2;
        mem[827] = 10'h061;
        mem[828] = 10'h37c;
        mem[829] = 10'h24f;
        mem[830] = 10'h1db;
        mem[831] = 10'h1dc;
        mem[832] = 10'h120;
        mem[833] = 10'h24e;
        mem[834] = 10'h29d;
        mem[835] = 10'h082;
        mem[836] = 10'h1ff;
        mem[837] = 10'h16f;
        mem[838] = 10'h219;
        mem[839] = 10'h317;
        mem[840] = 10'h262;
        mem[841] = 10'h355;
        mem[842] = 10'h0cd;
        mem[843] = 10'h151;
        mem[844] = 10'h3db;
        mem[845] = 10'h32c;
        mem[846] = 10'h0e8;
        mem[847] = 10'h254;
        mem[848] = 10'h269;
        mem[849] = 10'h198;
        mem[850] = 10'h1ca;
        mem[851] = 10'h076;
        mem[852] = 10'h348;
        mem[853] = 10'h159;
        mem[854] = 10'h223;
        mem[855] = 10'h2fa;
        mem[856] = 10'h025;
        mem[857] = 10'h023;
        mem[858] = 10'h2e5;
        mem[859] = 10'h20c;
        mem[860] = 10'h13e;
        mem[861] = 10'h03d;
        mem[862] = 10'h0e2;
        mem[863] = 10'h251;
        mem[864] = 10'h20e;
        mem[865] = 10'h27c;
        mem[866] = 10'h1ae;
        mem[867] = 10'h175;
        mem[868] = 10'h036;
        mem[869] = 10'h213;
        mem[870] = 10'h1bd;
        mem[871] = 10'h130;
        mem[872] = 10'h392;
        mem[873] = 10'h3da;
        mem[874] = 10'h007;
        mem[875] = 10'h1ef;
        mem[876] = 10'h0bb;
        mem[877] = 10'h14a;
        mem[878] = 10'h053;
        mem[879] = 10'h1cb;
        mem[880] = 10'h0f0;
        mem[881] = 10'h329;
        mem[882] = 10'h0e3;
        mem[883] = 10'h194;
        mem[884] = 10'h3b6;
        mem[885] = 10'h01c;
        mem[886] = 10'h292;
        mem[887] = 10'h01b;
        mem[888] = 10'h2a7;
        mem[889] = 10'h25a;
        mem[890] = 10'h13b;
        mem[891] = 10'h2f8;
        mem[892] = 10'h337;
        mem[893] = 10'h201;
        mem[894] = 10'h2fc;
        mem[895] = 10'h0f4;
        mem[896] = 10'h21d;
        mem[897] = 10'h224;
        mem[898] = 10'h3df;
        mem[899] = 10'h1e5;
        mem[900] = 10'h150;
        mem[901] = 10'h1ec;
        mem[902] = 10'h183;
        mem[903] = 10'h32a;
        mem[904] = 10'h0d7;
        mem[905] = 10'h3b9;
        mem[906] = 10'h2e7;
        mem[907] = 10'h06b;
        mem[908] = 10'h35e;
        mem[909] = 10'h0bc;
        mem[910] = 10'h3cc;
        mem[911] = 10'h374;
        mem[912] = 10'h0d8;
        mem[913] = 10'h2a2;
        mem[914] = 10'h083;
        mem[915] = 10'h3d6;
        mem[916] = 10'h3c9;
        mem[917] = 10'h07e;
        mem[918] = 10'h2ce;
        mem[919] = 10'h23d;
        mem[920] = 10'h0b1;
        mem[921] = 10'h2e1;
        mem[922] = 10'h092;
        mem[923] = 10'h04d;
        mem[924] = 10'h0d0;
        mem[925] = 10'h01a;
        mem[926] = 10'h341;
        mem[927] = 10'h29e;
        mem[928] = 10'h1f5;
        mem[929] = 10'h0b9;
        mem[930] = 10'h140;
        mem[931] = 10'h1eb;
        mem[932] = 10'h24a;
        mem[933] = 10'h13c;
        mem[934] = 10'h28f;
        mem[935] = 10'h10e;
        mem[936] = 10'h0fd;
        mem[937] = 10'h00d;
        mem[938] = 10'h0cb;
        mem[939] = 10'h3bd;
        mem[940] = 10'h131;
        mem[941] = 10'h3c3;
        mem[942] = 10'h034;
        mem[943] = 10'h21c;
        mem[944] = 10'h03c;
        mem[945] = 10'h0b3;
        mem[946] = 10'h049;
        mem[947] = 10'h39b;
        mem[948] = 10'h23b;
        mem[949] = 10'h274;
        mem[950] = 10'h33c;
        mem[951] = 10'h228;
        mem[952] = 10'h2c1;
        mem[953] = 10'h359;
        mem[954] = 10'h3a0;
        mem[955] = 10'h02b;
        mem[956] = 10'h390;
        mem[957] = 10'h24c;
        mem[958] = 10'h2cb;
        mem[959] = 10'h10d;
        mem[960] = 10'h0db;
        mem[961] = 10'h1d7;
        mem[962] = 10'h1ac;
        mem[963] = 10'h39e;
        mem[964] = 10'h2b2;
        mem[965] = 10'h202;
        mem[966] = 10'h2e3;
        mem[967] = 10'h160;
        mem[968] = 10'h2ec;
        mem[969] = 10'h16d;
        mem[970] = 10'h2bd;
        mem[971] = 10'h389;
        mem[972] = 10'h39a;
        mem[973] = 10'h074;
        mem[974] = 10'h34f;
        mem[975] = 10'h177;
        mem[976] = 10'h2fe;
        mem[977] = 10'h20d;
        mem[978] = 10'h30c;
        mem[979] = 10'h2f9;
        mem[980] = 10'h10b;
        mem[981] = 10'h363;
        mem[982] = 10'h307;
        mem[983] = 10'h2db;
        mem[984] = 10'h3ee;
        mem[985] = 10'h000;
        mem[986] = 10'h1dd;
        mem[987] = 10'h064;
        mem[988] = 10'h171;
        mem[989] = 10'h2d5;
        mem[990] = 10'h06c;
        mem[991] = 10'h358;
        mem[992] = 10'h3f0;
        mem[993] = 10'h345;
        mem[994] = 10'h0d4;
        mem[995] = 10'h209;
        mem[996] = 10'h1fe;
        mem[997] = 10'h3e5;
        mem[998] = 10'h1ee;
        mem[999] = 10'h03a;
        mem[1000] = 10'h388;
        mem[1001] = 10'h394;
        mem[1002] = 10'h365;
        mem[1003] = 10'h041;
        mem[1004] = 10'h366;
        mem[1005] = 10'h0ac;
        mem[1006] = 10'h0f8;
        mem[1007] = 10'h009;
        mem[1008] = 10'h15f;
        mem[1009] = 10'h299;
        mem[1010] = 10'h2d6;
        mem[1011] = 10'h324;
        mem[1012] = 10'h260;
        mem[1013] = 10'h2ee;
        mem[1014] = 10'h0df;
        mem[1015] = 10'h0e5;
        mem[1016] = 10'h0a4;
        mem[1017] = 10'h2b8;
        mem[1018] = 10'h3c1;
        mem[1019] = 10'h267;
        mem[1020] = 10'h153;
        mem[1021] = 10'h29a;
        mem[1022] = 10'h3be;
        mem[1023] = 10'h248;
    end
endmodule

