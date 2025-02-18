class packet ;

  static int data = 0 ;

  function new ();
    data++; // increment the given data 
  endfunction 

endclass 

module static_prop();
 packet pkt[5];
  
  initial begin 
    
        for (i=0;i<0;i++) begin 
    pkt[i] = new (); // memory allocation for each object 
          $display ("object  [i] = %d ",i,pkt[5].data);
              end 

              end 
              endmodule 



              


  
