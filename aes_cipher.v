module aescipher(function_index, datain,key,dataout);

    input function_index;
    input [127:0] datain;
    input [127:0] key;
    output[127:0] dataout;
    
    wire [127:0] r0_out;
    wire [127:0] r1_out,r2_out,r3_out,r4_out,r5_out,r6_out,r7_out,r8_out,r9_out;
    
    wire [127:0] keyout1,keyout2,keyout3,keyout4,keyout5,keyout6,keyout7,keyout8,keyout9;
	 
	 assign r0_out = datain^key;
	 
    rounds r1(.rc(4'b0000),.data(r0_out),.keyin(key),.keyout(keyout1),.state_out(r1_out), .indx(function_index));
    rounds r2(.rc(4'b0001),.data(r1_out),.keyin(keyout1),.keyout(keyout2),.state_out(r2_out), .indx(function_index));
    rounds r3(.rc(4'b0010),.data(r2_out),.keyin(keyout2),.keyout(keyout3),.state_out(r3_out), .indx(function_index));
    rounds r4(.rc(4'b0011),.data(r3_out),.keyin(keyout3),.keyout(keyout4),.state_out(r4_out), .indx(function_index));
    rounds r5(.rc(4'b0100),.data(r4_out),.keyin(keyout4),.keyout(keyout5),.state_out(r5_out), .indx(function_index));
    rounds r6(.rc(4'b0101),.data(r5_out),.keyin(keyout5),.keyout(keyout6),.state_out(r6_out), .indx(function_index));
    rounds r7(.rc(4'b0110),.data(r6_out),.keyin(keyout6),.keyout(keyout7),.state_out(r7_out), .indx(function_index));
    rounds r8(.rc(4'b0111),.data(r7_out),.keyin(keyout7),.keyout(keyout8),.state_out(r8_out), .indx(function_index));
    rounds r9(.rc(4'b1000),.data(r8_out),.keyin(keyout8),.keyout(keyout9),.state_out(r9_out), .indx(function_index));
    rounndlast r10(.rc(4'b1001),.rin(r9_out),.keylastin(keyout9),.fout(dataout));
    
endmodule