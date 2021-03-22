module aes_tb();
reg [0:127] data,key;
wire [0:127] cipher;
reg function_in;
integer data_file, out_file, scan_file;

aescipher u1 (function_in, data, key, cipher);

initial begin
	#10;
	$monitor("Plain Text= %h\nKey=%h \n Final Cipher Text=%h\n ", data, key, cipher);
	
	data_file = $fopen("./in.txt", "r");

	if(!data_file) begin
			$display("error openning input file reading");
			$finish;
		end
		
		out_file = $fopen("./out.txt", "w");
		if(!out_file) begin
			$display("error openning output file reading");
			$finish;
		end
			
				scan_file = $fscanf(data_file, "%b\n %h\n %h", function_in, key, data);
				#200;
				$fdisplay(out_file,"Cipher_text= %h", cipher);
			

end
endmodule
