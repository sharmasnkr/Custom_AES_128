# Custom_AES_128
In this lab, you are to implement the rounds of the Advanced Encryption Standard (AES).
In your code for part a instead of using the Irreducible polynomial as f(x)= x^8+x^4+x^3+x+1, deploy the following
polynomial f(x)=x^7+x^5+x^3+1.
Your testbench should read an input file called “in.txt”. The first line includes a binary value. If the value is ‘1’
the AES encryption (part a) is running. While if the value is ‘0’, the modified AES (the AES with the new
polynomial given in part b) is running. The second line includes the key (in hex) and the third line includes the
plaintext (in hex). Figure 1 shows a sample input file
