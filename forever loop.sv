module forever_loop();

  int i = 0;

  initial begin 

    forever begin 
      $display("iteration : %d",i);
      i++;

      #5; //used to control instant op

      if (i==10) //exit when the i get 10 
      break;

    end 
  end 
endmodule 
