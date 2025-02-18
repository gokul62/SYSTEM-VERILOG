class packet #(parameter width = 8 , type a = bit[2:0]) // type is used to change any variable to specific like int ,char ,str 
  bit [(width-1):0] data ;
  a addr ;

  function new ();
    data = 0;
    addr = 0;
  endfunction
  
  function void  display();
    $display ("the value of data =%d and addr = %d ",data, addr);
  endfunction 

endclass 

  module packet ();
    packet pkt1;
    packet #(3,int) pkt2;

    initial begin 
      pkt1 = new() ;
      pkt2 = new();

      pkt1.data = 7;
      pkt1.addr = 15;
      pkt1.display();

      pkt2.data = 7;
      pkt2.addr =15;
      pkt2.display();

    end 
  endmodule 

//output 

The value of data = 7 and addr = 7
The value of data = 7 and addr = 15

      
    
