module array_multiplier(
input signed [3:0] a,
input [3:0] b,
input clk,
input rst,
input start,
output signed [7:0] product
);
reg signed [3:0] M,Q; //M = -ve number, Q = +ve number
reg q_1;
reg [3:0] state;
reg signed [3:0] A;
reg [3:0] count;
parameter s0 = 4'd0, s1 = 4'd1, s2 = 4'd2, s3 = 4'd3, s4 = 4'd4, s5 = 4'd5, s6 = 4'd6;
always@(posedge clk or posedge rst) begin
if(rst) begin
M = 0;
Q = 0;
q_1 = 0;
A = 0;
state = s0;
count = 4'd4;
end

else begin
case (state)
s0: begin
if (start) state <= s1;
else state <= s0;
end
s1: begin
A <= 4'd0;
q_1 <= 0;
M <= a;
Q <= b;
count <= 4'd4;
state <= s2;
end
s2: begin
case ({Q[0], q_1})
2'b01: state <= s4;
2'b10: state <= s5;
default: state <= s3;
endcase
end
s3: begin
{A,Q,q_1} <= $signed({A,Q,q_1}) >>> 1;
count <= count - 1;
if (count == 1) state <= s6; //cause count starts from 4
else state <= s2;
end
s4: begin
A <= A + M;
state <= s3;
end
s5: begin
A <= A - M;
state <= s3;
end
s6: begin
state <= s6;
end
endcase
end
end
assign product = $signed({A,Q});
endmodule
