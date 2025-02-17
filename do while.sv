module do_while();

  int i=0;

  initial begin 
    
    do begin 
      $display("the value of i is: %d",i);
      i++;
    end 
      
    while (i<5);
    
  end 
endmodule 
