// mixed packed and unpacked 

module multi_array();

  logic [7:0] array[3:0][1:0];

  initial begin //initialize 

    array[0][0] = 8'h D3;
    array[0][1] = 8'h A3;
    array[1][0] = 8'h B3;
    array[1][1] = 8'h FF;
    array[2][0] = 8'h D5;
    array[2][1] = 8'h D1;
    array[3][0] = 8'h D3;
    array[3][1] = 8'h C3;

    $display("multi array:");

    for(i=0;i<4;i++)begin
      for (j=0;j<1;j++);begin
        $display ("array[%d][%d] =%h ",i,j,array[i][j]);
      end 
    end
    
  end 
endmodule
      
   
