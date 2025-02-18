class parent_trans ;

  bit[31:0] data;

  function void disp_p();
    $display("the value of data is = %d ",data);
  endfunction

endclass 

class child_trans extend parent_trans ;

  int addr ; //properties 

  function void disp_c(); //method 
    $display("the value of addr is =%d ",addr);
  endfunction 

endclass 

module inheritace_eg;

  child_trans c_tr; //handle declaration 
initial begin 
  c_tr =new(); // object mem allocation 
  c_tr.data =10; //value declaring 
  c_tr.addr =10;
  
  c_tr.disp_c(); //child class is accessing method of base class 
  c_tr.disp_p();

end 
endmodule 

//output 
value of data =10
value of addr =10
  
