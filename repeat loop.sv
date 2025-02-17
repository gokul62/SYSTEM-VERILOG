module repeat_loop();

  int i=0;

  initial begin 

    repeat (4) begin
      $display ("the value is : %d",i);
    #5;
    i++;
  end 
    
  end 
  
endmodule 
    
