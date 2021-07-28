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
        PushI        82                        
        PushI        25                        
        PushI        78                        
        Multiply                               
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        57                        
        PushI        49                        
        PushI        44                        
        Multiply                               
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        59                        
        PushI        24                        
        PushI        23                        
        Multiply                               
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        98                        
        PushI        44                        
        PushI        23                        
        Multiply                               
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        10                        
        PushI        33                        
        PushI        82                        
        Multiply                               
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        64                        
        PushI        98                        
        PushI        87                        
        Multiply                               
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        35                        
        PushI        45                        
        PushI        86                        
        Multiply                               
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        62                        
        PushI        8                         
        PushI        43                        
        Multiply                               
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        18                        
        PushI        35                        
        PushI        50                        
        Multiply                               
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        83                        
        PushI        55                        
        PushI        32                        
        Multiply                               
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        41                        
        PushI        50                        
        PushI        81                        
        Multiply                               
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        22                        
        PushI        47                        
        PushI        67                        
        Multiply                               
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        87                        
        PushI        21                        
        Multiply                               
        PushI        46                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        4                         
        PushI        41                        
        Multiply                               
        PushI        3                         
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        46                        
        PushI        37                        
        Multiply                               
        PushI        19                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        77                        
        PushI        37                        
        Multiply                               
        PushI        26                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        24                        
        PushI        70                        
        Multiply                               
        PushI        82                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        18                        
        PushI        71                        
        Multiply                               
        PushI        22                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        20                        
        PushI        26                        
        Multiply                               
        PushI        30                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        32                        
        PushI        8                         
        Multiply                               
        PushI        70                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        92                        
        PushI        17                        
        Multiply                               
        PushI        59                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        41                        
        PushI        57                        
        Multiply                               
        PushI        16                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        13                        
        PushI        5                         
        Multiply                               
        PushI        24                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        53                        
        PushI        70                        
        Multiply                               
        PushI        61                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        51                        
        PushI        54                        
        PushI        28                        
        Multiply                               
        Subtract                               
        PushI        93                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        89                        
        PushI        49                        
        PushI        85                        
        Multiply                               
        Subtract                               
        PushI        88                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        24                        
        PushI        80                        
        PushI        33                        
        Multiply                               
        Subtract                               
        PushI        84                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        85                        
        PushI        49                        
        PushI        30                        
        Multiply                               
        Subtract                               
        PushI        7                         
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        36                        
        PushI        26                        
        PushI        4                         
        Multiply                               
        Subtract                               
        PushI        13                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        11                        
        PushI        83                        
        PushI        99                        
        Multiply                               
        Subtract                               
        PushI        87                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        11                        
        PushI        27                        
        PushI        14                        
        Multiply                               
        Subtract                               
        PushI        77                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        47                        
        PushI        25                        
        PushI        51                        
        Multiply                               
        Subtract                               
        PushI        10                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        92                        
        PushI        8                         
        PushI        33                        
        Multiply                               
        Subtract                               
        PushI        75                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        40                        
        PushI        10                        
        PushI        78                        
        Multiply                               
        Subtract                               
        PushI        17                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        75                        
        PushI        16                        
        PushI        23                        
        Multiply                               
        Subtract                               
        PushI        9                         
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        95                        
        PushI        18                        
        PushI        73                        
        Multiply                               
        Subtract                               
        PushI        78                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        53                        
        PushI        79                        
        Multiply                               
        PushI        22                        
        PushI        43                        
        Multiply                               
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        79                        
        PushI        96                        
        Multiply                               
        PushI        60                        
        PushI        91                        
        Multiply                               
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        10                        
        PushI        4                         
        Multiply                               
        PushI        35                        
        PushI        66                        
        Multiply                               
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        97                        
        PushI        80                        
        Multiply                               
        PushI        2                         
        PushI        98                        
        Multiply                               
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        15                        
        PushI        41                        
        Multiply                               
        PushI        99                        
        PushI        3                         
        Multiply                               
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        18                        
        PushI        36                        
        Multiply                               
        PushI        14                        
        PushI        54                        
        Multiply                               
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        24                        
        PushI        25                        
        Multiply                               
        PushI        69                        
        PushI        57                        
        Multiply                               
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        13                        
        PushI        4                         
        Multiply                               
        PushI        13                        
        PushI        67                        
        Multiply                               
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        12                        
        PushI        93                        
        Multiply                               
        PushI        71                        
        PushI        53                        
        Multiply                               
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        63                        
        PushI        4                         
        Multiply                               
        PushI        19                        
        PushI        95                        
        Multiply                               
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        6                         
        PushI        53                        
        Multiply                               
        PushI        82                        
        PushI        82                        
        Multiply                               
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        39                        
        PushI        96                        
        Multiply                               
        PushI        52                        
        PushI        88                        
        Multiply                               
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Halt                                   
