module function_ex();

  function compare (input int a,b)

    if(a>b)
      $display("a is greater than b");
    
    else if (a<b)
      $display("a is smaller than b");

    else 
      $display("a is equal to b");
  endfunction 

  initial begin 

    compare(10,10);
    compare(5,3);
    compare(7,9);

  end 
endmodule

//output 

a is equal to b
a is greater than b
a is smaller than b
  
