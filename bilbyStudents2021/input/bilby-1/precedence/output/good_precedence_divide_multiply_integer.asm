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
        PushI        41                        
        PushI        32                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        35                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-2-start          
        PushI        22                        
        PushI        78                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        74                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-3-start          
        PushI        90                        
        PushI        93                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        72                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-4-start          
        PushI        98                        
        PushI        89                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        8                         
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-5-start          
        PushI        89                        
        PushI        46                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        76                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-6-start          
        PushI        26                        
        PushI        85                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        10                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-7-start          
        PushI        34                        
        PushI        37                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        47                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-8-start          
        PushI        25                        
        PushI        24                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        90                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-9-start          
        PushI        17                        
        PushI        18                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        49                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-10-start         
        PushI        16                        
        PushI        71                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        24                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-11-start         
        PushI        52                        
        PushI        2                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        5                         
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-12-start         
        PushI        71                        
        PushI        55                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        19                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-13-start         
        PushI        92                        
        PushI        55                        
        Multiply                               
        PushI        80                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-14-start         
        PushI        88                        
        PushI        5                         
        Multiply                               
        PushI        57                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-15-start         
        PushI        25                        
        PushI        28                        
        Multiply                               
        PushI        17                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-16-start         
        PushI        63                        
        PushI        96                        
        Multiply                               
        PushI        95                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-17-start         
        PushI        20                        
        PushI        44                        
        Multiply                               
        PushI        18                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-18-start         
        PushI        94                        
        PushI        63                        
        Multiply                               
        PushI        54                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-19-start         
        PushI        33                        
        PushI        64                        
        Multiply                               
        PushI        42                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-20-start         
        PushI        37                        
        PushI        76                        
        Multiply                               
        PushI        48                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-21-start         
        PushI        42                        
        PushI        8                         
        Multiply                               
        PushI        24                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-22-start         
        PushI        46                        
        PushI        16                        
        Multiply                               
        PushI        60                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-23-start         
        PushI        86                        
        PushI        33                        
        Multiply                               
        PushI        54                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-24-start         
        PushI        66                        
        PushI        59                        
        Multiply                               
        PushI        53                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-26-start         
        Label        -compare-25-start         
        PushI        25                        
        PushI        35                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        55                        
        Multiply                               
        PushI        43                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-28-start         
        Label        -compare-27-start         
        PushI        14                        
        PushI        25                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        78                        
        Multiply                               
        PushI        79                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-30-start         
        Label        -compare-29-start         
        PushI        70                        
        PushI        34                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        82                        
        Multiply                               
        PushI        41                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-32-start         
        Label        -compare-31-start         
        PushI        97                        
        PushI        92                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        18                        
        Multiply                               
        PushI        14                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-34-start         
        Label        -compare-33-start         
        PushI        8                         
        PushI        69                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        86                        
        Multiply                               
        PushI        63                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-36-start         
        Label        -compare-35-start         
        PushI        80                        
        PushI        78                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        40                        
        Multiply                               
        PushI        28                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-38-start         
        Label        -compare-37-start         
        PushI        51                        
        PushI        82                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        80                        
        Multiply                               
        PushI        95                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-40-start         
        Label        -compare-39-start         
        PushI        19                        
        PushI        99                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        2                         
        Multiply                               
        PushI        80                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-42-start         
        Label        -compare-41-start         
        PushI        21                        
        PushI        4                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        30                        
        Multiply                               
        PushI        3                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-44-start         
        Label        -compare-43-start         
        PushI        62                        
        PushI        50                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        99                        
        Multiply                               
        PushI        73                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-46-start         
        Label        -compare-45-start         
        PushI        90                        
        PushI        62                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        52                        
        Multiply                               
        PushI        36                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-48-start         
        Label        -compare-47-start         
        PushI        58                        
        PushI        13                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        29                        
        Multiply                               
        PushI        85                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-49-start         
        PushI        78                        
        PushI        60                        
        Multiply                               
        PushI        23                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        8                         
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-50-start         
        PushI        26                        
        PushI        81                        
        Multiply                               
        PushI        69                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        92                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-51-start         
        PushI        90                        
        PushI        12                        
        Multiply                               
        PushI        86                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        83                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-52-start         
        PushI        11                        
        PushI        86                        
        Multiply                               
        PushI        97                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        77                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-53-start         
        PushI        17                        
        PushI        51                        
        Multiply                               
        PushI        10                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        50                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-54-start         
        PushI        52                        
        PushI        65                        
        Multiply                               
        PushI        70                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        45                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-55-start         
        PushI        60                        
        PushI        38                        
        Multiply                               
        PushI        85                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        31                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-56-start         
        PushI        22                        
        PushI        19                        
        Multiply                               
        PushI        58                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        68                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-57-start         
        PushI        90                        
        PushI        87                        
        Multiply                               
        PushI        56                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        31                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-58-start         
        PushI        90                        
        PushI        74                        
        Multiply                               
        PushI        5                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        30                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-59-start         
        PushI        17                        
        PushI        32                        
        Multiply                               
        PushI        97                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        47                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-60-start         
        PushI        65                        
        PushI        24                        
        Multiply                               
        PushI        13                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        82                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Halt                                   
