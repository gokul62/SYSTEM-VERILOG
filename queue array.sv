module queue_array();

  int queue($);

  initial begin
// adding elements 
    queue.push_back(10);
    queue.push_back(20);
    queue.push_back(30);
    $display("after push back: %p",my_queue);

    //adding front element 

    queue.push_front(5);
    $display("after pop front: %p",my_queue);

    //remove last element 
    queue.pop_back();
    $display("after the pop back: %p",my_queue);

    //remove first element 
    queue.pop_front();
    $display("after the pop front: %p",my_queue);
    

    
             
    
    
    
