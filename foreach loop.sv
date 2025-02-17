module foreach_loop();

  int arr[4] = {45,46,47,48};

  initial begin  

    foreach (arr[i]) begin
      $display("arr[%d] = %d",i,arr[i]);
    end 
  end 
endmodule 
      
