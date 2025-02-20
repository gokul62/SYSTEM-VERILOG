class packet;

  rand bit [31:0] value1;
  rand bit [31:0] value2;

  constraint value_1 { value1>100,value1<200};
  constraint value_2 { value2>5,value2<8};

  function void pre_randomize();

    $display ("inside the pre ramize ");
   value_2.constraint_mode (0);
  endfunction 

  function void post_randmize(0);

    $display (" inside the post randomize ");
    $display (" value1 =%d and value2 = %d",this.value1,this.value2);

  endfunction

endclass 

  module pre_post ;

    packet pkt ;

    initial begin 
      pkt = new ();
      pkt.pre_randomize();
      pkt.post_randomize();
    end 

  endmodule


//output 

Inside pre_randomize
Inside post_randomize
val1 = 121, val2 = 247
                        
  

                        
    
  
