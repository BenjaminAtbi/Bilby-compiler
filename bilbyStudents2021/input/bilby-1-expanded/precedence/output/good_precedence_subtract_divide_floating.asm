        Label        -mem-manager-initialize   
        DLabel       $heap-start-ptr           
        DataZ        4                         
        DLabel       $heap-after-ptr           
        DataZ        4                         
        DLabel       $heap-first-free          
        DataZ        4                         
        DLabel       $mmgr-newblock-block      
        DataZ        4                         
        DLabel       $mmgr-newblock-size       
        DataZ        4                         
        PushD        $heap-memory              
        Duplicate                              
        PushD        $heap-start-ptr           
        Exchange                               
        StoreI                                 
        PushD        $heap-after-ptr           
        Exchange                               
        StoreI                                 
        PushI        0                         
        PushD        $heap-first-free          
        Exchange                               
        StoreI                                 
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
        DLabel       $print-format-open-square 
        DataC        91                        %% "["
        DataC        0                         
        DLabel       $print-format-close-square 
        DataC        93                        %% "]"
        DataC        0                         
        DLabel       $print-format-comma       
        DataC        44                        %% ","
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
        DLabel       $array-out-of-bounds      
        DataC        97                        %% "array index out of bounds"
        DataC        114                       
        DataC        114                       
        DataC        97                        
        DataC        121                       
        DataC        32                        
        DataC        105                       
        DataC        110                       
        DataC        100                       
        DataC        101                       
        DataC        120                       
        DataC        32                        
        DataC        111                       
        DataC        117                       
        DataC        116                       
        DataC        32                        
        DataC        111                       
        DataC        102                       
        DataC        32                        
        DataC        98                        
        DataC        111                       
        DataC        117                       
        DataC        110                       
        DataC        100                       
        DataC        115                       
        DataC        0                         
        Label        $$array-out-of-bounds     
        PushD        $array-out-of-bounds      
        Jump         $$general-runtime-error   
        DLabel       $array-negative-length    
        DataC        110                       %% "negative length given for array"
        DataC        101                       
        DataC        103                       
        DataC        97                        
        DataC        116                       
        DataC        105                       
        DataC        118                       
        DataC        101                       
        DataC        32                        
        DataC        108                       
        DataC        101                       
        DataC        110                       
        DataC        103                       
        DataC        116                       
        DataC        104                       
        DataC        32                        
        DataC        103                       
        DataC        105                       
        DataC        118                       
        DataC        101                       
        DataC        110                       
        DataC        32                        
        DataC        102                       
        DataC        111                       
        DataC        114                       
        DataC        32                        
        DataC        97                        
        DataC        114                       
        DataC        114                       
        DataC        97                        
        DataC        121                       
        DataC        0                         
        Label        $$array-negative-length   
        PushD        $array-negative-length    
        Jump         $$general-runtime-error   
        DLabel       $array-not-initialized    
        DataC        97                        %% "array not initialized"
        DataC        114                       
        DataC        114                       
        DataC        97                        
        DataC        121                       
        DataC        32                        
        DataC        110                       
        DataC        111                       
        DataC        116                       
        DataC        32                        
        DataC        105                       
        DataC        110                       
        DataC        105                       
        DataC        116                       
        DataC        105                       
        DataC        97                        
        DataC        108                       
        DataC        105                       
        DataC        122                       
        DataC        101                       
        DataC        100                       
        DataC        0                         
        Label        $$array-not-initialized   
        PushD        $array-not-initialized    
        Jump         $$general-runtime-error   
        DLabel       $reference-space-1        
        DataZ        4                         
        DLabel       $reference-space-2        
        DataZ        4                         
        DLabel       $reference-space-macro    
        DataZ        4                         
        DLabel       $reference-space-Iter     
        DataZ        4                         
        DLabel       $usable-memory-start      
        DLabel       $global-memory-block      
        DataZ        0                         
        Label        $$main                    
        PushF        3.600000                  
        Nop                                    
        Label        -compare-1-start          
        PushF        4.700000                  
        Nop                                    
        PushF        9.800000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        4.800000                  
        Nop                                    
        Label        -compare-2-start          
        PushF        5.800000                  
        Nop                                    
        PushF        7.000000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        9.800000                  
        Nop                                    
        Label        -compare-3-start          
        PushF        2.000000                  
        Nop                                    
        PushF        8.900000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        2.000000                  
        Nop                                    
        Label        -compare-4-start          
        PushF        5.100000                  
        Nop                                    
        PushF        4.600000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        5.600000                  
        Nop                                    
        Label        -compare-5-start          
        PushF        9.200000                  
        Nop                                    
        PushF        1.500000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        5.200000                  
        Nop                                    
        Label        -compare-6-start          
        PushF        5.700000                  
        Nop                                    
        PushF        6.500000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        5.500000                  
        Nop                                    
        Label        -compare-7-start          
        PushF        2.600000                  
        Nop                                    
        PushF        8.700000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        6.100000                  
        Nop                                    
        Label        -compare-8-start          
        PushF        4.400000                  
        Nop                                    
        PushF        8.700000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        7.300000                  
        Nop                                    
        Label        -compare-9-start          
        PushF        9.500000                  
        Nop                                    
        PushF        5.000000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        9.200000                  
        Nop                                    
        Label        -compare-10-start         
        PushF        9.400000                  
        Nop                                    
        PushF        5.700000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        5.100000                  
        Nop                                    
        Label        -compare-11-start         
        PushF        5.300000                  
        Nop                                    
        PushF        7.200000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        8.600000                  
        Nop                                    
        Label        -compare-12-start         
        PushF        2.000000                  
        Nop                                    
        PushF        4.200000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-13-start         
        PushF        7.000000                  
        Nop                                    
        PushF        8.100000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        PushF        7.700000                  
        Nop                                    
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-14-start         
        PushF        5.600000                  
        Nop                                    
        PushF        9.100000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        PushF        9.600000                  
        Nop                                    
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-15-start         
        PushF        7.200000                  
        Nop                                    
        PushF        5.500000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        PushF        9.300000                  
        Nop                                    
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-16-start         
        PushF        1.000000                  
        Nop                                    
        PushF        3.400000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        PushF        6.200000                  
        Nop                                    
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-17-start         
        PushF        1.600000                  
        Nop                                    
        PushF        4.300000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        PushF        6.900000                  
        Nop                                    
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-18-start         
        PushF        5.400000                  
        Nop                                    
        PushF        7.700000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        PushF        1.100000                  
        Nop                                    
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-19-start         
        PushF        1.500000                  
        Nop                                    
        PushF        9.200000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        PushF        9.600000                  
        Nop                                    
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-20-start         
        PushF        9.400000                  
        Nop                                    
        PushF        9.400000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        PushF        3.400000                  
        Nop                                    
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-21-start         
        PushF        4.200000                  
        Nop                                    
        PushF        3.600000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        PushF        3.200000                  
        Nop                                    
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-22-start         
        PushF        2.300000                  
        Nop                                    
        PushF        9.500000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        PushF        5.000000                  
        Nop                                    
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-23-start         
        PushF        5.900000                  
        Nop                                    
        PushF        1.400000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        PushF        9.100000                  
        Nop                                    
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-24-start         
        PushF        5.900000                  
        Nop                                    
        PushF        1.500000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        PushF        7.900000                  
        Nop                                    
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        4.900000                  
        Nop                                    
        Label        -compare-25-start         
        PushF        8.800000                  
        Nop                                    
        PushF        1.200000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        FSubtract                              
        Nop                                    
        PushF        7.800000                  
        Nop                                    
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        7.000000                  
        Nop                                    
        Label        -compare-26-start         
        PushF        8.900000                  
        Nop                                    
        PushF        4.600000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        FSubtract                              
        Nop                                    
        PushF        4.500000                  
        Nop                                    
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        1.800000                  
        Nop                                    
        Label        -compare-27-start         
        PushF        2.800000                  
        Nop                                    
        PushF        3.800000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        FSubtract                              
        Nop                                    
        PushF        9.100000                  
        Nop                                    
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        4.500000                  
        Nop                                    
        Label        -compare-28-start         
        PushF        3.900000                  
        Nop                                    
        PushF        5.300000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        FSubtract                              
        Nop                                    
        PushF        9.900000                  
        Nop                                    
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        5.800000                  
        Nop                                    
        Label        -compare-29-start         
        PushF        8.600000                  
        Nop                                    
        PushF        3.400000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        FSubtract                              
        Nop                                    
        PushF        8.100000                  
        Nop                                    
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        8.700000                  
        Nop                                    
        Label        -compare-30-start         
        PushF        7.800000                  
        Nop                                    
        PushF        6.800000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        FSubtract                              
        Nop                                    
        PushF        5.800000                  
        Nop                                    
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        4.000000                  
        Nop                                    
        Label        -compare-31-start         
        PushF        6.000000                  
        Nop                                    
        PushF        7.200000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        FSubtract                              
        Nop                                    
        PushF        5.300000                  
        Nop                                    
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        2.600000                  
        Nop                                    
        Label        -compare-32-start         
        PushF        5.300000                  
        Nop                                    
        PushF        7.500000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        FSubtract                              
        Nop                                    
        PushF        2.400000                  
        Nop                                    
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        8.100000                  
        Nop                                    
        Label        -compare-33-start         
        PushF        2.500000                  
        Nop                                    
        PushF        4.200000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        FSubtract                              
        Nop                                    
        PushF        1.700000                  
        Nop                                    
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        1.100000                  
        Nop                                    
        Label        -compare-34-start         
        PushF        8.200000                  
        Nop                                    
        PushF        3.600000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        FSubtract                              
        Nop                                    
        PushF        8.700000                  
        Nop                                    
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        2.800000                  
        Nop                                    
        Label        -compare-35-start         
        PushF        6.300000                  
        Nop                                    
        PushF        7.000000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        FSubtract                              
        Nop                                    
        PushF        8.200000                  
        Nop                                    
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        2.300000                  
        Nop                                    
        Label        -compare-36-start         
        PushF        9.900000                  
        Nop                                    
        PushF        8.700000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        FSubtract                              
        Nop                                    
        PushF        6.700000                  
        Nop                                    
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-37-start         
        PushF        6.100000                  
        Nop                                    
        PushF        4.600000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        Label        -compare-38-start         
        PushF        7.300000                  
        Nop                                    
        PushF        4.000000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-39-start         
        PushF        3.500000                  
        Nop                                    
        PushF        7.600000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        Label        -compare-40-start         
        PushF        6.200000                  
        Nop                                    
        PushF        2.600000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-41-start         
        PushF        6.700000                  
        Nop                                    
        PushF        1.300000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        Label        -compare-42-start         
        PushF        2.800000                  
        Nop                                    
        PushF        7.900000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-43-start         
        PushF        3.500000                  
        Nop                                    
        PushF        3.100000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        Label        -compare-44-start         
        PushF        5.300000                  
        Nop                                    
        PushF        4.400000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-45-start         
        PushF        2.200000                  
        Nop                                    
        PushF        3.200000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        Label        -compare-46-start         
        PushF        5.100000                  
        Nop                                    
        PushF        4.900000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-47-start         
        PushF        7.100000                  
        Nop                                    
        PushF        2.500000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        Label        -compare-48-start         
        PushF        8.400000                  
        Nop                                    
        PushF        6.100000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-49-start         
        PushF        3.800000                  
        Nop                                    
        PushF        5.200000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        Label        -compare-50-start         
        PushF        6.000000                  
        Nop                                    
        PushF        9.400000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-51-start         
        PushF        2.900000                  
        Nop                                    
        PushF        8.500000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        Label        -compare-52-start         
        PushF        3.200000                  
        Nop                                    
        PushF        7.700000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-53-start         
        PushF        1.500000                  
        Nop                                    
        PushF        1.100000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        Label        -compare-54-start         
        PushF        3.700000                  
        Nop                                    
        PushF        5.500000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-55-start         
        PushF        4.800000                  
        Nop                                    
        PushF        6.300000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        Label        -compare-56-start         
        PushF        2.100000                  
        Nop                                    
        PushF        4.500000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-57-start         
        PushF        4.000000                  
        Nop                                    
        PushF        3.600000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        Label        -compare-58-start         
        PushF        4.600000                  
        Nop                                    
        PushF        2.100000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-59-start         
        PushF        8.100000                  
        Nop                                    
        PushF        2.300000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        Label        -compare-60-start         
        PushF        4.200000                  
        Nop                                    
        PushF        8.700000                  
        Nop                                    
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Nop                                    
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Halt                                   
        Label        $print-array              
        DLabel       $print-array-return-address 
        DataZ        4                         
        DLabel       $print-array-depth        
        DataZ        4                         
        DLabel       $print-array-typeid       
        DataZ        4                         
        DLabel       $print-array-address      
        DataZ        4                         
        DLabel       $print-array-index        
        DataZ        4                         
        PushD        $print-array-return-address 
        Exchange                               
        StoreI                                 
        PushD        $print-array-depth        
        Exchange                               
        StoreI                                 
        PushD        $print-array-typeid       
        Exchange                               
        StoreI                                 
        PushD        $print-array-address      
        Exchange                               
        StoreI                                 
        PushD        $print-format-open-square 
        Printf                                 
        PushD        $print-array-address      
        LoadI                                  
        PushI        12                        
        Add                                    
        LoadI                                  
        JumpFalse    $print-array-loop-end     
        PushI        0                         
        PushD        $print-array-index        
        Exchange                               
        StoreI                                 
        Label        $print-array-loop-start   
        PushD        $print-array-depth        
        LoadI                                  
        JumpFalse    $print-array-value-start  
        PushD        $print-array-index        
        LoadI                                  
        PushD        $print-array-address      
        LoadI                                  
        PushD        $print-array-typeid       
        LoadI                                  
        PushD        $print-array-depth        
        LoadI                                  
        PushD        $print-array-return-address 
        LoadI                                  
        PushD        $print-array-index        
        LoadI                                  
        PushD        $print-array-address      
        LoadI                                  
        Duplicate                              
        PushD        $reference-space-macro    
        Exchange                               
        StoreI                                 
        PushI        8                         
        Add                                    
        LoadI                                  
        Multiply                               
        PushI        16                        
        Add                                    
        PushD        $reference-space-macro    
        LoadI                                  
        Add                                    
        LoadI                                  
        PushD        $print-array-typeid       
        LoadI                                  
        PushD        $print-array-depth        
        LoadI                                  
        PushI        1                         
        Subtract                               
        Call         $print-array              
        PushD        $print-array-return-address 
        Exchange                               
        StoreI                                 
        PushD        $print-array-depth        
        Exchange                               
        StoreI                                 
        PushD        $print-array-typeid       
        Exchange                               
        StoreI                                 
        PushD        $print-array-address      
        Exchange                               
        StoreI                                 
        PushD        $print-array-index        
        Exchange                               
        StoreI                                 
        Jump         $print-array-value-end    
        Label        $print-array-value-start  
        PushD        $print-array-index        
        LoadI                                  
        PushD        $print-array-address      
        LoadI                                  
        Duplicate                              
        PushD        $reference-space-macro    
        Exchange                               
        StoreI                                 
        PushI        8                         
        Add                                    
        LoadI                                  
        Multiply                               
        PushI        16                        
        Add                                    
        PushD        $reference-space-macro    
        LoadI                                  
        Add                                    
        PushD        $print-array-typeid       
        LoadI                                  
        Call         $print-value              
        Label        $print-array-value-end    
        PushI        1                         
        PushD        $print-array-index        
        LoadI                                  
        Add                                    
        PushD        $print-array-index        
        Exchange                               
        StoreI                                 
        PushD        $print-array-address      
        LoadI                                  
        PushI        12                        
        Add                                    
        LoadI                                  
        PushD        $print-array-index        
        LoadI                                  
        Subtract                               
        JumpFalse    $print-array-loop-end     
        PushD        $print-format-comma       
        Printf                                 
        PushD        $print-format-space       
        Printf                                 
        Jump         $print-array-loop-start   
        Label        $print-array-loop-end     
        PushD        $print-format-close-square 
        Printf                                 
        PushD        $print-array-return-address 
        LoadI                                  
        Return                                 
        Label        $print-value              
        DLabel       $print-value-return-address 
        DataZ        4                         
        DLabel       $print-value-typeid       
        DataZ        4                         
        DLabel       $print-value-address      
        DataZ        4                         
        PushD        $print-value-return-address 
        Exchange                               
        StoreI                                 
        PushD        $print-value-typeid       
        Exchange                               
        StoreI                                 
        PushD        $print-value-address      
        Exchange                               
        StoreI                                 
        Label        -print-value-61-char      
        PushD        $print-value-typeid       
        LoadI                                  
        JumpTrue     -print-value-61-int       
        PushD        $print-value-address      
        LoadI                                  
        LoadC                                  
        PushD        $print-format-char        
        Printf                                 
        Label        -print-value-61-int       
        PushD        $print-value-typeid       
        LoadI                                  
        PushI        1                         
        Subtract                               
        JumpTrue     -print-value-61-float     
        PushD        $print-value-address      
        LoadI                                  
        LoadI                                  
        PushD        $print-format-integer     
        Printf                                 
        Label        -print-value-61-float     
        PushD        $print-value-typeid       
        LoadI                                  
        PushI        2                         
        Subtract                               
        JumpTrue     -print-value-61-string    
        PushD        $print-value-address      
        LoadI                                  
        LoadF                                  
        PushD        $print-format-floating    
        Printf                                 
        Label        -print-value-61-string    
        PushD        $print-value-typeid       
        LoadI                                  
        PushI        3                         
        Subtract                               
        JumpTrue     -print-value-61-bool      
        PushD        $print-value-address      
        LoadI                                  
        LoadI                                  
        PushI        12                        
        Add                                    
        PushD        $print-format-string      
        Printf                                 
        Label        -print-value-61-bool      
        PushD        $print-value-typeid       
        LoadI                                  
        PushI        4                         
        Subtract                               
        JumpTrue     -print-value-61-end       
        PushD        $print-value-address      
        LoadI                                  
        LoadC                                  
        JumpTrue     -print-value-61-true      
        PushD        $boolean-false-string     
        Jump         -print-value-61-pastTrue  
        Label        -print-value-61-true      
        PushD        $boolean-true-string      
        Label        -print-value-61-pastTrue  
        PushD        $print-format-string      
        Printf                                 
        Label        -print-value-61-end       
        PushD        $print-value-return-address 
        LoadI                                  
        Return                                 
        Label        -mem-manager-make-tags    
        DLabel       $mmgr-tags-size           
        DataZ        4                         
        DLabel       $mmgr-tags-start          
        DataZ        4                         
        DLabel       $mmgr-tags-available      
        DataZ        4                         
        DLabel       $mmgr-tags-nextptr        
        DataZ        4                         
        DLabel       $mmgr-tags-prevptr        
        DataZ        4                         
        DLabel       $mmgr-tags-return         
        DataZ        4                         
        PushD        $mmgr-tags-return         
        Exchange                               
        StoreI                                 
        PushD        $mmgr-tags-size           
        Exchange                               
        StoreI                                 
        PushD        $mmgr-tags-start          
        Exchange                               
        StoreI                                 
        PushD        $mmgr-tags-available      
        Exchange                               
        StoreI                                 
        PushD        $mmgr-tags-nextptr        
        Exchange                               
        StoreI                                 
        PushD        $mmgr-tags-prevptr        
        Exchange                               
        StoreI                                 
        PushD        $mmgr-tags-prevptr        
        LoadI                                  
        PushD        $mmgr-tags-size           
        LoadI                                  
        PushD        $mmgr-tags-available      
        LoadI                                  
        PushD        $mmgr-tags-start          
        LoadI                                  
        Call         -mem-manager-one-tag      
        PushD        $mmgr-tags-nextptr        
        LoadI                                  
        PushD        $mmgr-tags-size           
        LoadI                                  
        PushD        $mmgr-tags-available      
        LoadI                                  
        PushD        $mmgr-tags-start          
        LoadI                                  
        Duplicate                              
        PushI        4                         
        Add                                    
        LoadI                                  
        Add                                    
        PushI        9                         
        Subtract                               
        Call         -mem-manager-one-tag      
        PushD        $mmgr-tags-return         
        LoadI                                  
        Return                                 
        Label        -mem-manager-one-tag      
        DLabel       $mmgr-onetag-return       
        DataZ        4                         
        DLabel       $mmgr-onetag-location     
        DataZ        4                         
        DLabel       $mmgr-onetag-available    
        DataZ        4                         
        DLabel       $mmgr-onetag-size         
        DataZ        4                         
        DLabel       $mmgr-onetag-pointer      
        DataZ        4                         
        PushD        $mmgr-onetag-return       
        Exchange                               
        StoreI                                 
        PushD        $mmgr-onetag-location     
        Exchange                               
        StoreI                                 
        PushD        $mmgr-onetag-available    
        Exchange                               
        StoreI                                 
        PushD        $mmgr-onetag-size         
        Exchange                               
        StoreI                                 
        PushD        $mmgr-onetag-location     
        LoadI                                  
        PushI        0                         
        Add                                    
        Exchange                               
        StoreI                                 
        PushD        $mmgr-onetag-size         
        LoadI                                  
        PushD        $mmgr-onetag-location     
        LoadI                                  
        PushI        4                         
        Add                                    
        Exchange                               
        StoreI                                 
        PushD        $mmgr-onetag-available    
        LoadI                                  
        PushD        $mmgr-onetag-location     
        LoadI                                  
        PushI        8                         
        Add                                    
        Exchange                               
        StoreC                                 
        PushD        $mmgr-onetag-return       
        LoadI                                  
        Return                                 
        Label        -mem-manager-allocate     
        DLabel       $mmgr-alloc-return        
        DataZ        4                         
        DLabel       $mmgr-alloc-size          
        DataZ        4                         
        DLabel       $mmgr-alloc-current-block 
        DataZ        4                         
        DLabel       $mmgr-alloc-remainder-block 
        DataZ        4                         
        DLabel       $mmgr-alloc-remainder-size 
        DataZ        4                         
        PushD        $mmgr-alloc-return        
        Exchange                               
        StoreI                                 
        PushI        18                        
        Add                                    
        PushD        $mmgr-alloc-size          
        Exchange                               
        StoreI                                 
        PushD        $heap-first-free          
        LoadI                                  
        PushD        $mmgr-alloc-current-block 
        Exchange                               
        StoreI                                 
        Label        -mmgr-alloc-process-current 
        PushD        $mmgr-alloc-current-block 
        LoadI                                  
        JumpFalse    -mmgr-alloc-no-block-works 
        Label        -mmgr-alloc-test-block    
        PushD        $mmgr-alloc-current-block 
        LoadI                                  
        PushI        4                         
        Add                                    
        LoadI                                  
        PushD        $mmgr-alloc-size          
        LoadI                                  
        Subtract                               
        PushI        1                         
        Add                                    
        JumpPos      -mmgr-alloc-found-block   
        PushD        $mmgr-alloc-current-block 
        LoadI                                  
        Duplicate                              
        PushI        4                         
        Add                                    
        LoadI                                  
        Add                                    
        PushI        9                         
        Subtract                               
        PushI        0                         
        Add                                    
        LoadI                                  
        PushD        $mmgr-alloc-current-block 
        Exchange                               
        StoreI                                 
        Jump         -mmgr-alloc-process-current 
        Label        -mmgr-alloc-found-block   
        PushD        $mmgr-alloc-current-block 
        LoadI                                  
        Call         -mem-manager-remove-block 
        PushD        $mmgr-alloc-current-block 
        LoadI                                  
        PushI        4                         
        Add                                    
        LoadI                                  
        PushD        $mmgr-alloc-size          
        LoadI                                  
        Subtract                               
        PushI        26                        
        Subtract                               
        JumpNeg      -mmgr-alloc-return-userblock 
        PushD        $mmgr-alloc-current-block 
        LoadI                                  
        PushD        $mmgr-alloc-size          
        LoadI                                  
        Add                                    
        PushD        $mmgr-alloc-remainder-block 
        Exchange                               
        StoreI                                 
        PushD        $mmgr-alloc-size          
        LoadI                                  
        PushD        $mmgr-alloc-current-block 
        LoadI                                  
        PushI        4                         
        Add                                    
        LoadI                                  
        Exchange                               
        Subtract                               
        PushD        $mmgr-alloc-remainder-size 
        Exchange                               
        StoreI                                 
        PushI        0                         
        PushI        0                         
        PushI        0                         
        PushD        $mmgr-alloc-current-block 
        LoadI                                  
        PushD        $mmgr-alloc-size          
        LoadI                                  
        Call         -mem-manager-make-tags    
        PushI        0                         
        PushI        0                         
        PushI        1                         
        PushD        $mmgr-alloc-remainder-block 
        LoadI                                  
        PushD        $mmgr-alloc-remainder-size 
        LoadI                                  
        Call         -mem-manager-make-tags    
        PushD        $mmgr-alloc-remainder-block 
        LoadI                                  
        PushI        9                         
        Add                                    
        Call         -mem-manager-deallocate   
        Jump         -mmgr-alloc-return-userblock 
        Label        -mmgr-alloc-no-block-works 
        PushD        $mmgr-alloc-size          
        LoadI                                  
        PushD        $mmgr-newblock-size       
        Exchange                               
        StoreI                                 
        PushD        $heap-after-ptr           
        LoadI                                  
        PushD        $mmgr-newblock-block      
        Exchange                               
        StoreI                                 
        PushD        $mmgr-newblock-size       
        LoadI                                  
        PushD        $heap-after-ptr           
        LoadI                                  
        Add                                    
        PushD        $heap-after-ptr           
        Exchange                               
        StoreI                                 
        PushI        0                         
        PushI        0                         
        PushI        0                         
        PushD        $mmgr-newblock-block      
        LoadI                                  
        PushD        $mmgr-newblock-size       
        LoadI                                  
        Call         -mem-manager-make-tags    
        PushD        $mmgr-newblock-block      
        LoadI                                  
        PushD        $mmgr-alloc-current-block 
        Exchange                               
        StoreI                                 
        Label        -mmgr-alloc-return-userblock 
        PushD        $mmgr-alloc-current-block 
        LoadI                                  
        PushI        9                         
        Add                                    
        PushD        $mmgr-alloc-return        
        LoadI                                  
        Return                                 
        Label        -mem-manager-deallocate   
        DLabel       $mmgr-dealloc-return      
        DataZ        4                         
        DLabel       $mmgr-dealloc-block       
        DataZ        4                         
        PushD        $mmgr-dealloc-return      
        Exchange                               
        StoreI                                 
        PushI        9                         
        Subtract                               
        PushD        $mmgr-dealloc-block       
        Exchange                               
        StoreI                                 
        PushD        $heap-first-free          
        LoadI                                  
        JumpFalse    -mmgr-bypass-firstFree    
        PushD        $mmgr-dealloc-block       
        LoadI                                  
        PushD        $heap-first-free          
        LoadI                                  
        PushI        0                         
        Add                                    
        Exchange                               
        StoreI                                 
        Label        -mmgr-bypass-firstFree    
        PushI        0                         
        PushD        $mmgr-dealloc-block       
        LoadI                                  
        PushI        0                         
        Add                                    
        Exchange                               
        StoreI                                 
        PushD        $heap-first-free          
        LoadI                                  
        PushD        $mmgr-dealloc-block       
        LoadI                                  
        Duplicate                              
        PushI        4                         
        Add                                    
        LoadI                                  
        Add                                    
        PushI        9                         
        Subtract                               
        PushI        0                         
        Add                                    
        Exchange                               
        StoreI                                 
        PushI        1                         
        PushD        $mmgr-dealloc-block       
        LoadI                                  
        PushI        8                         
        Add                                    
        Exchange                               
        StoreC                                 
        PushI        1                         
        PushD        $mmgr-dealloc-block       
        LoadI                                  
        Duplicate                              
        PushI        4                         
        Add                                    
        LoadI                                  
        Add                                    
        PushI        9                         
        Subtract                               
        PushI        8                         
        Add                                    
        Exchange                               
        StoreC                                 
        PushD        $mmgr-dealloc-block       
        LoadI                                  
        PushD        $heap-first-free          
        Exchange                               
        StoreI                                 
        PushD        $mmgr-dealloc-return      
        LoadI                                  
        Return                                 
        Label        -mem-manager-remove-block 
        DLabel       $mmgr-remove-return       
        DataZ        4                         
        DLabel       $mmgr-remove-block        
        DataZ        4                         
        DLabel       $mmgr-remove-prev         
        DataZ        4                         
        DLabel       $mmgr-remove-next         
        DataZ        4                         
        PushD        $mmgr-remove-return       
        Exchange                               
        StoreI                                 
        PushD        $mmgr-remove-block        
        Exchange                               
        StoreI                                 
        PushD        $mmgr-remove-block        
        LoadI                                  
        PushI        0                         
        Add                                    
        LoadI                                  
        PushD        $mmgr-remove-prev         
        Exchange                               
        StoreI                                 
        PushD        $mmgr-remove-block        
        LoadI                                  
        Duplicate                              
        PushI        4                         
        Add                                    
        LoadI                                  
        Add                                    
        PushI        9                         
        Subtract                               
        PushI        0                         
        Add                                    
        LoadI                                  
        PushD        $mmgr-remove-next         
        Exchange                               
        StoreI                                 
        Label        -mmgr-remove-process-prev 
        PushD        $mmgr-remove-prev         
        LoadI                                  
        JumpFalse    -mmgr-remove-no-prev      
        PushD        $mmgr-remove-next         
        LoadI                                  
        PushD        $mmgr-remove-prev         
        LoadI                                  
        Duplicate                              
        PushI        4                         
        Add                                    
        LoadI                                  
        Add                                    
        PushI        9                         
        Subtract                               
        PushI        0                         
        Add                                    
        Exchange                               
        StoreI                                 
        Jump         -mmgr-remove-process-next 
        Label        -mmgr-remove-no-prev      
        PushD        $mmgr-remove-next         
        LoadI                                  
        PushD        $heap-first-free          
        Exchange                               
        StoreI                                 
        Label        -mmgr-remove-process-next 
        PushD        $mmgr-remove-next         
        LoadI                                  
        JumpFalse    -mmgr-remove-done         
        PushD        $mmgr-remove-prev         
        LoadI                                  
        PushD        $mmgr-remove-next         
        LoadI                                  
        PushI        0                         
        Add                                    
        Exchange                               
        StoreI                                 
        Label        -mmgr-remove-done         
        PushD        $mmgr-remove-return       
        LoadI                                  
        Return                                 
        DLabel       $heap-memory              