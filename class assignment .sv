class packet ;

  bit[31:0] data;
endclass 

module class_assignment ;
initial begin 
  packet pkt;
  pkt = new();

  pkt.data = 10 
  $display("data = %d",pkt.data);
  end 
endmodule

// multiple instance 

class packet 

  bit [31:0] data;
endclass 

module multi_handle();

  initial begin 
     packet pkt1;

    pkt1 = new();
    pkt2 = pkt1;

    pkt1.data = 10;

    $display("data 1 = %d ", pkt1.data);
    $display ("data 2 = %d ",pkt2.data );

    pkt2.data = 125;

    $display ("data 3 =%d",pkt2.data);
    $display ("data 4 =%d",pkt2.data );

  end 
endmodule 

// output 

data 1 = 10
data 2 = 10
data 3 = 125
data 4 = 125 
    
