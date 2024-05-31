module odo_apply_sboxes(clk, in, out);
    input clk;
    input [639:0] in;
    output [639:0] out;
    odo_sbox_small0 sbox0inst(clk, in[5:0], out[5:0]);
    odo_sbox_small1 sbox1inst(clk, in[21:16], out[21:16]);
    odo_sbox_large0 sbox2inst(clk, in[15:6], in[31:22], out[15:6], out[31:22]);
    odo_sbox_small2 sbox3inst(clk, in[37:32], out[37:32]);
    odo_sbox_small3 sbox4inst(clk, in[53:48], out[53:48]);
    odo_sbox_large0 sbox5inst(clk, in[47:38], in[63:54], out[47:38], out[63:54]);
    odo_sbox_small4 sbox6inst(clk, in[69:64], out[69:64]);
    odo_sbox_small5 sbox7inst(clk, in[85:80], out[85:80]);
    odo_sbox_large1 sbox8inst(clk, in[79:70], in[95:86], out[79:70], out[95:86]);
    odo_sbox_small6 sbox9inst(clk, in[101:96], out[101:96]);
    odo_sbox_small7 sbox10inst(clk, in[117:112], out[117:112]);
    odo_sbox_large1 sbox11inst(clk, in[111:102], in[127:118], out[111:102], out[127:118]);
    odo_sbox_small8 sbox12inst(clk, in[133:128], out[133:128]);
    odo_sbox_small9 sbox13inst(clk, in[149:144], out[149:144]);
    odo_sbox_large2 sbox14inst(clk, in[143:134], in[159:150], out[143:134], out[159:150]);
    odo_sbox_small10 sbox15inst(clk, in[165:160], out[165:160]);
    odo_sbox_small11 sbox16inst(clk, in[181:176], out[181:176]);
    odo_sbox_large2 sbox17inst(clk, in[175:166], in[191:182], out[175:166], out[191:182]);
    odo_sbox_small12 sbox18inst(clk, in[197:192], out[197:192]);
    odo_sbox_small13 sbox19inst(clk, in[213:208], out[213:208]);
    odo_sbox_large3 sbox20inst(clk, in[207:198], in[223:214], out[207:198], out[223:214]);
    odo_sbox_small14 sbox21inst(clk, in[229:224], out[229:224]);
    odo_sbox_small15 sbox22inst(clk, in[245:240], out[245:240]);
    odo_sbox_large3 sbox23inst(clk, in[239:230], in[255:246], out[239:230], out[255:246]);
    odo_sbox_small16 sbox24inst(clk, in[261:256], out[261:256]);
    odo_sbox_small17 sbox25inst(clk, in[277:272], out[277:272]);
    odo_sbox_large4 sbox26inst(clk, in[271:262], in[287:278], out[271:262], out[287:278]);
    odo_sbox_small18 sbox27inst(clk, in[293:288], out[293:288]);
    odo_sbox_small19 sbox28inst(clk, in[309:304], out[309:304]);
    odo_sbox_large4 sbox29inst(clk, in[303:294], in[319:310], out[303:294], out[319:310]);
    odo_sbox_small20 sbox30inst(clk, in[325:320], out[325:320]);
    odo_sbox_small21 sbox31inst(clk, in[341:336], out[341:336]);
    odo_sbox_large5 sbox32inst(clk, in[335:326], in[351:342], out[335:326], out[351:342]);
    odo_sbox_small22 sbox33inst(clk, in[357:352], out[357:352]);
    odo_sbox_small23 sbox34inst(clk, in[373:368], out[373:368]);
    odo_sbox_large5 sbox35inst(clk, in[367:358], in[383:374], out[367:358], out[383:374]);
    odo_sbox_small24 sbox36inst(clk, in[389:384], out[389:384]);
    odo_sbox_small25 sbox37inst(clk, in[405:400], out[405:400]);
    odo_sbox_large6 sbox38inst(clk, in[399:390], in[415:406], out[399:390], out[415:406]);
    odo_sbox_small26 sbox39inst(clk, in[421:416], out[421:416]);
    odo_sbox_small27 sbox40inst(clk, in[437:432], out[437:432]);
    odo_sbox_large6 sbox41inst(clk, in[431:422], in[447:438], out[431:422], out[447:438]);
    odo_sbox_small28 sbox42inst(clk, in[453:448], out[453:448]);
    odo_sbox_small29 sbox43inst(clk, in[469:464], out[469:464]);
    odo_sbox_large7 sbox44inst(clk, in[463:454], in[479:470], out[463:454], out[479:470]);
    odo_sbox_small30 sbox45inst(clk, in[485:480], out[485:480]);
    odo_sbox_small31 sbox46inst(clk, in[501:496], out[501:496]);
    odo_sbox_large7 sbox47inst(clk, in[495:486], in[511:502], out[495:486], out[511:502]);
    odo_sbox_small32 sbox48inst(clk, in[517:512], out[517:512]);
    odo_sbox_small33 sbox49inst(clk, in[533:528], out[533:528]);
    odo_sbox_large8 sbox50inst(clk, in[527:518], in[543:534], out[527:518], out[543:534]);
    odo_sbox_small34 sbox51inst(clk, in[549:544], out[549:544]);
    odo_sbox_small35 sbox52inst(clk, in[565:560], out[565:560]);
    odo_sbox_large8 sbox53inst(clk, in[559:550], in[575:566], out[559:550], out[575:566]);
    odo_sbox_small36 sbox54inst(clk, in[581:576], out[581:576]);
    odo_sbox_small37 sbox55inst(clk, in[597:592], out[597:592]);
    odo_sbox_large9 sbox56inst(clk, in[591:582], in[607:598], out[591:582], out[607:598]);
    odo_sbox_small38 sbox57inst(clk, in[613:608], out[613:608]);
    odo_sbox_small39 sbox58inst(clk, in[629:624], out[629:624]);
    odo_sbox_large9 sbox59inst(clk, in[623:614], in[639:630], out[623:614], out[639:630]);
endmodule
