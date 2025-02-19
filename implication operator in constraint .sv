class packet 

  rand bit [31:0] value ;
  rand enum {low,hign } scale ;

  constraint packet1 { (scale == high ) -> value > 78;}

endclass 

module implication_constraint ();
  packet pkt ;
  initial begin 
    pkt= new();

    repeat (3) begin 
      pkt.randomize();
      $display (" scale =%s ,value = %d ", pkt.scale,pkt.value );
    end 

  end 
  endmodule

//output 

scale = HIGH, value = 150
scale = HIGH, value = 121
scale = HIGH, value = 192 

  
