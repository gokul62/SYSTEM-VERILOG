module if_else_if();

  int num=0;

  initial begin 
    if(num>0) begin
      $display("positive");
    end 
    else if (num<0)begin 
      $display("negative ");
    end 
      else begin 
        $display("zero");
      end 
  end 
endmodule 
