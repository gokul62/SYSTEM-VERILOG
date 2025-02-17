module while_loop();

  int counter =5;

  initial begin 
    while (counter <5) begin 
      $display("counter: %d",counter )
      counter =counter+1 ;
  end 

  end 
endmodule 
  
