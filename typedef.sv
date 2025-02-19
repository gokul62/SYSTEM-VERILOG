class packet2;
  bit [31:0] value = 20; 
endclass

class packet;
  bit [31:0] data;
  int addr;
  packet2 pkt2;

  function new();
    data = 100;
    addr = 10;
    pkt2 = new(); // Correct placement inside the constructor
  endfunction

  function void display();
    $display("display data = %d and addr = %d", data, addr);
    $display("display value = %d", pkt2.value); // Correct reference to value
  endfunction
endclass

module type_def;
  packet pkt1;

  initial begin
    pkt1 = new();
    pkt1.display();
  end
endmodule

//output 

display data = 100 and addr = 10
display value = 20

//without using type def 

class transaction_A;
  bit [31:0] data;
  int id;
  transaction_B tr_B = new();
      
  function void display();
    $display("transaction_A: data = %0d and id = %0d", data, id);
    $display("transaction_B: addr = %0d", tr_B.addr);
  endfunction
endclass

class transaction_B;
  bit [31:0] addr = 200;
endclass

module class_example;
  transaction_A tr_A;
  
  initial begin
    tr_A = new();
   
    tr_A.data = 100;
    tr_A.id = 1;
    tr_A.display();
  end
endmodule

//output 

  transaction_B tr_B = new();
              |
       *E,NOIPRT (testbench.sv,6|14): Unrecognized declaration 'transaction_B' could be an unsupported keyword, a spelling mistake or missing instance port list '()' [SystemVerilog].
  transaction_B tr_B = new();


typedef class transaction_B;

class transaction_A;
  bit [31:0] data;
  int id;
  transaction_B tr_B = new();
      
  function void display();
    $display("transaction_A: data = %0d and id = %0d", data, id);
    $display("transaction_B: addr = %0d", tr_B.addr);
  endfunction
endclass

class transaction_B;
  bit [31:0] addr = 200;
endclass

module class_example;
  transaction_A tr_A;
  
  initial begin
    tr_A = new();
   
    tr_A.data = 100;
    tr_A.id = 1;
    tr_A.display();
  end
endmodule
