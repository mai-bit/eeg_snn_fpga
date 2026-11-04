`timescale 1ns/1ps
module tb_chain;
 parameter integer CPB=16;
 reg clk=0; always #5 clk=~clk;
 reg rst_n=0, rx=1;
 wire [10:0] addr; wire [31:0] data; wire [3:0] we;
 wire td,fd;
 eeg_pl_top #(.CLKS_PER_BIT(CPB),.HALF_CLKS(CPB/2)) dut
 (.clk(clk),.rst_n(rst_n),.uart_rx(rx),.bram_addr(addr),.bram_data(data),.bram_we(we),.td_matrix_ready(td),.fd_matrix_ready(fd));
 reg [31:0] mem[0:2047];
 integer writes=0, errors=0, i,j; reg [7:0] p[0:31]; reg [7:0] sum;
 always @(posedge clk) if (rst_n && we!=0) begin
   if(we!==4'hf) $fatal(1,"Unexpected write mask");
   mem[addr]<=data; writes<=writes+1;
 end
 task tick(input integer n); repeat(n) @(negedge clk); endtask
 task byte_tx(input [7:0] b);
 integer k; begin rx=0; tick(CPB); for(k=0;k<8;k=k+1) begin rx=b[k]; tick(CPB); end rx=1; tick(CPB); end endtask
 task packet(input integer n,input bit bad);
 integer k; reg [7:0] s; begin
 byte_tx(8'haa); byte_tx(8'haa); byte_tx(8'(n)); s=0;
 for(k=0;k<n;k=k+1) begin byte_tx(p[k]); s=s+p[k]; end
 byte_tx((~s) ^ (bad ? 8'h01:8'h00)); tick(40);
 end endtask
 task raw_tx(input [15:0] value,input bit bad);
 begin p[0]=8'h80;p[1]=2;p[2]=value[15:8];p[3]=value[7:0];packet(4,bad); end endtask
 task check(input bit ok,input string label_text);
 begin if(!ok) begin $display("FAIL %s",label_text);errors=errors+1;end else $display("PASS %s",label_text);end endtask
 initial begin
 if($test$plusargs("trace")) begin $dumpfile("chain.vcd");$dumpvars(0,tb_chain);end
 for(i=0;i<2048;i=i+1) mem[i]=32'hdeadbeef;
 tick(5);rst_n=1;tick(10);
 check(mem[1280]===0,"producer initialized");
 raw_tx(16'hff9c,0);
 check(mem[256]===32'hffffff9c && mem[1280]===1,"negative RAW and producer");
 raw_tx(16'h7fff,0);raw_tx(16'h8000,0);
 check(mem[257]===32'h00007fff && mem[258]===32'hffff8000,"signed boundaries");
 j=writes;raw_tx(16'h1234,1);
 check(writes==j && mem[1280]===3,"bad checksum rejected");
 p[0]=8'h02;p[1]=0;p[2]=8'h83;p[3]=24;
 for(i=0;i<24;i=i+1) p[4+i]=8'(i+1);
 p[28]=4;p[29]=65;p[30]=5;p[31]=45;packet(32,0);
 for(i=0;i<8;i=i+1) check(mem[1281+i]==((i*3+1)*65536+(i*3+2)*256+i*3+3),"band byte order/address");
 check(mem[1289]===32'h412d0001,"status packing");
 raw_tx(16'h0001,0);check(mem[259]===1 && mem[1280]===4,"RAW resumes after band packet");
 for(i=4;i<1030;i=i+1) raw_tx(16'(i),0);
 check(mem[1280]===1030 && mem[256]===1024 && mem[261]===1029 && mem[262]===6,"1024 sample ring wrap");
 check(td===0 && fd===0,"legacy notifications disabled");
 check(mem[1290]===32'hdeadbeef && mem[1291]===32'hdeadbeef,"SNN addresses are not written");
 // A legal RAW DataRow plus quality DataRow: unsupported by fixed parser.
 p[0]=8'h80;p[1]=2;p[2]=0;p[3]=99;p[4]=2;p[5]=0;
 packet(6,0);check(mem[1280]===1030,"document current rejection of variable-layout packet");
 raw_tx(16'd55,0);check(mem[1280]===1031,"parser recovery after unsupported length");
 rst_n=0;tick(5);rst_n=1;tick(10);
 check(mem[1280]===0,"reset restarts producer");
 raw_tx(16'd77,0);check(mem[256]===77 && mem[1280]===1,"acquisition restarts after reset");
 if(errors != 0) $fatal(1,"%0d failures",errors);
 $display("ALL CHECKS PASSED CPB=%0d",CPB);$finish;
 end
 initial begin #3000000000; $fatal(1,"timeout");end
endmodule

