//accessing class methods 

class packet;// class name 

  bit[31:0] data; // properties 
  int add;

  task update ( bit[31:0] m_data ,int m_add); //task task_name (input ports )  // task to update properties 
    
     data = m_data ; // assigning input to class variable 
     add = m_add;

  endtask

  function void  print ();//function function_name (input )  //fuction to print the properties 

    $display("the value of data = %d  and add = %d ", pkt.data,pkt.add);

  endfunction 
endclass 


module class_eg();
  
  initial begin 
    packet pkt ; //declare class handle 
    pkt = new(); // allocate mem for object 
    pkt.update (10,5); // update value
    pkt.print (); // print the updated  value 
  end 

endmodule 

// output 

the value of data =10 and add = 5
    
    

    
