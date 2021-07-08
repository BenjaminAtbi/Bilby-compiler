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
        PushF        2.700000                  
        PushF        7.900000                  
        FAdd                                   
        PushF        8.400000                  
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        4.500000                  
        PushF        1.300000                  
        FAdd                                   
        PushF        8.300000                  
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        8.700000                  
        PushF        1.300000                  
        FAdd                                   
        PushF        4.100000                  
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        1.700000                  
        PushF        6.500000                  
        FAdd                                   
        PushF        2.200000                  
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        7.900000                  
        PushF        4.300000                  
        FAdd                                   
        PushF        4.900000                  
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        4.200000                  
        PushF        3.100000                  
        FAdd                                   
        PushF        8.300000                  
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        2.100000                  
        PushF        5.700000                  
        FAdd                                   
        PushF        7.900000                  
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        7.200000                  
        PushF        7.400000                  
        FAdd                                   
        PushF        3.100000                  
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        8.900000                  
        PushF        1.200000                  
        FAdd                                   
        PushF        5.500000                  
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        2.200000                  
        PushF        7.200000                  
        FAdd                                   
        PushF        9.200000                  
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        4.800000                  
        PushF        8.500000                  
        FAdd                                   
        PushF        8.000000                  
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        7.600000                  
        PushF        7.300000                  
        FAdd                                   
        PushF        3.800000                  
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        3.200000                  
        PushF        1.100000                  
        FSubtract                              
        PushF        7.600000                  
        FAdd                                   
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        1.800000                  
        PushF        8.400000                  
        FSubtract                              
        PushF        1.900000                  
        FAdd                                   
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        6.100000                  
        PushF        1.400000                  
        FSubtract                              
        PushF        5.500000                  
        FAdd                                   
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        3.900000                  
        PushF        6.200000                  
        FSubtract                              
        PushF        6.600000                  
        FAdd                                   
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        1.800000                  
        PushF        3.800000                  
        FSubtract                              
        PushF        9.800000                  
        FAdd                                   
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        1.800000                  
        PushF        9.800000                  
        FSubtract                              
        PushF        7.800000                  
        FAdd                                   
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        8.800000                  
        PushF        2.900000                  
        FSubtract                              
        PushF        3.500000                  
        FAdd                                   
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        6.900000                  
        PushF        3.100000                  
        FSubtract                              
        PushF        4.100000                  
        FAdd                                   
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        2.100000                  
        PushF        6.200000                  
        FSubtract                              
        PushF        9.000000                  
        FAdd                                   
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        4.300000                  
        PushF        2.600000                  
        FSubtract                              
        PushF        8.800000                  
        FAdd                                   
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        2.800000                  
        PushF        4.600000                  
        FSubtract                              
        PushF        7.400000                  
        FAdd                                   
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        5.200000                  
        PushF        7.000000                  
        FSubtract                              
        PushF        2.800000                  
        FAdd                                   
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        2.500000                  
        PushF        1.700000                  
        FAdd                                   
        PushF        2.200000                  
        FSubtract                              
        PushF        2.300000                  
        FAdd                                   
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        6.300000                  
        PushF        9.100000                  
        FAdd                                   
        PushF        9.600000                  
        FSubtract                              
        PushF        8.800000                  
        FAdd                                   
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        6.300000                  
        PushF        9.900000                  
        FAdd                                   
        PushF        3.800000                  
        FSubtract                              
        PushF        6.400000                  
        FAdd                                   
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        6.500000                  
        PushF        1.400000                  
        FAdd                                   
        PushF        2.800000                  
        FSubtract                              
        PushF        9.300000                  
        FAdd                                   
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        2.400000                  
        PushF        6.900000                  
        FAdd                                   
        PushF        1.400000                  
        FSubtract                              
        PushF        8.200000                  
        FAdd                                   
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        5.500000                  
        PushF        2.000000                  
        FAdd                                   
        PushF        8.400000                  
        FSubtract                              
        PushF        8.100000                  
        FAdd                                   
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        4.600000                  
        PushF        4.500000                  
        FAdd                                   
        PushF        6.100000                  
        FSubtract                              
        PushF        4.000000                  
        FAdd                                   
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        8.500000                  
        PushF        4.900000                  
        FAdd                                   
        PushF        1.100000                  
        FSubtract                              
        PushF        4.900000                  
        FAdd                                   
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        4.300000                  
        PushF        2.600000                  
        FAdd                                   
        PushF        7.800000                  
        FSubtract                              
        PushF        6.000000                  
        FAdd                                   
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        2.200000                  
        PushF        2.200000                  
        FAdd                                   
        PushF        3.300000                  
        FSubtract                              
        PushF        5.800000                  
        FAdd                                   
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        7.600000                  
        PushF        2.600000                  
        FAdd                                   
        PushF        9.900000                  
        FSubtract                              
        PushF        2.000000                  
        FAdd                                   
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        5.800000                  
        PushF        1.300000                  
        FAdd                                   
        PushF        7.400000                  
        FSubtract                              
        PushF        5.400000                  
        FAdd                                   
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        8.100000                  
        PushF        2.100000                  
        FSubtract                              
        PushF        5.500000                  
        FAdd                                   
        PushF        6.900000                  
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        9.100000                  
        PushF        8.200000                  
        FSubtract                              
        PushF        4.900000                  
        FAdd                                   
        PushF        4.000000                  
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        3.100000                  
        PushF        4.200000                  
        FSubtract                              
        PushF        6.500000                  
        FAdd                                   
        PushF        4.900000                  
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        7.100000                  
        PushF        8.800000                  
        FSubtract                              
        PushF        7.300000                  
        FAdd                                   
        PushF        2.000000                  
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        3.500000                  
        PushF        5.200000                  
        FSubtract                              
        PushF        1.300000                  
        FAdd                                   
        PushF        3.200000                  
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        8.900000                  
        PushF        9.600000                  
        FSubtract                              
        PushF        6.800000                  
        FAdd                                   
        PushF        4.200000                  
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        4.800000                  
        PushF        9.100000                  
        FSubtract                              
        PushF        4.100000                  
        FAdd                                   
        PushF        2.500000                  
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        1.000000                  
        PushF        7.300000                  
        FSubtract                              
        PushF        9.300000                  
        FAdd                                   
        PushF        5.900000                  
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        8.800000                  
        PushF        7.400000                  
        FSubtract                              
        PushF        9.000000                  
        FAdd                                   
        PushF        3.000000                  
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        7.300000                  
        PushF        5.700000                  
        FSubtract                              
        PushF        3.400000                  
        FAdd                                   
        PushF        8.200000                  
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        6.600000                  
        PushF        7.200000                  
        FSubtract                              
        PushF        9.000000                  
        FAdd                                   
        PushF        1.000000                  
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        4.600000                  
        PushF        3.600000                  
        FSubtract                              
        PushF        9.400000                  
        FAdd                                   
        PushF        4.400000                  
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Halt                                   
