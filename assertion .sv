module immediate_assertion;
  int a = 5, b = 10;

  initial begin
    assert (b > a) 
      $display("Assertion Passed: b > a");
    else 
      $fatal("Assertion Failed: b is not greater than a");
  end
endmodule
