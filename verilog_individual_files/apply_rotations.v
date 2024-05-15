// generated.v

// Apply rotations module
module apply_rotations(in, out);
    input [639:0] in;
    output [639:0] out;
    wire [639:0] rot;
    generate
        genvar i;
        for (i = 0; i < 20; i = i + 1) begin: rotate
            rotation_helper rot_helper (.in(in[32*(i+1)-1:32*i]), .out(rot[32*(i+1)-1:32*i]));
        end
    endgenerate
    assign out = rot ^ {in[31:0], in[639:32]};
endmodule