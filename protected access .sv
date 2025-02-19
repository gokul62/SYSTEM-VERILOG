class packet ;

  bit[31:0] data ;
  int addr ;

  function new ();
    data = 100;
    addr = 20;
  endfunction 

  protected function void display();
    $display (" data =%d ,addr =%d ",data ,addr);
  endfunction 

endclass 

class packet1 extends packet;

int value;

  task do_that ;
    
  value = data*addr;
    display();//access from parent class 
    $display ("the value is = %d ",value );
    
  endtask 

endclass 

module protected_ex

  packet1 pkt ;
  initial begin 
    pkt = new();
    pkt.do_that();
  end 

endmodule 

//output 

data =100 addr = 20
value = 2000


// protected method access outside the class 

class transaction;
  bit [31:0] data;
  int id;

  function new();
    data = 100;
    id = 1;
  endfunction
  
  protected function void display();
    $display("data = %0d and id = %0d", data, id);
  endfunction
endclass

module class_example;
  transaction tr;
  
  initial begin
    tr = new();
    tr.display(); // can not accessed outside class scope
  end
endmodule


//output 
tr.display(); // can not accessed outside class scope
     |
 *E,CLSNPO (testbench.sv,22|13): Access to protected member 'display' in class 'transaction' is not allowed here.
