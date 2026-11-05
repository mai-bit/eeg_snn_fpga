`timescale 1ns/1ps
module tb_goertzel_snn;
reg clk=0;always #5 clk=~clk;
reg rst_n=0,valid=0;reg signed [15:0] raw=0;
wire [1:0] cls;wire cv,fv;wire [6:0] t,a,b;
goertzel_snn dut(.clk(clk),.rst_n(rst_n),.raw_sample(raw),.sample_valid(valid),.class_id(cls),.class_valid(cv),.theta_pct(t),.alpha_pct(a),.beta_pct(b),.feature_valid(fv));
integer i,case_id=0,received=0; real value;
always @(posedge clk) if(fv) $display("SUM case=%0d t=%h a=%h b=%h total=%h",case_id,dut.theta_sum,dut.alpha_sum,dut.beta_sum,dut.total_sum);
always @(posedge clk) if(case_id==2 && dut.state==2 && (dut.bin_idx==0 || dut.bin_idx==6)) $display("POWER bin=%0d q1=%0d q2=%0d p=%0d",dut.bin_idx,dut.q1,dut.q2,dut.pfull);
always @(posedge clk) if(cv) begin
 $display("RESULT case=%0d theta=%0d alpha=%0d beta=%0d class=%0d spikes=%0d/%0d/%0d",case_id,t,a,b,cls,dut.count_t,dut.count_a,dut.count_b);received=received+1;
end
task run_case(input integer id,input real f1,input real f2,input real amp1,input real amp2);
integer n;begin
case_id=id;rst_n=0;repeat(4) @(negedge clk);rst_n=1;
for(n=0;n<430;n=n+1) begin
 value=amp1*$sin(6.283185307179586*f1*n/215.0)+amp2*$sin(6.283185307179586*f2*n/215.0);
 raw=16'($rtoi(value));valid=1;@(negedge clk);valid=0;repeat(3) @(negedge clk);
end
repeat(15000) @(negedge clk);
end endtask
initial begin
run_case(0,0,0,0,0);
run_case(1,6,0,100,0);
run_case(2,10,0,100,0);
run_case(3,20,0,100,0);
run_case(4,10,20,100,50);
run_case(5,10,20,50,100);
run_case(6,35,0,100,0);
if(received!=7) $fatal(1,"missing outputs %0d",received);
$finish;end
initial begin #5000000;$fatal(1,"timeout");end
endmodule
