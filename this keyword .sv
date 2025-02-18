class packet;

  bit [31:0] data ;
  int addr;

  function new (bit [31:0] data,addr);
    this.data = data // instead of this declare this data = data means it gives output zero 
    this.addr = addr ;
  endfunction 

endclass 

  module this_keyword_ex;
    packet pkt ;
    
    initial begin 
    pkt = new (10,30);
    $display ("the value of data = %d and addr = %d ", pkt.data ,pkt.addr );
    end 
    
  endmodule 
