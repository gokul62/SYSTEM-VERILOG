module associative ();

  string my_array[int];

  initial begin 
    my_array[100] = relaince ;
    my_array[105] = adani;
    my_array[110] =hcl;


    $display("the associative elements :");
    foreach(my_array[key])begin 
      $display("key: = %d ,value : = %s",key,my_array[key]);
    end 
  end 
endmodule 
      
  
