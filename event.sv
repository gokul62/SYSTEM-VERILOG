module event_eg ;

  event ev;

  task process1 ();
    $display ("before the event trigger ");
    -> ev; //used to trigger 
    $display ("after the event trigger");
  endtask 

  task process2 ();
    #10  $display("the process 2 started ");
    @e; //used for wait 
    $display ("the process 2 ended");
  endtask

  initial begin 

    fork begin 
      process1 ();
      process2 ();
      join 
    end 

      endmodule 

      //output 

      before the event trigger 
      after the event trigger 
      #10 the process 2 started 
      the process 2 ended 

 // An event is triggered at the same time as waiting for the event trigger
      
      module event_example();
  event e1;
  
  task process_A();
    $display("@%0t: Before triggering event e1", $time);
    ->e1;
    $display("@%0t: After triggering event e1", $time);
  endtask
  
  task process_B();
    $display("@%0t: waiting for the event e1", $time);
    @e1;
    $display("@%0t: event e1 is triggered", $time);
  endtask

  initial begin
    fork
      process_A();
      process_B();
    join
  end
endmodule


      //output 
      @0: Before triggering event e1
@0: After triggering event e1
@0: waiting for the event e1


  //using wait 
module event_example();
  event e1;
  
  task process_A();
    $display("@%0t: Process A: Before triggering event e1", $time);
    ->e1;
    $display("@%0t: Process A: After triggering event e1", $time);
  endtask
  
  task process_B();
    $display("@%0t: Process B: waiting for the event e1 using @", $time);
    @e1;
    $display("@%0t: Process B: event e1 is triggered using @", $time);
  endtask

  task process_C();
    $display("@%0t: Process C: waiting for the event e1 using wait(e1.triggered)", $time);
    wait(e1.triggered); // for wait it not eliminate the process compared to @e
    $display("@%0t: Process C: event e1 is triggered using wait(e1.triggered)", $time);
  endtask
  
  initial begin
    fork
      process_A();
      process_B();
      process_C();
    join
  end
endmodule

      //output 

      @0: Process A: Before triggering event e1
@0: Process A: After triggering event e1
@0: Process B: waiting for the event e1 using @
@0: Process C: waiting for the event e1 using wait(e1.triggered)
@0: Process C: event e1 is triggered using wait(e1.triggered)



  
    
    
