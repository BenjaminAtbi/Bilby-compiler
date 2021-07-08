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
        PushI        96                        
        PushI        62                        
        Multiply                               
        PushI        74                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        51                        
        PushI        92                        
        Multiply                               
        PushI        95                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        20                        
        PushI        76                        
        Multiply                               
        PushI        22                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        90                        
        PushI        71                        
        Multiply                               
        PushI        80                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        20                        
        PushI        31                        
        Multiply                               
        PushI        50                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        30                        
        PushI        89                        
        Multiply                               
        PushI        89                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        59                        
        PushI        30                        
        Multiply                               
        PushI        33                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        70                        
        PushI        36                        
        Multiply                               
        PushI        50                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        69                        
        PushI        98                        
        Multiply                               
        PushI        88                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        5                         
        PushI        99                        
        Multiply                               
        PushI        51                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        97                        
        PushI        79                        
        Multiply                               
        PushI        76                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        51                        
        PushI        49                        
        Multiply                               
        PushI        49                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        30                        
        PushI        96                        
        PushI        89                        
        Multiply                               
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        52                        
        PushI        12                        
        PushI        93                        
        Multiply                               
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        45                        
        PushI        50                        
        PushI        67                        
        Multiply                               
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        5                         
        PushI        6                         
        PushI        22                        
        Multiply                               
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        24                        
        PushI        47                        
        PushI        72                        
        Multiply                               
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        72                        
        PushI        16                        
        PushI        10                        
        Multiply                               
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        74                        
        PushI        95                        
        PushI        74                        
        Multiply                               
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        19                        
        PushI        63                        
        PushI        65                        
        Multiply                               
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        19                        
        PushI        49                        
        PushI        23                        
        Multiply                               
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        95                        
        PushI        41                        
        PushI        91                        
        Multiply                               
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        73                        
        PushI        75                        
        PushI        18                        
        Multiply                               
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        83                        
        PushI        38                        
        PushI        78                        
        Multiply                               
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        70                        
        PushI        39                        
        Multiply                               
        PushI        38                        
        PushI        61                        
        Multiply                               
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        36                        
        PushI        63                        
        Multiply                               
        PushI        84                        
        PushI        48                        
        Multiply                               
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        20                        
        PushI        53                        
        Multiply                               
        PushI        68                        
        PushI        46                        
        Multiply                               
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        10                        
        PushI        10                        
        Multiply                               
        PushI        64                        
        PushI        55                        
        Multiply                               
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        73                        
        PushI        34                        
        Multiply                               
        PushI        24                        
        PushI        87                        
        Multiply                               
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        3                         
        PushI        22                        
        Multiply                               
        PushI        93                        
        PushI        80                        
        Multiply                               
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        19                        
        PushI        92                        
        Multiply                               
        PushI        19                        
        PushI        22                        
        Multiply                               
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        42                        
        PushI        92                        
        Multiply                               
        PushI        14                        
        PushI        19                        
        Multiply                               
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        28                        
        PushI        82                        
        Multiply                               
        PushI        57                        
        PushI        86                        
        Multiply                               
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        9                         
        PushI        58                        
        Multiply                               
        PushI        69                        
        PushI        95                        
        Multiply                               
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        36                        
        PushI        5                         
        Multiply                               
        PushI        45                        
        PushI        95                        
        Multiply                               
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        69                        
        PushI        79                        
        Multiply                               
        PushI        56                        
        PushI        71                        
        Multiply                               
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        48                        
        PushI        53                        
        PushI        68                        
        Multiply                               
        Add                                    
        PushI        28                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        41                        
        PushI        84                        
        PushI        24                        
        Multiply                               
        Add                                    
        PushI        6                         
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        54                        
        PushI        81                        
        PushI        16                        
        Multiply                               
        Add                                    
        PushI        80                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        80                        
        PushI        57                        
        PushI        58                        
        Multiply                               
        Add                                    
        PushI        49                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        43                        
        PushI        81                        
        PushI        36                        
        Multiply                               
        Add                                    
        PushI        85                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        87                        
        PushI        20                        
        PushI        8                         
        Multiply                               
        Add                                    
        PushI        24                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        99                        
        PushI        19                        
        PushI        46                        
        Multiply                               
        Add                                    
        PushI        52                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        60                        
        PushI        46                        
        PushI        22                        
        Multiply                               
        Add                                    
        PushI        64                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        34                        
        PushI        35                        
        PushI        45                        
        Multiply                               
        Add                                    
        PushI        25                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        43                        
        PushI        17                        
        PushI        47                        
        Multiply                               
        Add                                    
        PushI        83                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        57                        
        PushI        87                        
        PushI        14                        
        Multiply                               
        Add                                    
        PushI        28                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        26                        
        PushI        37                        
        PushI        78                        
        Multiply                               
        Add                                    
        PushI        21                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Halt                                   
