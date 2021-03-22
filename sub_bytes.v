module subbytes(data,s_out);

input [127:0] data;
output [127:0] s_out;

     sbox u0(data[127:120], s_out[127:120] );
     sbox u1(data[95:88], s_out[95:88] );
     sbox u2( data[63:56], s_out[63:56] );
     sbox u3(data[31:24], s_out[31:24] );

     sbox u4(data[119:112], s_out[119:112] );
     sbox u5(data[87:80], s_out[87:80] );
     sbox u6( data[55:48], s_out[55:48] );
     sbox u7(data[23:16], s_out[23:16] );

     sbox u8(data[111:104], s_out[111:104] );
     sbox u9(data[79:72], s_out[79:72] );
     sbox u10(data[47:40], s_out[47:40] );
     sbox u11(data[15:8], s_out[15:8]) ;

     sbox u12(data[103:96], s_out[103:96] );     
     sbox u13(data[71:64], s_out[71:64] );     
     sbox u14(data[39:32], s_out[39:32] );
     sbox u15(data[7:0], s_out[7:0] );
	  
endmodule