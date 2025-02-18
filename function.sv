module function_ex();

  function compare (input int a,b)

    if(a>b)
      $display("a is greater than b");
    
    else if (a<b)
      $display("a is smaller than b");

    else 
      $display("a is equal to b");

    return 1; // this is not mandatory for this code ,this return is using for there is no  match found give 1
    
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


// ex 2 


module func_example;
  
  // Function to add two numbers
  function int add(int a, int b);
    add = a + b;
  endfunction

  initial begin
    int result;
    result = add(5, 10);
    $display("Addition Result: %0d", result);
  end
  
endmodule


//output 

addition result  : 15 
  
