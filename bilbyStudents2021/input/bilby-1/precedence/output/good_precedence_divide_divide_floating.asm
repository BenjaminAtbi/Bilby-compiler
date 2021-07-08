        Jump         $$main                    
        DLabel       $eat-location-zero        
        DataZ        8                         
        DLabel       $print-format-char        
        DataC        37                        %% "%c"
        DataC        99                        
        DataC        0                         
        DLabel       $print-format-integer     
        DataC        37                        %% "%d"
        DataC        100                       
        DataC        0                         
        DLabel       $print-format-floating    
        DataC        37                        %% "%f"
        DataC        102                       
        DataC        0                         
        DLabel       $print-format-string      
        DataC        37                        %% "%s"
        DataC        115                       
        DataC        0                         
        DLabel       $print-format-boolean     
        DataC        37                        %% "%s"
        DataC        115                       
        DataC        0                         
        DLabel       $print-format-newline     
        DataC        10                        %% "\n"
        DataC        0                         
        DLabel       $print-format-space       
        DataC        32                        %% " "
        DataC        0                         
        DLabel       $boolean-true-string      
        DataC        116                       %% "true"
        DataC        114                       
        DataC        117                       
        DataC        101                       
        DataC        0                         
        DLabel       $boolean-false-string     
        DataC        102                       %% "false"
        DataC        97                        
        DataC        108                       
        DataC        115                       
        DataC        101                       
        DataC        0                         
        DLabel       $errors-general-message   
        DataC        82                        %% "Runtime error: %s\n"
        DataC        117                       
        DataC        110                       
        DataC        116                       
        DataC        105                       
        DataC        109                       
        DataC        101                       
        DataC        32                        
        DataC        101                       
        DataC        114                       
        DataC        114                       
        DataC        111                       
        DataC        114                       
        DataC        58                        
        DataC        32                        
        DataC        37                        
        DataC        115                       
        DataC        10                        
        DataC        0                         
        Label        $$general-runtime-error   
        PushD        $errors-general-message   
        Printf                                 
        Halt                                   
        DLabel       $errors-int-divide-by-zero 
        DataC        105                       %% "integer divide by zero"
        DataC        110                       
        DataC        116                       
        DataC        101                       
        DataC        103                       
        DataC        101                       
        DataC        114                       
        DataC        32                        
        DataC        100                       
        DataC        105                       
        DataC        118                       
        DataC        105                       
        DataC        100                       
        DataC        101                       
        DataC        32                        
        DataC        98                        
        DataC        121                       
        DataC        32                        
        DataC        122                       
        DataC        101                       
        DataC        114                       
        DataC        111                       
        DataC        0                         
        Label        $$i-divide-by-zero        
        PushD        $errors-int-divide-by-zero 
        Jump         $$general-runtime-error   
        DLabel       $errors-float-divide-by-zero 
        DataC        102                       %% "float divide by zero"
        DataC        108                       
        DataC        111                       
        DataC        97                        
        DataC        116                       
        DataC        32                        
        DataC        100                       
        DataC        105                       
        DataC        118                       
        DataC        105                       
        DataC        100                       
        DataC        101                       
        DataC        32                        
        DataC        98                        
        DataC        121                       
        DataC        32                        
        DataC        122                       
        DataC        101                       
        DataC        114                       
        DataC        111                       
        DataC        0                         
        Label        $$f-divide-by-zero        
        PushD        $errors-float-divide-by-zero 
        Jump         $$general-runtime-error   
        DLabel       $usable-memory-start      
        DLabel       $global-memory-block      
        DataZ        0                         
        Label        $$main                    
        Label        -compare-2-start          
        Label        -compare-1-start          
        PushF        6.200000                  
        PushF        7.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        5.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-4-start          
        Label        -compare-3-start          
        PushF        8.900000                  
        PushF        1.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        3.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-6-start          
        Label        -compare-5-start          
        PushF        8.800000                  
        PushF        6.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        2.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-8-start          
        Label        -compare-7-start          
        PushF        4.600000                  
        PushF        9.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        6.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-10-start         
        Label        -compare-9-start          
        PushF        2.700000                  
        PushF        5.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        2.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-12-start         
        Label        -compare-11-start         
        PushF        5.300000                  
        PushF        1.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        5.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-14-start         
        Label        -compare-13-start         
        PushF        4.900000                  
        PushF        7.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        8.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-16-start         
        Label        -compare-15-start         
        PushF        2.400000                  
        PushF        3.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        6.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-18-start         
        Label        -compare-17-start         
        PushF        3.300000                  
        PushF        5.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        2.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-20-start         
        Label        -compare-19-start         
        PushF        1.200000                  
        PushF        5.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        5.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-22-start         
        Label        -compare-21-start         
        PushF        4.600000                  
        PushF        7.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        3.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-24-start         
        Label        -compare-23-start         
        PushF        1.500000                  
        PushF        3.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        8.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-26-start         
        Label        -compare-25-start         
        PushF        2.100000                  
        PushF        1.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        1.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-28-start         
        Label        -compare-27-start         
        PushF        7.500000                  
        PushF        4.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        8.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-30-start         
        Label        -compare-29-start         
        PushF        6.200000                  
        PushF        1.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        4.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-32-start         
        Label        -compare-31-start         
        PushF        7.100000                  
        PushF        4.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        7.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-34-start         
        Label        -compare-33-start         
        PushF        3.900000                  
        PushF        3.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        5.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-36-start         
        Label        -compare-35-start         
        PushF        6.200000                  
        PushF        6.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        6.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-38-start         
        Label        -compare-37-start         
        PushF        9.600000                  
        PushF        3.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        2.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-40-start         
        Label        -compare-39-start         
        PushF        8.500000                  
        PushF        7.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        9.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-42-start         
        Label        -compare-41-start         
        PushF        4.800000                  
        PushF        9.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        1.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-44-start         
        Label        -compare-43-start         
        PushF        1.400000                  
        PushF        6.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        3.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-46-start         
        Label        -compare-45-start         
        PushF        6.100000                  
        PushF        3.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        4.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-48-start         
        Label        -compare-47-start         
        PushF        5.900000                  
        PushF        6.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        3.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-51-start         
        Label        -compare-50-start         
        Label        -compare-49-start         
        PushF        7.200000                  
        PushF        9.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        4.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        3.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-54-start         
        Label        -compare-53-start         
        Label        -compare-52-start         
        PushF        9.300000                  
        PushF        9.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        5.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        2.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-57-start         
        Label        -compare-56-start         
        Label        -compare-55-start         
        PushF        1.900000                  
        PushF        7.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        6.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        8.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-60-start         
        Label        -compare-59-start         
        Label        -compare-58-start         
        PushF        3.500000                  
        PushF        7.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        2.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        6.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-63-start         
        Label        -compare-62-start         
        Label        -compare-61-start         
        PushF        8.100000                  
        PushF        9.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        4.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        4.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-66-start         
        Label        -compare-65-start         
        Label        -compare-64-start         
        PushF        9.900000                  
        PushF        2.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        7.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        8.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-69-start         
        Label        -compare-68-start         
        Label        -compare-67-start         
        PushF        3.400000                  
        PushF        8.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        5.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        4.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-72-start         
        Label        -compare-71-start         
        Label        -compare-70-start         
        PushF        5.100000                  
        PushF        8.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        7.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        7.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-75-start         
        Label        -compare-74-start         
        Label        -compare-73-start         
        PushF        3.100000                  
        PushF        9.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        9.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        2.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-78-start         
        Label        -compare-77-start         
        Label        -compare-76-start         
        PushF        2.100000                  
        PushF        6.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        9.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        3.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-81-start         
        Label        -compare-80-start         
        Label        -compare-79-start         
        PushF        3.700000                  
        PushF        5.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        8.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        7.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-84-start         
        Label        -compare-83-start         
        Label        -compare-82-start         
        PushF        2.600000                  
        PushF        1.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        2.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        6.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-87-start         
        Label        -compare-86-start         
        Label        -compare-85-start         
        PushF        3.900000                  
        PushF        2.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        3.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        6.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-90-start         
        Label        -compare-89-start         
        Label        -compare-88-start         
        PushF        5.100000                  
        PushF        3.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        9.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        9.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-93-start         
        Label        -compare-92-start         
        Label        -compare-91-start         
        PushF        7.600000                  
        PushF        9.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        5.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        1.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-96-start         
        Label        -compare-95-start         
        Label        -compare-94-start         
        PushF        6.600000                  
        PushF        4.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        6.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        7.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-99-start         
        Label        -compare-98-start         
        Label        -compare-97-start         
        PushF        2.800000                  
        PushF        4.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        6.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        5.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-102-start        
        Label        -compare-101-start        
        Label        -compare-100-start        
        PushF        9.300000                  
        PushF        3.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        5.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        7.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-105-start        
        Label        -compare-104-start        
        Label        -compare-103-start        
        PushF        6.200000                  
        PushF        4.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        9.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        4.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-108-start        
        Label        -compare-107-start        
        Label        -compare-106-start        
        PushF        3.000000                  
        PushF        7.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        3.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        3.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-111-start        
        Label        -compare-110-start        
        Label        -compare-109-start        
        PushF        2.400000                  
        PushF        8.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        1.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        3.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-114-start        
        Label        -compare-113-start        
        Label        -compare-112-start        
        PushF        3.900000                  
        PushF        4.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        9.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        2.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-117-start        
        Label        -compare-116-start        
        Label        -compare-115-start        
        PushF        6.200000                  
        PushF        8.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        9.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        8.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-120-start        
        Label        -compare-119-start        
        Label        -compare-118-start        
        PushF        6.800000                  
        PushF        8.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        9.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        2.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Halt                                   
