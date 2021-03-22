module mixcolumn(indx, a,mcl);
input indx;
input [127:0] a;
output [127:0] mcl;
reg [7:0]mult2[255:0];
reg [7:0]mult3[255:0];
reg [7:0]mult5[255:0];
reg [7:0]mult7[255:0];
reg [8:0] tem_mc, temp_var;


assign mcl[127:120]= mixcolumn2311 (a[127:120],a[119:112],a[111:104],a[103:96]);
assign mcl[95:88]= mixcolumn2311 (a[95:88],a[87:80],a[79:72],a[71:64]);
assign mcl[63:56]= mixcolumn2311 (a[63:56],a[55:48],a[47:40],a[39:32]);
assign mcl[31:24]= mixcolumn2311 (a[31:24],a[23:16],a[15:8],a[7:0]);

assign mcl[119:112]= mixcolumn1231 (a[127:120],a[119:112],a[111:104],a[103:96]);
assign mcl[87:80]= mixcolumn1231 (a[95:88],a[87:80],a[79:72],a[71:64]);
assign mcl[55:48]= mixcolumn1231 (a[63:56],a[55:48],a[47:40],a[39:32]);
assign mcl[23:16]= mixcolumn1231 (a[31:24],a[23:16],a[15:8],a[7:0]);

assign mcl[111:104]= mixcolumn1123 (a[127:120],a[119:112],a[111:104],a[103:96]);
assign mcl[79:72]= mixcolumn1123 (a[95:88],a[87:80],a[79:72],a[71:64]);
assign mcl[47:40]= mixcolumn1123 (a[63:56],a[55:48],a[47:40],a[39:32]);
assign mcl[15:8]= mixcolumn1123 (a[31:24],a[23:16],a[15:8],a[7:0]);

assign mcl[103:96]= mixcolumn3112 (a[127:120],a[119:112],a[111:104],a[103:96]);
assign mcl[71:64]= mixcolumn3112 (a[95:88],a[87:80],a[79:72],a[71:64]);
assign mcl[39:32]= mixcolumn3112 (a[63:56],a[55:48],a[47:40],a[39:32]);
assign mcl[7:0]= mixcolumn3112 (a[31:24],a[23:16],a[15:8],a[7:0]);
/////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////////////////////

function [7:0] mixcolumn2311;
input [7:0] i1,i2,i3,i4;
begin
temp_var=mult(2,i1)^mult(3,i2)^i3^i4;
mixcolumn2311= final_mc(temp_var);
end
endfunction


/////////////////////////////////////////////////////////////////////////////////////////////////////
function [7:0] mixcolumn1231;
input [7:0] i1,i2,i3,i4;
begin
	temp_var=(i1^mult(2,i2)^mult(3,i3)^i4);
	mixcolumn1231= final_mc(temp_var);
end
endfunction
///////////////////////////////////////////////////////////////////////////////////////



function [7:0] mixcolumn1123;
input [7:0] i1,i2,i3,i4;
begin
temp_var=(i1^i2^mult(2,i3)^mult(3,i4));
mixcolumn1123 = final_mc(temp_var);
end
endfunction
////////////////////////////////////////


function [7:0] mixcolumn3112;
input [7:0] i1,i2,i3,i4;
begin
temp_var=mult(3,i1)^(i2)^i3^mult(2,i4);
mixcolumn3112= final_mc(temp_var);
end
endfunction
//////////////////////////////////////////////////////


function [8:0] mult;
input [1:0] num;
input  [7:0] val;
begin
	if(num == 2) begin
		mult = val << 1; end
	else begin
		mult = (val << 1) ^ val;
	end

end
endfunction
/////////////////////////////

function [7:0] final_mc;
	input [8:0] temp;
begin
		if(indx) begin
			if (temp < 256) begin
					final_mc =temp;  end
				else begin
					final_mc = temp ^ 9'h11b;  end
		end
		else begin
			if (temp[8]) begin
				if((temp ^ (9'hA9 << 1))> 8'hA9) begin 					final_mc = temp ^ (9'hA9 << 1) ^ 8'hA9; end 
				else begin      										final_mc = temp ^ (8'hA9<<1); end 
				end
			else begin
					if(temp >= 8'hA9) begin		final_mc = temp ^ (8'hA9); end
					else begin					final_mc = temp; end
				end
			end

			//$display("Here it is:  %h : %h", temp, final_mc);
	end 
endfunction
/////////////////////////////////
endmodule




