// fork join 

module fork_join ();

  initial begin 

    fork  
      //process 1 
    begin
      $display ("the process 1 start %t ",$time );
      #10
      $display(" the process 1 is end %t",$time );
    end 

      //process 2
      begin 
        $display ("the process 2 is start %t",$time );
        #10
        $display ("the process 2 is end %t",$time );
      end 
    join 
    #10 $display ("fork join completed at time %t",$time );
  end 
endmodule 

//fork join any 

module fork_join_any_example;

  initial begin
    fork
      begin // process A
        $display("Process A started at time = %0t", $time);
        #10;
        $display("Process A completed at time = %0t", $time);
      end
      begin // process B
        $display("Process B started at time = %0t", $time);
        #15;
        $display("Process B completed at time = %0t", $time);
      end
      begin // process C
        $display("Process C started at time = %0t", $time);
        #20;
        $display("Process C completed at time = %0t", $time);
      end
    join_any
    $display("fork-join_any completed at time = %0t", $time);
  end
endmodule


//output 

Process A started at time = 0
Process B started at time = 0
Process C started at time = 0
Process A completed at time = 10
fork-join_any completed at time = 10
Process B completed at time = 15
Process C completed at time = 20


//fork join none 

module fork_join_none_example;
  initial begin
    fork
      begin // process A
        $display("Process A started at time = %0t", $time);
        #10;
        $display("Process A completed at time = %0t", $time);
      end
      begin // process B
        $display("Process B started at time = %0t", $time);
        #15;
        $display("Process B completed at time = %0t", $time);
      end
      begin // process C
        $display("Process C started at time = %0t", $time);
        #20;
        $display("Process C completed at time = %0t", $time);
      end
    join_none
    $display("fork-join_none completed at time = %0t", $time);
  end
endmodule

//output 

fork-join_none completed at time = 0
Process A started at time = 0
Process B started at time = 0
Process C started at time = 0
Process A completed at time = 10
Process B completed at time = 15
Process C completed at time = 20
      
  
