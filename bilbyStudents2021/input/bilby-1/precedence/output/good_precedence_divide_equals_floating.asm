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
        PushF        8.600000                  
        PushF        2.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        4.500000                  
        Label        -compare-2-sub            
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-2-equate         
        Pop                                    
        Jump         -compare-2-false          
        Label        -compare-2-equate         
        Pop                                    
        Label        -compare-2-true           
        PushI        1                         
        Jump         -compare-2-join           
        Label        -compare-2-false          
        PushI        0                         
        Jump         -compare-2-join           
        Label        -compare-2-join           
        JumpTrue     -print-boolean-3-true     
        PushD        $boolean-false-string     
        Jump         -print-boolean-3-join     
        Label        -print-boolean-3-true     
        PushD        $boolean-true-string      
        Label        -print-boolean-3-join     
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-5-start          
        Label        -compare-4-start          
        PushF        7.500000                  
        PushF        7.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        8.200000                  
        Label        -compare-5-sub            
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-5-equate         
        Pop                                    
        Jump         -compare-5-false          
        Label        -compare-5-equate         
        Pop                                    
        Label        -compare-5-true           
        PushI        1                         
        Jump         -compare-5-join           
        Label        -compare-5-false          
        PushI        0                         
        Jump         -compare-5-join           
        Label        -compare-5-join           
        JumpTrue     -print-boolean-6-true     
        PushD        $boolean-false-string     
        Jump         -print-boolean-6-join     
        Label        -print-boolean-6-true     
        PushD        $boolean-true-string      
        Label        -print-boolean-6-join     
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-8-start          
        Label        -compare-7-start          
        PushF        9.800000                  
        PushF        7.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        2.500000                  
        Label        -compare-8-sub            
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-8-equate         
        Pop                                    
        Jump         -compare-8-false          
        Label        -compare-8-equate         
        Pop                                    
        Label        -compare-8-true           
        PushI        1                         
        Jump         -compare-8-join           
        Label        -compare-8-false          
        PushI        0                         
        Jump         -compare-8-join           
        Label        -compare-8-join           
        JumpTrue     -print-boolean-9-true     
        PushD        $boolean-false-string     
        Jump         -print-boolean-9-join     
        Label        -print-boolean-9-true     
        PushD        $boolean-true-string      
        Label        -print-boolean-9-join     
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-11-start         
        Label        -compare-10-start         
        PushF        7.300000                  
        PushF        6.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        8.200000                  
        Label        -compare-11-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-11-equate        
        Pop                                    
        Jump         -compare-11-false         
        Label        -compare-11-equate        
        Pop                                    
        Label        -compare-11-true          
        PushI        1                         
        Jump         -compare-11-join          
        Label        -compare-11-false         
        PushI        0                         
        Jump         -compare-11-join          
        Label        -compare-11-join          
        JumpTrue     -print-boolean-12-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-12-join    
        Label        -print-boolean-12-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-12-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-14-start         
        Label        -compare-13-start         
        PushF        6.400000                  
        PushF        9.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        7.200000                  
        Label        -compare-14-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-14-equate        
        Pop                                    
        Jump         -compare-14-false         
        Label        -compare-14-equate        
        Pop                                    
        Label        -compare-14-true          
        PushI        1                         
        Jump         -compare-14-join          
        Label        -compare-14-false         
        PushI        0                         
        Jump         -compare-14-join          
        Label        -compare-14-join          
        JumpTrue     -print-boolean-15-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-15-join    
        Label        -print-boolean-15-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-15-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-17-start         
        Label        -compare-16-start         
        PushF        5.500000                  
        PushF        7.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        2.600000                  
        Label        -compare-17-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-17-equate        
        Pop                                    
        Jump         -compare-17-false         
        Label        -compare-17-equate        
        Pop                                    
        Label        -compare-17-true          
        PushI        1                         
        Jump         -compare-17-join          
        Label        -compare-17-false         
        PushI        0                         
        Jump         -compare-17-join          
        Label        -compare-17-join          
        JumpTrue     -print-boolean-18-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-18-join    
        Label        -print-boolean-18-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-18-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-20-start         
        Label        -compare-19-start         
        PushF        4.100000                  
        PushF        5.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        5.900000                  
        Label        -compare-20-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-20-equate        
        Pop                                    
        Jump         -compare-20-false         
        Label        -compare-20-equate        
        Pop                                    
        Label        -compare-20-true          
        PushI        1                         
        Jump         -compare-20-join          
        Label        -compare-20-false         
        PushI        0                         
        Jump         -compare-20-join          
        Label        -compare-20-join          
        JumpTrue     -print-boolean-21-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-21-join    
        Label        -print-boolean-21-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-21-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-23-start         
        Label        -compare-22-start         
        PushF        3.900000                  
        PushF        2.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        7.400000                  
        Label        -compare-23-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-23-equate        
        Pop                                    
        Jump         -compare-23-false         
        Label        -compare-23-equate        
        Pop                                    
        Label        -compare-23-true          
        PushI        1                         
        Jump         -compare-23-join          
        Label        -compare-23-false         
        PushI        0                         
        Jump         -compare-23-join          
        Label        -compare-23-join          
        JumpTrue     -print-boolean-24-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-24-join    
        Label        -print-boolean-24-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-24-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-26-start         
        Label        -compare-25-start         
        PushF        6.300000                  
        PushF        3.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        6.300000                  
        Label        -compare-26-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-26-equate        
        Pop                                    
        Jump         -compare-26-false         
        Label        -compare-26-equate        
        Pop                                    
        Label        -compare-26-true          
        PushI        1                         
        Jump         -compare-26-join          
        Label        -compare-26-false         
        PushI        0                         
        Jump         -compare-26-join          
        Label        -compare-26-join          
        JumpTrue     -print-boolean-27-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-27-join    
        Label        -print-boolean-27-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-27-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-29-start         
        Label        -compare-28-start         
        PushF        3.900000                  
        PushF        7.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        4.800000                  
        Label        -compare-29-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-29-equate        
        Pop                                    
        Jump         -compare-29-false         
        Label        -compare-29-equate        
        Pop                                    
        Label        -compare-29-true          
        PushI        1                         
        Jump         -compare-29-join          
        Label        -compare-29-false         
        PushI        0                         
        Jump         -compare-29-join          
        Label        -compare-29-join          
        JumpTrue     -print-boolean-30-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-30-join    
        Label        -print-boolean-30-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-30-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-32-start         
        Label        -compare-31-start         
        PushF        9.300000                  
        PushF        3.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        9.800000                  
        Label        -compare-32-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-32-equate        
        Pop                                    
        Jump         -compare-32-false         
        Label        -compare-32-equate        
        Pop                                    
        Label        -compare-32-true          
        PushI        1                         
        Jump         -compare-32-join          
        Label        -compare-32-false         
        PushI        0                         
        Jump         -compare-32-join          
        Label        -compare-32-join          
        JumpTrue     -print-boolean-33-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-33-join    
        Label        -print-boolean-33-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-33-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-35-start         
        Label        -compare-34-start         
        PushF        8.800000                  
        PushF        1.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        PushF        7.200000                  
        Label        -compare-35-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-35-equate        
        Pop                                    
        Jump         -compare-35-false         
        Label        -compare-35-equate        
        Pop                                    
        Label        -compare-35-true          
        PushI        1                         
        Jump         -compare-35-join          
        Label        -compare-35-false         
        PushI        0                         
        Jump         -compare-35-join          
        Label        -compare-35-join          
        JumpTrue     -print-boolean-36-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-36-join    
        Label        -print-boolean-36-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-36-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-38-start         
        PushF        4.900000                  
        Label        -compare-37-start         
        PushF        4.800000                  
        PushF        8.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-38-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-38-equate        
        Pop                                    
        Jump         -compare-38-false         
        Label        -compare-38-equate        
        Pop                                    
        Label        -compare-38-true          
        PushI        1                         
        Jump         -compare-38-join          
        Label        -compare-38-false         
        PushI        0                         
        Jump         -compare-38-join          
        Label        -compare-38-join          
        JumpTrue     -print-boolean-39-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-39-join    
        Label        -print-boolean-39-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-39-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-41-start         
        PushF        2.700000                  
        Label        -compare-40-start         
        PushF        6.400000                  
        PushF        6.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-41-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-41-equate        
        Pop                                    
        Jump         -compare-41-false         
        Label        -compare-41-equate        
        Pop                                    
        Label        -compare-41-true          
        PushI        1                         
        Jump         -compare-41-join          
        Label        -compare-41-false         
        PushI        0                         
        Jump         -compare-41-join          
        Label        -compare-41-join          
        JumpTrue     -print-boolean-42-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-42-join    
        Label        -print-boolean-42-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-42-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-44-start         
        PushF        3.700000                  
        Label        -compare-43-start         
        PushF        6.900000                  
        PushF        2.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-44-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-44-equate        
        Pop                                    
        Jump         -compare-44-false         
        Label        -compare-44-equate        
        Pop                                    
        Label        -compare-44-true          
        PushI        1                         
        Jump         -compare-44-join          
        Label        -compare-44-false         
        PushI        0                         
        Jump         -compare-44-join          
        Label        -compare-44-join          
        JumpTrue     -print-boolean-45-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-45-join    
        Label        -print-boolean-45-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-45-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-47-start         
        PushF        7.800000                  
        Label        -compare-46-start         
        PushF        6.400000                  
        PushF        7.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-47-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-47-equate        
        Pop                                    
        Jump         -compare-47-false         
        Label        -compare-47-equate        
        Pop                                    
        Label        -compare-47-true          
        PushI        1                         
        Jump         -compare-47-join          
        Label        -compare-47-false         
        PushI        0                         
        Jump         -compare-47-join          
        Label        -compare-47-join          
        JumpTrue     -print-boolean-48-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-48-join    
        Label        -print-boolean-48-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-48-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-50-start         
        PushF        1.200000                  
        Label        -compare-49-start         
        PushF        7.500000                  
        PushF        5.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-50-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-50-equate        
        Pop                                    
        Jump         -compare-50-false         
        Label        -compare-50-equate        
        Pop                                    
        Label        -compare-50-true          
        PushI        1                         
        Jump         -compare-50-join          
        Label        -compare-50-false         
        PushI        0                         
        Jump         -compare-50-join          
        Label        -compare-50-join          
        JumpTrue     -print-boolean-51-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-51-join    
        Label        -print-boolean-51-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-51-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-53-start         
        PushF        6.600000                  
        Label        -compare-52-start         
        PushF        4.200000                  
        PushF        7.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-53-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-53-equate        
        Pop                                    
        Jump         -compare-53-false         
        Label        -compare-53-equate        
        Pop                                    
        Label        -compare-53-true          
        PushI        1                         
        Jump         -compare-53-join          
        Label        -compare-53-false         
        PushI        0                         
        Jump         -compare-53-join          
        Label        -compare-53-join          
        JumpTrue     -print-boolean-54-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-54-join    
        Label        -print-boolean-54-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-54-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-56-start         
        PushF        9.500000                  
        Label        -compare-55-start         
        PushF        6.700000                  
        PushF        1.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-56-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-56-equate        
        Pop                                    
        Jump         -compare-56-false         
        Label        -compare-56-equate        
        Pop                                    
        Label        -compare-56-true          
        PushI        1                         
        Jump         -compare-56-join          
        Label        -compare-56-false         
        PushI        0                         
        Jump         -compare-56-join          
        Label        -compare-56-join          
        JumpTrue     -print-boolean-57-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-57-join    
        Label        -print-boolean-57-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-57-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-59-start         
        PushF        9.400000                  
        Label        -compare-58-start         
        PushF        1.000000                  
        PushF        2.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-59-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-59-equate        
        Pop                                    
        Jump         -compare-59-false         
        Label        -compare-59-equate        
        Pop                                    
        Label        -compare-59-true          
        PushI        1                         
        Jump         -compare-59-join          
        Label        -compare-59-false         
        PushI        0                         
        Jump         -compare-59-join          
        Label        -compare-59-join          
        JumpTrue     -print-boolean-60-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-60-join    
        Label        -print-boolean-60-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-60-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-62-start         
        PushF        5.500000                  
        Label        -compare-61-start         
        PushF        5.900000                  
        PushF        9.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-62-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-62-equate        
        Pop                                    
        Jump         -compare-62-false         
        Label        -compare-62-equate        
        Pop                                    
        Label        -compare-62-true          
        PushI        1                         
        Jump         -compare-62-join          
        Label        -compare-62-false         
        PushI        0                         
        Jump         -compare-62-join          
        Label        -compare-62-join          
        JumpTrue     -print-boolean-63-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-63-join    
        Label        -print-boolean-63-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-63-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-65-start         
        PushF        7.100000                  
        Label        -compare-64-start         
        PushF        6.700000                  
        PushF        4.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-65-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-65-equate        
        Pop                                    
        Jump         -compare-65-false         
        Label        -compare-65-equate        
        Pop                                    
        Label        -compare-65-true          
        PushI        1                         
        Jump         -compare-65-join          
        Label        -compare-65-false         
        PushI        0                         
        Jump         -compare-65-join          
        Label        -compare-65-join          
        JumpTrue     -print-boolean-66-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-66-join    
        Label        -print-boolean-66-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-66-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-68-start         
        PushF        5.600000                  
        Label        -compare-67-start         
        PushF        6.700000                  
        PushF        4.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-68-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-68-equate        
        Pop                                    
        Jump         -compare-68-false         
        Label        -compare-68-equate        
        Pop                                    
        Label        -compare-68-true          
        PushI        1                         
        Jump         -compare-68-join          
        Label        -compare-68-false         
        PushI        0                         
        Jump         -compare-68-join          
        Label        -compare-68-join          
        JumpTrue     -print-boolean-69-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-69-join    
        Label        -print-boolean-69-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-69-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-71-start         
        PushF        7.700000                  
        Label        -compare-70-start         
        PushF        2.400000                  
        PushF        9.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-71-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-71-equate        
        Pop                                    
        Jump         -compare-71-false         
        Label        -compare-71-equate        
        Pop                                    
        Label        -compare-71-true          
        PushI        1                         
        Jump         -compare-71-join          
        Label        -compare-71-false         
        PushI        0                         
        Jump         -compare-71-join          
        Label        -compare-71-join          
        JumpTrue     -print-boolean-72-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-72-join    
        Label        -print-boolean-72-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-72-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-75-start         
        Label        -compare-73-start         
        PushF        7.700000                  
        PushF        9.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-74-start         
        PushF        2.400000                  
        PushF        3.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-75-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-75-equate        
        Pop                                    
        Jump         -compare-75-false         
        Label        -compare-75-equate        
        Pop                                    
        Label        -compare-75-true          
        PushI        1                         
        Jump         -compare-75-join          
        Label        -compare-75-false         
        PushI        0                         
        Jump         -compare-75-join          
        Label        -compare-75-join          
        JumpTrue     -print-boolean-76-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-76-join    
        Label        -print-boolean-76-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-76-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-79-start         
        Label        -compare-77-start         
        PushF        6.500000                  
        PushF        2.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-78-start         
        PushF        4.700000                  
        PushF        7.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-79-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-79-equate        
        Pop                                    
        Jump         -compare-79-false         
        Label        -compare-79-equate        
        Pop                                    
        Label        -compare-79-true          
        PushI        1                         
        Jump         -compare-79-join          
        Label        -compare-79-false         
        PushI        0                         
        Jump         -compare-79-join          
        Label        -compare-79-join          
        JumpTrue     -print-boolean-80-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-80-join    
        Label        -print-boolean-80-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-80-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-83-start         
        Label        -compare-81-start         
        PushF        4.900000                  
        PushF        4.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-82-start         
        PushF        6.800000                  
        PushF        4.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-83-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-83-equate        
        Pop                                    
        Jump         -compare-83-false         
        Label        -compare-83-equate        
        Pop                                    
        Label        -compare-83-true          
        PushI        1                         
        Jump         -compare-83-join          
        Label        -compare-83-false         
        PushI        0                         
        Jump         -compare-83-join          
        Label        -compare-83-join          
        JumpTrue     -print-boolean-84-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-84-join    
        Label        -print-boolean-84-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-84-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-87-start         
        Label        -compare-85-start         
        PushF        3.800000                  
        PushF        2.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-86-start         
        PushF        9.800000                  
        PushF        8.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-87-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-87-equate        
        Pop                                    
        Jump         -compare-87-false         
        Label        -compare-87-equate        
        Pop                                    
        Label        -compare-87-true          
        PushI        1                         
        Jump         -compare-87-join          
        Label        -compare-87-false         
        PushI        0                         
        Jump         -compare-87-join          
        Label        -compare-87-join          
        JumpTrue     -print-boolean-88-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-88-join    
        Label        -print-boolean-88-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-88-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-91-start         
        Label        -compare-89-start         
        PushF        9.800000                  
        PushF        2.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-90-start         
        PushF        4.400000                  
        PushF        4.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-91-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-91-equate        
        Pop                                    
        Jump         -compare-91-false         
        Label        -compare-91-equate        
        Pop                                    
        Label        -compare-91-true          
        PushI        1                         
        Jump         -compare-91-join          
        Label        -compare-91-false         
        PushI        0                         
        Jump         -compare-91-join          
        Label        -compare-91-join          
        JumpTrue     -print-boolean-92-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-92-join    
        Label        -print-boolean-92-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-92-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-95-start         
        Label        -compare-93-start         
        PushF        3.000000                  
        PushF        7.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-94-start         
        PushF        3.400000                  
        PushF        2.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-95-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-95-equate        
        Pop                                    
        Jump         -compare-95-false         
        Label        -compare-95-equate        
        Pop                                    
        Label        -compare-95-true          
        PushI        1                         
        Jump         -compare-95-join          
        Label        -compare-95-false         
        PushI        0                         
        Jump         -compare-95-join          
        Label        -compare-95-join          
        JumpTrue     -print-boolean-96-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-96-join    
        Label        -print-boolean-96-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-96-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-99-start         
        Label        -compare-97-start         
        PushF        1.700000                  
        PushF        9.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-98-start         
        PushF        4.700000                  
        PushF        4.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-99-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-99-equate        
        Pop                                    
        Jump         -compare-99-false         
        Label        -compare-99-equate        
        Pop                                    
        Label        -compare-99-true          
        PushI        1                         
        Jump         -compare-99-join          
        Label        -compare-99-false         
        PushI        0                         
        Jump         -compare-99-join          
        Label        -compare-99-join          
        JumpTrue     -print-boolean-100-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-100-join   
        Label        -print-boolean-100-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-100-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-103-start        
        Label        -compare-101-start        
        PushF        7.300000                  
        PushF        5.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-102-start        
        PushF        8.100000                  
        PushF        4.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-103-sub          
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-103-equate       
        Pop                                    
        Jump         -compare-103-false        
        Label        -compare-103-equate       
        Pop                                    
        Label        -compare-103-true         
        PushI        1                         
        Jump         -compare-103-join         
        Label        -compare-103-false        
        PushI        0                         
        Jump         -compare-103-join         
        Label        -compare-103-join         
        JumpTrue     -print-boolean-104-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-104-join   
        Label        -print-boolean-104-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-104-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-107-start        
        Label        -compare-105-start        
        PushF        6.900000                  
        PushF        6.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-106-start        
        PushF        5.800000                  
        PushF        9.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-107-sub          
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-107-equate       
        Pop                                    
        Jump         -compare-107-false        
        Label        -compare-107-equate       
        Pop                                    
        Label        -compare-107-true         
        PushI        1                         
        Jump         -compare-107-join         
        Label        -compare-107-false        
        PushI        0                         
        Jump         -compare-107-join         
        Label        -compare-107-join         
        JumpTrue     -print-boolean-108-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-108-join   
        Label        -print-boolean-108-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-108-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-111-start        
        Label        -compare-109-start        
        PushF        2.600000                  
        PushF        4.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-110-start        
        PushF        2.000000                  
        PushF        7.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-111-sub          
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-111-equate       
        Pop                                    
        Jump         -compare-111-false        
        Label        -compare-111-equate       
        Pop                                    
        Label        -compare-111-true         
        PushI        1                         
        Jump         -compare-111-join         
        Label        -compare-111-false        
        PushI        0                         
        Jump         -compare-111-join         
        Label        -compare-111-join         
        JumpTrue     -print-boolean-112-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-112-join   
        Label        -print-boolean-112-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-112-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-115-start        
        Label        -compare-113-start        
        PushF        3.600000                  
        PushF        2.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-114-start        
        PushF        8.400000                  
        PushF        6.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-115-sub          
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-115-equate       
        Pop                                    
        Jump         -compare-115-false        
        Label        -compare-115-equate       
        Pop                                    
        Label        -compare-115-true         
        PushI        1                         
        Jump         -compare-115-join         
        Label        -compare-115-false        
        PushI        0                         
        Jump         -compare-115-join         
        Label        -compare-115-join         
        JumpTrue     -print-boolean-116-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-116-join   
        Label        -print-boolean-116-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-116-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-119-start        
        Label        -compare-117-start        
        PushF        3.900000                  
        PushF        9.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-118-start        
        PushF        6.900000                  
        PushF        6.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-119-sub          
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-119-equate       
        Pop                                    
        Jump         -compare-119-false        
        Label        -compare-119-equate       
        Pop                                    
        Label        -compare-119-true         
        PushI        1                         
        Jump         -compare-119-join         
        Label        -compare-119-false        
        PushI        0                         
        Jump         -compare-119-join         
        Label        -compare-119-join         
        JumpTrue     -print-boolean-120-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-120-join   
        Label        -print-boolean-120-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-120-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Halt                                   
