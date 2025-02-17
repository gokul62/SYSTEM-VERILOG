module packed_static_array ();

  logic[7:0]my_array[4:0];

  initial begin

    my_array[0] = 8'h A1;
    my_array[1] = 8'h A2;
    my_array[2] = 8'h A3;
    my_array[3] = 8'h A4;
    my_array[4] = 8'h A5;

    $display ("THE STATIC ARRAY ELEMENTS :");

    for (i=0;i<5;i++)
      begin 
        $display("my_array[%d] = %h ",i,my_array[i]);
      end 
  end 
endmodule
         
