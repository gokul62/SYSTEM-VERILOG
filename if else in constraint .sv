class packet ;

  rand bit [31:0] value ;
  randc enum {low,high} scale ;

  constraint packet1 { if(scale == high) value >50;
                      else 
                        value < 50;
                      }

endclass 

module if_constraint ();
  packet pkt ;

initial begin 
  pkt = new();

  repeat (3) begin 
    pkt.randomize();
    $display (" scale = %s ,value = %d ", scale,value );
  end 

end 
endmodule 

//output 
scale = LOW, value = 17
scale = LOW, value = 43
scale = HIGH, value = 83
scale = HIGH, value = 61
scale = HIGH, value = 194
    
