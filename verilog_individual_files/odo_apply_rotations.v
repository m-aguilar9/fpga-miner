module odo_apply_rotations(in, out);
    input [639:0] in;
    output [639:0] out;
    wire [639:0] rot;
    odo_rotation_helper rot0inst(in[63:0], rot[63:0]);
    odo_rotation_helper rot1inst(in[127:64], rot[127:64]);
    odo_rotation_helper rot2inst(in[191:128], rot[191:128]);
    odo_rotation_helper rot3inst(in[255:192], rot[255:192]);
    odo_rotation_helper rot4inst(in[319:256], rot[319:256]);
    odo_rotation_helper rot5inst(in[383:320], rot[383:320]);
    odo_rotation_helper rot6inst(in[447:384], rot[447:384]);
    odo_rotation_helper rot7inst(in[511:448], rot[511:448]);
    odo_rotation_helper rot8inst(in[575:512], rot[575:512]);
    odo_rotation_helper rot9inst(in[639:576], rot[639:576]);
    assign out = rot ^ {in[63:0], in[639:64]};
endmodule

