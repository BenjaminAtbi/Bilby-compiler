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
        DataC        97                        %% "array out of bounds"
        DataC        114                       
        DataC        114                       
        DataC        97                        
        DataC        121                       
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
        DataC        97                        %% "array has negative length"
        DataC        114                       
        DataC        114                       
        DataC        97                        
        DataC        121                       
        DataC        32                        
        DataC        104                       
        DataC        97                        
        DataC        115                       
        DataC        32                        
        DataC        110                       
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
        DataC        0                         
        Label        $$array-negative-length   
        PushD        $array-negative-length    
        Jump         $$general-runtime-error   
        DLabel       $reference-space-1        
        DataZ        4                         
        DLabel       $reference-space-2        
        DataZ        4                         
        DLabel       $reference-space-Iter     
        DataZ        4                         
        DLabel       $usable-memory-start      
        DLabel       $global-memory-block      
        DataZ        0                         
        Label        $$main                    
        Label        -compare-1-start          
        PushI        86                        
        Nop                                    
        PushI        96                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-2-start          
        PushI        115                       
        Nop                                    
        PushI        16                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-3-start          
        PushI        61                        
        Nop                                    
        PushI        64                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-4-start          
        PushI        83                        
        Nop                                    
        PushI        66                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-5-start          
        PushI        91                        
        Nop                                    
        PushI        19                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-6-start          
        PushI        71                        
        Nop                                    
        PushI        52                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-7-start          
        PushI        43                        
        Nop                                    
        PushI        55                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-8-start          
        PushI        36                        
        Nop                                    
        PushI        74                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-9-start          
        PushI        102                       
        Nop                                    
        PushI        1                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-10-start         
        PushI        117                       
        Nop                                    
        PushI        51                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-11-start         
        PushI        76                        
        Nop                                    
        PushI        19                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-12-start         
        PushI        68                        
        Nop                                    
        PushI        42                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-13-start         
        PushI        59                        
        PushI        92                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-14-start         
        PushI        18                        
        PushI        32                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-15-start         
        PushI        42                        
        PushI        76                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-16-start         
        PushI        55                        
        PushI        66                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-17-start         
        PushI        75                        
        PushI        125                       
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-18-start         
        PushI        79                        
        PushI        97                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-19-start         
        PushI        51                        
        PushI        103                       
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-20-start         
        PushI        12                        
        PushI        62                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-21-start         
        PushI        87                        
        PushI        41                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-22-start         
        PushI        69                        
        PushI        100                       
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-23-start         
        PushI        17                        
        PushI        117                       
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-24-start         
        PushI        35                        
        PushI        92                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-25-start         
        PushI        107                       
        Nop                                    
        PushI        103                       
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-26-start         
        PushI        41                        
        Nop                                    
        PushI        103                       
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-27-start         
        PushI        106                       
        Nop                                    
        PushI        87                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-28-start         
        PushI        97                        
        Nop                                    
        PushI        47                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-29-start         
        PushI        69                        
        Nop                                    
        PushI        80                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-30-start         
        PushI        101                       
        Nop                                    
        PushI        117                       
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-31-start         
        PushI        73                        
        Nop                                    
        PushI        79                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-32-start         
        PushI        93                        
        Nop                                    
        PushI        102                       
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-33-start         
        PushI        73                        
        Nop                                    
        PushI        72                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-34-start         
        PushI        60                        
        Nop                                    
        PushI        91                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-35-start         
        PushI        109                       
        Nop                                    
        PushI        34                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-36-start         
        PushI        61                        
        Nop                                    
        PushI        83                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Halt                                   
