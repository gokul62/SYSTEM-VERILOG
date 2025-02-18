class packet ;
  
  bit[31:0]data;
  local int addr ;

  function void display();
    $display("the value of data =%d and  addr =%d ",data,addr );
  endfunction
  
endclass 

  module local_ex();

    packet pkt ;

    initial begin 

      pkt = new();

      pkt.data = 10;
      pkt.addr = 43;
      pkt.display();

    end 
  endmodule 

//output 

    tr.id = 1;
        |
       *E,CLSNLO (testbench.sv,17|8): Access to local member 'id' in class 'transaction' is not allowed here.


         //local declared in class 

         class packet ;

           bit[31:0] data ;
           local int addr;

           function new();

             data =10;
             addr =43;

           endfunction 

           function void display ();
             $display ("the value of data = %d and addr =%d ", data,addr );
           endfunction 

         endclass 

         module local_ex();

           packet pkt ;

           initial begin
             pkt = new();
             pkt.display();
           end 

         endmodule 

         //output 

         data = 10 and addr =43
             
  
