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
        PushI        34                        
        ConvertF                               
        PushF        1.700000                  
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        45                        
        ConvertF                               
        PushF        3.300000                  
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        3                         
        ConvertF                               
        PushF        8.300000                  
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        47                        
        ConvertF                               
        PushF        7.700000                  
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        34                        
        ConvertF                               
        PushF        4.100000                  
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        78                        
        ConvertF                               
        PushF        4.000000                  
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        67                        
        ConvertF                               
        PushF        9.600000                  
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        3                         
        ConvertF                               
        PushF        9.000000                  
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        66                        
        ConvertF                               
        PushF        8.100000                  
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        21                        
        ConvertF                               
        PushF        2.100000                  
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        23                        
        ConvertF                               
        PushF        6.600000                  
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        61                        
        ConvertF                               
        PushF        1.100000                  
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        9.900000                  
        PushI        30                        
        ConvertF                               
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        4.900000                  
        PushI        57                        
        ConvertF                               
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        8.100000                  
        PushI        39                        
        ConvertF                               
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        1.300000                  
        PushI        71                        
        ConvertF                               
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        2.500000                  
        PushI        71                        
        ConvertF                               
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        4.400000                  
        PushI        67                        
        ConvertF                               
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        3.300000                  
        PushI        44                        
        ConvertF                               
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        5.800000                  
        PushI        78                        
        ConvertF                               
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        8.600000                  
        PushI        39                        
        ConvertF                               
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        9.600000                  
        PushI        1                         
        ConvertF                               
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        3.400000                  
        PushI        49                        
        ConvertF                               
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        3.800000                  
        PushI        65                        
        ConvertF                               
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        34                        
        ConvertF                               
        PushI        77                        
        ConvertF                               
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        44                        
        ConvertF                               
        PushI        28                        
        ConvertF                               
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        93                        
        ConvertF                               
        PushI        57                        
        ConvertF                               
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        36                        
        ConvertF                               
        PushI        26                        
        ConvertF                               
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        25                        
        ConvertF                               
        PushI        76                        
        ConvertF                               
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        4                         
        ConvertF                               
        PushI        38                        
        ConvertF                               
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        6                         
        ConvertF                               
        PushI        40                        
        ConvertF                               
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        86                        
        ConvertF                               
        PushI        29                        
        ConvertF                               
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        17                        
        ConvertF                               
        PushI        84                        
        ConvertF                               
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        79                        
        ConvertF                               
        PushI        69                        
        ConvertF                               
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        35                        
        ConvertF                               
        PushI        70                        
        ConvertF                               
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        27                        
        ConvertF                               
        PushI        78                        
        ConvertF                               
        FSubtract                              
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Halt                                   
