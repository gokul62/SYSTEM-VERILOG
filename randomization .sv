// randomization and constraint 

`define starting_range = 40;
`define ending_range = 100;

class paket #(parameter int p1 = 10 ,p2 = 20 );

  rand bit [31:0] value1;
  rand bit [31:0] value2;
  randc bit [31:0] value3;
  randc bit [31:0] value4;
  rand bit [31:0] value5;
  rand bit [31:0] value6;
  rand bit [31:0] value7;

 constraint value1_c {value1 inside {[10:20]};} // constant value based range
  constraint value2_c {value2 inside {40,70, 80};} // Set of values
  constraint value3_c {value3 inside {[10:20], 21, 23, [25:30], 40, 70, 80};} // Mix
  constraint value4_c {!(value4 inside {[100:200]});} // Inverted Range
  constraint value5_c {value5 inside {[value1:value2]};} // range using variable 
  constraint value6_c {value6 inside {[`starting_range:`ending_range]};} // Define based range
  constraint value7_c {value7 inside {[p1:p2]};} // parameter based range
endclass

module randomization()

  packet #(100,200)pkt ;

  initial begin 

    pkt = new ;
    repeat(5) begin 
    pkt.randomize();
      $display ("value1=%d,valu2=%d,value3=%d,value4=%d,value5=%d,value6=%d,value7=%d",pkt.value1,pkt.value2,pkt.value3,pkt.value4.pkt.value5,pkt.value6,pkt.value7);
    end 

  end 
endmodule 
    
