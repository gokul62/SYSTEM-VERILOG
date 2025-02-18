module task_ex();

  task compare (input int a,b);
    if (a>b)
      $display("a is greater than b");
    else if (a<b)
      $display ("a is smaller than b");
    else 
      $display ("a equal to b");
  endtask 

  initial begin 
    compare (10,9);
  end 

endmodule 

//output 

a is greater than b
