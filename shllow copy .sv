class packet;
  bit [31:0] data;
  int addr;

  function new(bit [31:0] data, int addr);
    this.data = data;  // Corrected assignment
    this.addr = addr;
  endfunction
endclass

class another;
  bit [31:0] data_1;
  int addr_1;
  packet pkt;

  function new();
    data_1 = 100;
    addr_1 = 24;
    pkt = new(45, 67);  // Corrected constructor call
  endfunction

  // Copy constructor for deep copy
  function new(another a);
    this.data_1 = a.data_1;
    this.addr_1 = a.addr_1;
    this.pkt = new(a.pkt.data, a.pkt.addr); // Deep copy of packet object
  endfunction

  function void display();
    $display("data_1 = %d, addr_1 = %d", data_1, addr_1);
    $display("pkt.data = %d, pkt.addr = %d", pkt.data, pkt.addr);
  endfunction
endclass

module shallow_copy;
  another an1, an2;

  initial begin
    an1 = new();
    $display("Calling display method using an1");
    an1.display();

    // Use copy constructor to create an2
    an2 = new(an1);
    $display("Copy the value from an1");
    $display("Calling display method using an2");
    an2.display();
    $display("--------------------------------");

    // Modify an1's values
    an1.data_1 = 102;
    an1.addr_1 = 34;
    an1.pkt.data = 108;
    an1.pkt.addr = 109;

    $display("Calling display method using an1");
    an1.display();

    $display("Calling display method using an2");
    an2.display();
  end
endmodule


//output 

Calling display method using an1
data_1 = 100, addr_1 = 24
pkt.data = 45, pkt.addr = 67

Copy the value from an1
Calling display method using an2
data_1 = 100, addr_1 = 24
pkt.data = 45, pkt.addr = 67
--------------------------------


Calling display method using an1
data_1 = 102, addr_1 = 34
pkt.data = 108, pkt.addr = 109


Calling display method using an2
data_1 = 100, addr_1 = 24
pkt.data = 45, pkt.addr = 67


    
  
    
    
    

  
  
    
