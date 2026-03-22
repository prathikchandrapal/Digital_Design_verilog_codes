// Logic Gates using Gate Level model
module gate_logic(a,b, and_out, or_out, nand_out, nor_out, notb_out, xor_out, xnor_out);
  input a,b; 
  output and_out, or_out, nand_out, nor_out, notb_out, xor_out, xnor_out;
  and a1(and_out, a,b);
  or o1(or_out, a,b);
  nand n1(nand_out, a, b);
  nor n2(nor_out, a,b);
  not n3(notb_out, b);
  xor x1(xor_out, a,b);
  xnor x2(xnor_out,a,b);
endmodule



module tb1();
  reg a,b;
  wire and_out, or_out, nand_out, nor_out, notb_out, xor_out, xnor_out;
  gate_logic uut(
    .a(a),
    .b(b),
    .and_out(and_out),
    .or_out(or_out),
    .notb_out(notb_out),
    .nand_out(nand_out),
    .nor_out(nor_out),
    .xor_out(xor_out),
    .xnor_out(xnor_out)
  );
  
  initial 
    begin
      $dumpfile("dump.vcd");  
      $dumpvars;  
      /*$dumpfile tells the simulator to write waveform data to a .vcd file and $dumpvars        tells it to record all signals in the design. After adding these, EPWave will open        automatically and you can view all your gate outputs.*/
      a = 0; b=0; #10
      a = 0; b=1; #10
      a = 1; b=0; #10
      a = 1; b=1; #10
      a = 0; b=0; #10
      $finish;
    end
endmodule

