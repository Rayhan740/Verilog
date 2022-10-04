module Exercise(A,B,C);
  input A,B;
  output C;
  wire w1,w2;
    
  not not1(w1,B);
  or or1(w2,B,w1);
  or or2(C,A,w2);
endmodule

module main;
  reg A,B;
  wire C;
  
  //Exercise exer1(C,A,B);
    Exercise exer1 (.C(C), .A(A), .B(B));

  initial 
      begin
      A = 0;
      B = 0;
      #5;
      $display("Result = ",C);
    end
endmodule
