module static_array;

  int my_array[5] = {10,20,30,40,50};

  initial begin

    $display("my array elements:");

    for (i=0;i<5;i++)
      begin
      $display("my_array[%d] =%d",i,my_array[i]);
      end
    
  end 
endmodule
