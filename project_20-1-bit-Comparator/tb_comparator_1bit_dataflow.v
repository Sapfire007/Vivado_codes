module tb_comparator_1bit_dataflow;  
    reg  a, b;  
    wire x, y, z;  

    comparator_1bit_dataflow a1(a, b, x, y, z);  // Positional port mapping  

    initial  
    begin  
        a = 0; b = 0;  // a == b  
        #10;  
        a = 0; b = 1;  // a < b  
        #10;  
        a = 1; b = 0;  // a > b  
        #10;  
        a = 1; b = 1;  // a == b  
    end  
endmodule  
