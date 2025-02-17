//break 

module break_ex();

  int i

  initial begin 
    for (i=0;i<5;i++)begin
      if (i==5)begin
      $display("the breakin loop = %d",i);
               break;//exit when i==5
               end
               $display ("the iteration is %d ",i);
    end 
  end 
endmodule 



//continue 

module continue_example;
    initial begin
        int i;
        for (i = 0; i < 10; i++) begin
            if (i == 5) begin
                $display("Skipping i = %0d", i);
                continue; // Skip this iteration and move to next
            end
            $display("Iteration: %0d", i);
        end
    end
endmodule

             
