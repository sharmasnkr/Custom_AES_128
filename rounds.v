module rounds(indx, rc, data, keyin, keyout, state_out);
input indx;
input [3:0]rc;
input [127:0]data;
input [127:0]keyin;
output [127:0]keyout;
output [127:0]state_out;

wire [127:0] sb,sr,mix_cl;

KeyGeneration t0(rc, keyin, keyout);
subbytes t1(data, sb);
shiftrow t2(sb, sr);
mixcolumn t3(indx, sr, mix_cl);

assign state_out= keyout^mix_cl;

initial begin
#100;

$display("Data=%h Round_key_in=%h Round_key_out=%h After Mix-Column=%h State_matrix=%h", data, keyin, keyout, mix_cl, state_out);
end

endmodule