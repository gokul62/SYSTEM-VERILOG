module dynamic_array();

  int my_array[]; // declaration

    initial begin 
        my_array =new(5);  //mem allocation 
    end 

    //initialization 
     initial begin 
        for (i=0;i<5;i++)begin 
            my_array[i] = (i+1)*10;
        end 

         $display("the array elements:");
         for (i=0;i<5;i++)begin 
             $display("my_array[%d] =%h ",i,my_array[i]);
         end 

     end 
endmodule 
              
              
         
        
        
    

  
