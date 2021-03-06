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
        Label        -compare-1-start          
        PushF        2.200000                  
        PushF        9.100000                  
        FAdd                                   
        PushF        2.100000                  
        Label        -compare-1-sub            
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-1-join           
        Nop                                    
        Jump         -compare-1-false          
        Label        -compare-1-join           
        Pop                                    
        Label        -compare-1-true           
        PushI        1                         
        Jump         -compare-1-join           
        Label        -compare-1-false          
        PushI        0                         
        Jump         -compare-1-join           
        Label        -compare-1-join           
        JumpTrue     -print-boolean-2-true     
        PushD        $boolean-false-string     
        Jump         -print-boolean-2-join     
        Label        -print-boolean-2-true     
        PushD        $boolean-true-string      
        Label        -print-boolean-2-join     
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-3-start          
        PushF        4.200000                  
        PushF        6.900000                  
        FAdd                                   
        PushF        3.600000                  
        Label        -compare-3-sub            
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-3-join           
        Nop                                    
        Jump         -compare-3-false          
        Label        -compare-3-join           
        Pop                                    
        Label        -compare-3-true           
        PushI        1                         
        Jump         -compare-3-join           
        Label        -compare-3-false          
        PushI        0                         
        Jump         -compare-3-join           
        Label        -compare-3-join           
        JumpTrue     -print-boolean-4-true     
        PushD        $boolean-false-string     
        Jump         -print-boolean-4-join     
        Label        -print-boolean-4-true     
        PushD        $boolean-true-string      
        Label        -print-boolean-4-join     
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-5-start          
        PushF        8.800000                  
        PushF        7.700000                  
        FAdd                                   
        PushF        6.900000                  
        Label        -compare-5-sub            
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-5-join           
        Nop                                    
        Jump         -compare-5-false          
        Label        -compare-5-join           
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
        Label        -compare-7-start          
        PushF        4.600000                  
        PushF        2.400000                  
        FAdd                                   
        PushF        3.400000                  
        Label        -compare-7-sub            
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-7-join           
        Nop                                    
        Jump         -compare-7-false          
        Label        -compare-7-join           
        Pop                                    
        Label        -compare-7-true           
        PushI        1                         
        Jump         -compare-7-join           
        Label        -compare-7-false          
        PushI        0                         
        Jump         -compare-7-join           
        Label        -compare-7-join           
        JumpTrue     -print-boolean-8-true     
        PushD        $boolean-false-string     
        Jump         -print-boolean-8-join     
        Label        -print-boolean-8-true     
        PushD        $boolean-true-string      
        Label        -print-boolean-8-join     
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-9-start          
        PushF        1.700000                  
        PushF        3.500000                  
        FAdd                                   
        PushF        8.100000                  
        Label        -compare-9-sub            
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-9-join           
        Nop                                    
        Jump         -compare-9-false          
        Label        -compare-9-join           
        Pop                                    
        Label        -compare-9-true           
        PushI        1                         
        Jump         -compare-9-join           
        Label        -compare-9-false          
        PushI        0                         
        Jump         -compare-9-join           
        Label        -compare-9-join           
        JumpTrue     -print-boolean-10-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-10-join    
        Label        -print-boolean-10-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-10-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-11-start         
        PushF        5.900000                  
        PushF        1.000000                  
        FAdd                                   
        PushF        1.700000                  
        Label        -compare-11-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-11-join          
        Nop                                    
        Jump         -compare-11-false         
        Label        -compare-11-join          
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
        Label        -compare-13-start         
        PushF        5.500000                  
        PushF        5.100000                  
        FAdd                                   
        PushF        9.300000                  
        Label        -compare-13-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-13-join          
        Nop                                    
        Jump         -compare-13-false         
        Label        -compare-13-join          
        Pop                                    
        Label        -compare-13-true          
        PushI        1                         
        Jump         -compare-13-join          
        Label        -compare-13-false         
        PushI        0                         
        Jump         -compare-13-join          
        Label        -compare-13-join          
        JumpTrue     -print-boolean-14-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-14-join    
        Label        -print-boolean-14-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-14-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-15-start         
        PushF        7.900000                  
        PushF        3.200000                  
        FAdd                                   
        PushF        9.400000                  
        Label        -compare-15-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-15-join          
        Nop                                    
        Jump         -compare-15-false         
        Label        -compare-15-join          
        Pop                                    
        Label        -compare-15-true          
        PushI        1                         
        Jump         -compare-15-join          
        Label        -compare-15-false         
        PushI        0                         
        Jump         -compare-15-join          
        Label        -compare-15-join          
        JumpTrue     -print-boolean-16-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-16-join    
        Label        -print-boolean-16-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-16-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-17-start         
        PushF        1.400000                  
        PushF        5.200000                  
        FAdd                                   
        PushF        2.900000                  
        Label        -compare-17-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-17-join          
        Nop                                    
        Jump         -compare-17-false         
        Label        -compare-17-join          
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
        Label        -compare-19-start         
        PushF        9.200000                  
        PushF        7.200000                  
        FAdd                                   
        PushF        7.500000                  
        Label        -compare-19-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-19-join          
        Nop                                    
        Jump         -compare-19-false         
        Label        -compare-19-join          
        Pop                                    
        Label        -compare-19-true          
        PushI        1                         
        Jump         -compare-19-join          
        Label        -compare-19-false         
        PushI        0                         
        Jump         -compare-19-join          
        Label        -compare-19-join          
        JumpTrue     -print-boolean-20-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-20-join    
        Label        -print-boolean-20-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-20-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-21-start         
        PushF        3.400000                  
        PushF        8.900000                  
        FAdd                                   
        PushF        5.400000                  
        Label        -compare-21-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-21-join          
        Nop                                    
        Jump         -compare-21-false         
        Label        -compare-21-join          
        Pop                                    
        Label        -compare-21-true          
        PushI        1                         
        Jump         -compare-21-join          
        Label        -compare-21-false         
        PushI        0                         
        Jump         -compare-21-join          
        Label        -compare-21-join          
        JumpTrue     -print-boolean-22-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-22-join    
        Label        -print-boolean-22-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-22-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-23-start         
        PushF        7.800000                  
        PushF        1.700000                  
        FAdd                                   
        PushF        2.500000                  
        Label        -compare-23-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-23-join          
        Nop                                    
        Jump         -compare-23-false         
        Label        -compare-23-join          
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
        Label        -compare-25-start         
        PushF        3.400000                  
        PushF        3.700000                  
        PushF        9.800000                  
        FAdd                                   
        Label        -compare-25-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-25-join          
        Nop                                    
        Jump         -compare-25-false         
        Label        -compare-25-join          
        Pop                                    
        Label        -compare-25-true          
        PushI        1                         
        Jump         -compare-25-join          
        Label        -compare-25-false         
        PushI        0                         
        Jump         -compare-25-join          
        Label        -compare-25-join          
        JumpTrue     -print-boolean-26-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-26-join    
        Label        -print-boolean-26-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-26-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-27-start         
        PushF        9.800000                  
        PushF        6.400000                  
        PushF        9.800000                  
        FAdd                                   
        Label        -compare-27-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-27-join          
        Nop                                    
        Jump         -compare-27-false         
        Label        -compare-27-join          
        Pop                                    
        Label        -compare-27-true          
        PushI        1                         
        Jump         -compare-27-join          
        Label        -compare-27-false         
        PushI        0                         
        Jump         -compare-27-join          
        Label        -compare-27-join          
        JumpTrue     -print-boolean-28-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-28-join    
        Label        -print-boolean-28-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-28-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-29-start         
        PushF        8.500000                  
        PushF        9.700000                  
        PushF        2.700000                  
        FAdd                                   
        Label        -compare-29-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-29-join          
        Nop                                    
        Jump         -compare-29-false         
        Label        -compare-29-join          
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
        Label        -compare-31-start         
        PushF        8.600000                  
        PushF        7.500000                  
        PushF        1.300000                  
        FAdd                                   
        Label        -compare-31-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-31-join          
        Nop                                    
        Jump         -compare-31-false         
        Label        -compare-31-join          
        Pop                                    
        Label        -compare-31-true          
        PushI        1                         
        Jump         -compare-31-join          
        Label        -compare-31-false         
        PushI        0                         
        Jump         -compare-31-join          
        Label        -compare-31-join          
        JumpTrue     -print-boolean-32-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-32-join    
        Label        -print-boolean-32-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-32-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-33-start         
        PushF        6.200000                  
        PushF        1.500000                  
        PushF        9.100000                  
        FAdd                                   
        Label        -compare-33-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-33-join          
        Nop                                    
        Jump         -compare-33-false         
        Label        -compare-33-join          
        Pop                                    
        Label        -compare-33-true          
        PushI        1                         
        Jump         -compare-33-join          
        Label        -compare-33-false         
        PushI        0                         
        Jump         -compare-33-join          
        Label        -compare-33-join          
        JumpTrue     -print-boolean-34-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-34-join    
        Label        -print-boolean-34-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-34-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-35-start         
        PushF        4.400000                  
        PushF        5.200000                  
        PushF        7.600000                  
        FAdd                                   
        Label        -compare-35-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-35-join          
        Nop                                    
        Jump         -compare-35-false         
        Label        -compare-35-join          
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
        Label        -compare-37-start         
        PushF        4.000000                  
        PushF        3.600000                  
        PushF        8.100000                  
        FAdd                                   
        Label        -compare-37-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-37-join          
        Nop                                    
        Jump         -compare-37-false         
        Label        -compare-37-join          
        Pop                                    
        Label        -compare-37-true          
        PushI        1                         
        Jump         -compare-37-join          
        Label        -compare-37-false         
        PushI        0                         
        Jump         -compare-37-join          
        Label        -compare-37-join          
        JumpTrue     -print-boolean-38-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-38-join    
        Label        -print-boolean-38-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-38-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-39-start         
        PushF        8.500000                  
        PushF        2.200000                  
        PushF        5.900000                  
        FAdd                                   
        Label        -compare-39-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-39-join          
        Nop                                    
        Jump         -compare-39-false         
        Label        -compare-39-join          
        Pop                                    
        Label        -compare-39-true          
        PushI        1                         
        Jump         -compare-39-join          
        Label        -compare-39-false         
        PushI        0                         
        Jump         -compare-39-join          
        Label        -compare-39-join          
        JumpTrue     -print-boolean-40-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-40-join    
        Label        -print-boolean-40-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-40-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-41-start         
        PushF        9.500000                  
        PushF        2.400000                  
        PushF        1.800000                  
        FAdd                                   
        Label        -compare-41-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-41-join          
        Nop                                    
        Jump         -compare-41-false         
        Label        -compare-41-join          
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
        Label        -compare-43-start         
        PushF        9.500000                  
        PushF        5.200000                  
        PushF        6.200000                  
        FAdd                                   
        Label        -compare-43-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-43-join          
        Nop                                    
        Jump         -compare-43-false         
        Label        -compare-43-join          
        Pop                                    
        Label        -compare-43-true          
        PushI        1                         
        Jump         -compare-43-join          
        Label        -compare-43-false         
        PushI        0                         
        Jump         -compare-43-join          
        Label        -compare-43-join          
        JumpTrue     -print-boolean-44-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-44-join    
        Label        -print-boolean-44-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-44-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-45-start         
        PushF        8.900000                  
        PushF        5.400000                  
        PushF        8.900000                  
        FAdd                                   
        Label        -compare-45-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-45-join          
        Nop                                    
        Jump         -compare-45-false         
        Label        -compare-45-join          
        Pop                                    
        Label        -compare-45-true          
        PushI        1                         
        Jump         -compare-45-join          
        Label        -compare-45-false         
        PushI        0                         
        Jump         -compare-45-join          
        Label        -compare-45-join          
        JumpTrue     -print-boolean-46-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-46-join    
        Label        -print-boolean-46-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-46-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-47-start         
        PushF        5.200000                  
        PushF        4.400000                  
        PushF        6.500000                  
        FAdd                                   
        Label        -compare-47-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-47-join          
        Nop                                    
        Jump         -compare-47-false         
        Label        -compare-47-join          
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
        Label        -compare-49-start         
        PushF        2.400000                  
        PushF        6.600000                  
        FAdd                                   
        PushF        3.800000                  
        PushF        8.000000                  
        FAdd                                   
        Label        -compare-49-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-49-join          
        Nop                                    
        Jump         -compare-49-false         
        Label        -compare-49-join          
        Pop                                    
        Label        -compare-49-true          
        PushI        1                         
        Jump         -compare-49-join          
        Label        -compare-49-false         
        PushI        0                         
        Jump         -compare-49-join          
        Label        -compare-49-join          
        JumpTrue     -print-boolean-50-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-50-join    
        Label        -print-boolean-50-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-50-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-51-start         
        PushF        9.700000                  
        PushF        6.400000                  
        FAdd                                   
        PushF        4.900000                  
        PushF        3.400000                  
        FAdd                                   
        Label        -compare-51-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-51-join          
        Nop                                    
        Jump         -compare-51-false         
        Label        -compare-51-join          
        Pop                                    
        Label        -compare-51-true          
        PushI        1                         
        Jump         -compare-51-join          
        Label        -compare-51-false         
        PushI        0                         
        Jump         -compare-51-join          
        Label        -compare-51-join          
        JumpTrue     -print-boolean-52-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-52-join    
        Label        -print-boolean-52-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-52-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-53-start         
        PushF        3.300000                  
        PushF        4.300000                  
        FAdd                                   
        PushF        9.900000                  
        PushF        5.400000                  
        FAdd                                   
        Label        -compare-53-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-53-join          
        Nop                                    
        Jump         -compare-53-false         
        Label        -compare-53-join          
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
        Label        -compare-55-start         
        PushF        7.200000                  
        PushF        9.000000                  
        FAdd                                   
        PushF        1.400000                  
        PushF        4.900000                  
        FAdd                                   
        Label        -compare-55-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-55-join          
        Nop                                    
        Jump         -compare-55-false         
        Label        -compare-55-join          
        Pop                                    
        Label        -compare-55-true          
        PushI        1                         
        Jump         -compare-55-join          
        Label        -compare-55-false         
        PushI        0                         
        Jump         -compare-55-join          
        Label        -compare-55-join          
        JumpTrue     -print-boolean-56-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-56-join    
        Label        -print-boolean-56-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-56-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-57-start         
        PushF        3.600000                  
        PushF        6.100000                  
        FAdd                                   
        PushF        1.800000                  
        PushF        4.900000                  
        FAdd                                   
        Label        -compare-57-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-57-join          
        Nop                                    
        Jump         -compare-57-false         
        Label        -compare-57-join          
        Pop                                    
        Label        -compare-57-true          
        PushI        1                         
        Jump         -compare-57-join          
        Label        -compare-57-false         
        PushI        0                         
        Jump         -compare-57-join          
        Label        -compare-57-join          
        JumpTrue     -print-boolean-58-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-58-join    
        Label        -print-boolean-58-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-58-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-59-start         
        PushF        8.600000                  
        PushF        8.500000                  
        FAdd                                   
        PushF        4.500000                  
        PushF        7.000000                  
        FAdd                                   
        Label        -compare-59-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-59-join          
        Nop                                    
        Jump         -compare-59-false         
        Label        -compare-59-join          
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
        Label        -compare-61-start         
        PushF        9.300000                  
        PushF        7.900000                  
        FAdd                                   
        PushF        7.800000                  
        PushF        8.200000                  
        FAdd                                   
        Label        -compare-61-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-61-join          
        Nop                                    
        Jump         -compare-61-false         
        Label        -compare-61-join          
        Pop                                    
        Label        -compare-61-true          
        PushI        1                         
        Jump         -compare-61-join          
        Label        -compare-61-false         
        PushI        0                         
        Jump         -compare-61-join          
        Label        -compare-61-join          
        JumpTrue     -print-boolean-62-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-62-join    
        Label        -print-boolean-62-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-62-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-63-start         
        PushF        5.700000                  
        PushF        4.600000                  
        FAdd                                   
        PushF        2.600000                  
        PushF        3.200000                  
        FAdd                                   
        Label        -compare-63-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-63-join          
        Nop                                    
        Jump         -compare-63-false         
        Label        -compare-63-join          
        Pop                                    
        Label        -compare-63-true          
        PushI        1                         
        Jump         -compare-63-join          
        Label        -compare-63-false         
        PushI        0                         
        Jump         -compare-63-join          
        Label        -compare-63-join          
        JumpTrue     -print-boolean-64-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-64-join    
        Label        -print-boolean-64-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-64-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-65-start         
        PushF        7.700000                  
        PushF        6.200000                  
        FAdd                                   
        PushF        6.300000                  
        PushF        3.900000                  
        FAdd                                   
        Label        -compare-65-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-65-join          
        Nop                                    
        Jump         -compare-65-false         
        Label        -compare-65-join          
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
        Label        -compare-67-start         
        PushF        2.300000                  
        PushF        9.600000                  
        FAdd                                   
        PushF        8.100000                  
        PushF        5.400000                  
        FAdd                                   
        Label        -compare-67-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-67-join          
        Nop                                    
        Jump         -compare-67-false         
        Label        -compare-67-join          
        Pop                                    
        Label        -compare-67-true          
        PushI        1                         
        Jump         -compare-67-join          
        Label        -compare-67-false         
        PushI        0                         
        Jump         -compare-67-join          
        Label        -compare-67-join          
        JumpTrue     -print-boolean-68-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-68-join    
        Label        -print-boolean-68-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-68-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-69-start         
        PushF        7.900000                  
        PushF        2.700000                  
        FAdd                                   
        PushF        5.200000                  
        PushF        2.600000                  
        FAdd                                   
        Label        -compare-69-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-69-join          
        Nop                                    
        Jump         -compare-69-false         
        Label        -compare-69-join          
        Pop                                    
        Label        -compare-69-true          
        PushI        1                         
        Jump         -compare-69-join          
        Label        -compare-69-false         
        PushI        0                         
        Jump         -compare-69-join          
        Label        -compare-69-join          
        JumpTrue     -print-boolean-70-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-70-join    
        Label        -print-boolean-70-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-70-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-71-start         
        PushF        6.900000                  
        PushF        9.600000                  
        FAdd                                   
        PushF        7.300000                  
        PushF        4.900000                  
        FAdd                                   
        Label        -compare-71-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-71-join          
        Nop                                    
        Jump         -compare-71-false         
        Label        -compare-71-join          
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
        Halt                                   
