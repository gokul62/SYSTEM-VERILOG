module mailbox();
  mailbox_mb;
  mb = new (3);

  task process1();

    int value = 5;
    string name = "gokul";
    mb.put(data);
    $display (" the value is =%d", value);
    mb.put(string);
    $display(" the string is =%s",name);

  endtask

  task process2();

    int value;
    string name;
    mb.get(data);
    $display("the value get from task1 = %d "value );
    mb.get(string);
    $display(" the string get from task1 = %d",name );

    endtask

  initial begin 

    fork
    mb.process1();
    mb.process2();
    join 

  end 
endmodule 


    

  
