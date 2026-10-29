
*/
module  alu4(
    input  [3:0]A,
    input  [3:0]B,
    input  [2:0]OP,
    output reg[3:0]RESULT   
);
always @(*)begin
    case(OP)
    3'b000: RESULT =A+B; //Addition 
    3'b001: RESULT=A-B; //Subtraction
    3'b010:RESULT=A&B; //Bitwise AND 
    3'b011:RESULT =A|B; //Bitwise  OR
    3'b100 :RESULT =A^B;//Bitwise  XOR
    3'b101 :RESULT =(A>B)?4'b0001:4'b0000;
    3'b110:RESULT=(A==B)? 4'b0001: 4'b0000;
    3'b111:RESULT=A<<1;
    //Left  shift 
    


    default:RESULT =4'b0000;
    endcase 
end
endmodule 