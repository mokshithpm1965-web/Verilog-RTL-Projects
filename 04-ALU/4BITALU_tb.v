module  alu4_tb;

 reg[3:0]A;
 reg[3:0]B;
 reg[2:0]OP;
 wire[3:0]RESULT;


 alu4 dut(
    .A(A),
    .B(B),
    .OP(OP),
    .RESULT(RESULT)
 );
 //Task  to check the  expected result  
 task check_result;
 input[3:0] expected;
 begin
    #1;
    if(RESULT ===  expected )
 begin 
    $display("FAIL: OP=%b  A=%b  B=%b  RESULT =%B  EXPECTED =%b",OP,A,B,RESULT, expected );
 end 
 end
 end
 endtask

 initial begin 
    $dumpfile("alu4.vcd");
    $dumpvars("0, alu4_tb");

//Test 1: Addition 
A=4'd5;B=4'd3;OP=3'b000;
check_result(4'd8);

//Test 2
A=4'd9;B=4'd4;OP=3'b001;as
check_result(4'd5);

//Test 3 Bitwise  AND
A=4'b1010;B=4'1100;OP=3'b010
check_result(4'b1000);

//test4 bitwise  or
A=4'b1010;B=4'b1100;OP=3'b011;
check_result(4'b1110);

//test5:Bitwise  XOR 
A=4'b1010; B =4'b1100 ; 0P =3'b100
check_result(4'b0110);

//test6: Greater -than comparison 
A=4'd9;B=4'd4;OP=3'b101;
check_result(4'b0001);
//Test 7:Equality comparison 
A =4'd6 ; B=4'd6 ;OP=3'b110 ;
 check_result(4'b0110)l;
 $display("ALL  8  ALU  tests   comppleted.");
 $finish;
 end
 endmodule 

