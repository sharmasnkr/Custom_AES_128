module sbox(s_in,s_out);
    
input  [7:0] s_in;
output [7:0] s_out;
    
reg [7:0] s_out;
    
    
   always @(s_in)
    case (s_in)
      8'h00: s_out=8'h63;
	   8'h01: s_out=8'h7c;
	   8'h02: s_out=8'h77;
	   8'h03: s_out=8'h7b;
	   8'h04: s_out=8'hf2;
	   8'h05: s_out=8'h6b;
	   8'h06: s_out=8'h6f;
	   8'h07: s_out=8'hc5;
	   8'h08: s_out=8'h30;
	   8'h09: s_out=8'h01;
	   8'h0a: s_out=8'h67;
	   8'h0b: s_out=8'h2b;
	   8'h0c: s_out=8'hfe;
	   8'h0d: s_out=8'hd7;
	   8'h0e: s_out=8'hab;
	   8'h0f: s_out=8'h76;
	   8'h10: s_out=8'hca;
	   8'h11: s_out=8'h82;
	   8'h12: s_out=8'hc9;
	   8'h13: s_out=8'h7d;
	   8'h14: s_out=8'hfa;
	   8'h15: s_out=8'h59;
	   8'h16: s_out=8'h47;
	   8'h17: s_out=8'hf0;
	   8'h18: s_out=8'had;
	   8'h19: s_out=8'hd4;
	   8'h1a: s_out=8'ha2;
	   8'h1b: s_out=8'haf;
	   8'h1c: s_out=8'h9c;
	   8'h1d: s_out=8'ha4;
	   8'h1e: s_out=8'h72;
	   8'h1f: s_out=8'hc0;
	   8'h20: s_out=8'hb7;
	   8'h21: s_out=8'hfd;
	   8'h22: s_out=8'h93;
	   8'h23: s_out=8'h26;
	   8'h24: s_out=8'h36;
	   8'h25: s_out=8'h3f;
	   8'h26: s_out=8'hf7;
	   8'h27: s_out=8'hcc;
	   8'h28: s_out=8'h34;
	   8'h29: s_out=8'ha5;
	   8'h2a: s_out=8'he5;
	   8'h2b: s_out=8'hf1;
	   8'h2c: s_out=8'h71;
	   8'h2d: s_out=8'hd8;
	   8'h2e: s_out=8'h31;
	   8'h2f: s_out=8'h15;
	   8'h30: s_out=8'h04;
	   8'h31: s_out=8'hc7;
	   8'h32: s_out=8'h23;
	   8'h33: s_out=8'hc3;
	   8'h34: s_out=8'h18;
	   8'h35: s_out=8'h96;
	   8'h36: s_out=8'h05;
	   8'h37: s_out=8'h9a;
	   8'h38: s_out=8'h07;
	   8'h39: s_out=8'h12;
	   8'h3a: s_out=8'h80;
	   8'h3b: s_out=8'he2;
	   8'h3c: s_out=8'heb;
	   8'h3d: s_out=8'h27;
	   8'h3e: s_out=8'hb2;
	   8'h3f: s_out=8'h75;
	   8'h40: s_out=8'h09;
	   8'h41: s_out=8'h83;
	   8'h42: s_out=8'h2c;
	   8'h43: s_out=8'h1a;
	   8'h44: s_out=8'h1b;
	   8'h45: s_out=8'h6e;
	   8'h46: s_out=8'h5a;
	   8'h47: s_out=8'ha0;
	   8'h48: s_out=8'h52;
	   8'h49: s_out=8'h3b;
	   8'h4a: s_out=8'hd6;
	   8'h4b: s_out=8'hb3;
	   8'h4c: s_out=8'h29;
	   8'h4d: s_out=8'he3;
	   8'h4e: s_out=8'h2f;
	   8'h4f: s_out=8'h84;
	   8'h50: s_out=8'h53;
	   8'h51: s_out=8'hd1;
	   8'h52: s_out=8'h00;
	   8'h53: s_out=8'hed;
	   8'h54: s_out=8'h20;
	   8'h55: s_out=8'hfc;
	   8'h56: s_out=8'hb1;
	   8'h57: s_out=8'h5b;
	   8'h58: s_out=8'h6a;
	   8'h59: s_out=8'hcb;
	   8'h5a: s_out=8'hbe;
	   8'h5b: s_out=8'h39;
	   8'h5c: s_out=8'h4a;
	   8'h5d: s_out=8'h4c;
	   8'h5e: s_out=8'h58;
	   8'h5f: s_out=8'hcf;
	   8'h60: s_out=8'hd0;
	   8'h61: s_out=8'hef;
	   8'h62: s_out=8'haa;
	   8'h63: s_out=8'hfb;
	   8'h64: s_out=8'h43;
	   8'h65: s_out=8'h4d;
	   8'h66: s_out=8'h33;
	   8'h67: s_out=8'h85;
	   8'h68: s_out=8'h45;
	   8'h69: s_out=8'hf9;
	   8'h6a: s_out=8'h02;
	   8'h6b: s_out=8'h7f;
	   8'h6c: s_out=8'h50;
	   8'h6d: s_out=8'h3c;
	   8'h6e: s_out=8'h9f;
	   8'h6f: s_out=8'ha8;
	   8'h70: s_out=8'h51;
	   8'h71: s_out=8'ha3;
	   8'h72: s_out=8'h40;
	   8'h73: s_out=8'h8f;
	   8'h74: s_out=8'h92;
	   8'h75: s_out=8'h9d;
	   8'h76: s_out=8'h38;
	   8'h77: s_out=8'hf5;
	   8'h78: s_out=8'hbc;
	   8'h79: s_out=8'hb6;
	   8'h7a: s_out=8'hda;
	   8'h7b: s_out=8'h21;
	   8'h7c: s_out=8'h10;
	   8'h7d: s_out=8'hff;
	   8'h7e: s_out=8'hf3;
	   8'h7f: s_out=8'hd2;
	   8'h80: s_out=8'hcd;
	   8'h81: s_out=8'h0c;
	   8'h82: s_out=8'h13;
	   8'h83: s_out=8'hec;
	   8'h84: s_out=8'h5f;
	   8'h85: s_out=8'h97;
	   8'h86: s_out=8'h44;
	   8'h87: s_out=8'h17;
	   8'h88: s_out=8'hc4;
	   8'h89: s_out=8'ha7;
	   8'h8a: s_out=8'h7e;
	   8'h8b: s_out=8'h3d;
	   8'h8c: s_out=8'h64;
	   8'h8d: s_out=8'h5d;
	   8'h8e: s_out=8'h19;
	   8'h8f: s_out=8'h73;
	   8'h90: s_out=8'h60;
	   8'h91: s_out=8'h81;
	   8'h92: s_out=8'h4f;
	   8'h93: s_out=8'hdc;
	   8'h94: s_out=8'h22;
	   8'h95: s_out=8'h2a;
	   8'h96: s_out=8'h90;
	   8'h97: s_out=8'h88;
	   8'h98: s_out=8'h46;
	   8'h99: s_out=8'hee;
	   8'h9a: s_out=8'hb8;
	   8'h9b: s_out=8'h14;
	   8'h9c: s_out=8'hde;
	   8'h9d: s_out=8'h5e;
	   8'h9e: s_out=8'h0b;
	   8'h9f: s_out=8'hdb;
	   8'ha0: s_out=8'he0;
	   8'ha1: s_out=8'h32;
	   8'ha2: s_out=8'h3a;
	   8'ha3: s_out=8'h0a;
	   8'ha4: s_out=8'h49;
	   8'ha5: s_out=8'h06;
	   8'ha6: s_out=8'h24;
	   8'ha7: s_out=8'h5c;
	   8'ha8: s_out=8'hc2;
	   8'ha9: s_out=8'hd3;
	   8'haa: s_out=8'hac;
	   8'hab: s_out=8'h62;
	   8'hac: s_out=8'h91;
	   8'had: s_out=8'h95;
	   8'hae: s_out=8'he4;
	   8'haf: s_out=8'h79;
	   8'hb0: s_out=8'he7;
	   8'hb1: s_out=8'hc8;
	   8'hb2: s_out=8'h37;
	   8'hb3: s_out=8'h6d;
	   8'hb4: s_out=8'h8d;
	   8'hb5: s_out=8'hd5;
	   8'hb6: s_out=8'h4e;
	   8'hb7: s_out=8'ha9;
	   8'hb8: s_out=8'h6c;
	   8'hb9: s_out=8'h56;
	   8'hba: s_out=8'hf4;
	   8'hbb: s_out=8'hea;
	   8'hbc: s_out=8'h65;
	   8'hbd: s_out=8'h7a;
	   8'hbe: s_out=8'hae;
	   8'hbf: s_out=8'h08;
	   8'hc0: s_out=8'hba;
	   8'hc1: s_out=8'h78;
	   8'hc2: s_out=8'h25;
	   8'hc3: s_out=8'h2e;
	   8'hc4: s_out=8'h1c;
	   8'hc5: s_out=8'ha6;
	   8'hc6: s_out=8'hb4;
	   8'hc7: s_out=8'hc6;
	   8'hc8: s_out=8'he8;
	   8'hc9: s_out=8'hdd;
	   8'hca: s_out=8'h74;
	   8'hcb: s_out=8'h1f;
	   8'hcc: s_out=8'h4b;
	   8'hcd: s_out=8'hbd;
	   8'hce: s_out=8'h8b;
	   8'hcf: s_out=8'h8a;
	   8'hd0: s_out=8'h70;
	   8'hd1: s_out=8'h3e;
	   8'hd2: s_out=8'hb5;
	   8'hd3: s_out=8'h66;
	   8'hd4: s_out=8'h48;
	   8'hd5: s_out=8'h03;
	   8'hd6: s_out=8'hf6;
	   8'hd7: s_out=8'h0e;
	   8'hd8: s_out=8'h61;
	   8'hd9: s_out=8'h35;
	   8'hda: s_out=8'h57;
	   8'hdb: s_out=8'hb9;
	   8'hdc: s_out=8'h86;
	   8'hdd: s_out=8'hc1;
	   8'hde: s_out=8'h1d;
	   8'hdf: s_out=8'h9e;
	   8'he0: s_out=8'he1;
	   8'he1: s_out=8'hf8;
	   8'he2: s_out=8'h98;
	   8'he3: s_out=8'h11;
	   8'he4: s_out=8'h69;
	   8'he5: s_out=8'hd9;
	   8'he6: s_out=8'h8e;
	   8'he7: s_out=8'h94;
	   8'he8: s_out=8'h9b;
	   8'he9: s_out=8'h1e;
	   8'hea: s_out=8'h87;
	   8'heb: s_out=8'he9;
	   8'hec: s_out=8'hce;
	   8'hed: s_out=8'h55;
	   8'hee: s_out=8'h28;
	   8'hef: s_out=8'hdf;
	   8'hf0: s_out=8'h8c;
	   8'hf1: s_out=8'ha1;
	   8'hf2: s_out=8'h89;
	   8'hf3: s_out=8'h0d;
	   8'hf4: s_out=8'hbf;
	   8'hf5: s_out=8'he6;
	   8'hf6: s_out=8'h42;
	   8'hf7: s_out=8'h68;
	   8'hf8: s_out=8'h41;
	   8'hf9: s_out=8'h99;
	   8'hfa: s_out=8'h2d;
	   8'hfb: s_out=8'h0f;
	   8'hfc: s_out=8'hb0;
	   8'hfd: s_out=8'h54;
	   8'hfe: s_out=8'hbb;
	   8'hff: s_out=8'h16;
	endcase

endmodule