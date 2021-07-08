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
        PushI        87                        
        PushI        74                        
        Multiply                               
        PushI        78                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        16                        
        PushI        16                        
        Multiply                               
        PushI        66                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        16                        
        PushI        19                        
        Multiply                               
        PushI        24                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        88                        
        PushI        95                        
        Multiply                               
        PushI        35                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        97                        
        PushI        99                        
        Multiply                               
        PushI        47                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        90                        
        PushI        96                        
        Multiply                               
        PushI        53                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        78                        
        PushI        70                        
        Multiply                               
        PushI        45                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        17                        
        PushI        55                        
        Multiply                               
        PushI        96                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        75                        
        PushI        93                        
        Multiply                               
        PushI        11                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        5                         
        PushI        72                        
        Multiply                               
        PushI        86                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        8                         
        PushI        87                        
        Multiply                               
        PushI        91                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        19                        
        PushI        79                        
        Multiply                               
        PushI        25                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        70                        
        PushI        11                        
        Multiply                               
        PushI        98                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        32                        
        PushI        62                        
        Multiply                               
        PushI        99                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        49                        
        PushI        87                        
        Multiply                               
        PushI        58                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        3                         
        PushI        52                        
        Multiply                               
        PushI        91                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        93                        
        PushI        87                        
        Multiply                               
        PushI        39                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        28                        
        PushI        22                        
        Multiply                               
        PushI        46                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        28                        
        PushI        67                        
        Multiply                               
        PushI        28                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        97                        
        PushI        20                        
        Multiply                               
        PushI        7                         
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        19                        
        PushI        25                        
        Multiply                               
        PushI        37                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        45                        
        PushI        32                        
        Multiply                               
        PushI        87                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        2                         
        PushI        62                        
        Multiply                               
        PushI        40                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        73                        
        PushI        52                        
        Multiply                               
        PushI        59                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        14                        
        PushI        68                        
        Multiply                               
        PushI        81                        
        Multiply                               
        PushI        60                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        9                         
        PushI        14                        
        Multiply                               
        PushI        32                        
        Multiply                               
        PushI        95                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        8                         
        PushI        6                         
        Multiply                               
        PushI        52                        
        Multiply                               
        PushI        40                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        81                        
        PushI        5                         
        Multiply                               
        PushI        91                        
        Multiply                               
        PushI        52                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        44                        
        PushI        53                        
        Multiply                               
        PushI        28                        
        Multiply                               
        PushI        37                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        53                        
        PushI        61                        
        Multiply                               
        PushI        82                        
        Multiply                               
        PushI        48                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        68                        
        PushI        41                        
        Multiply                               
        PushI        95                        
        Multiply                               
        PushI        22                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        15                        
        PushI        11                        
        Multiply                               
        PushI        32                        
        Multiply                               
        PushI        90                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        48                        
        PushI        22                        
        Multiply                               
        PushI        15                        
        Multiply                               
        PushI        16                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        39                        
        PushI        87                        
        Multiply                               
        PushI        5                         
        Multiply                               
        PushI        17                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        41                        
        PushI        58                        
        Multiply                               
        PushI        5                         
        Multiply                               
        PushI        59                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        14                        
        PushI        13                        
        Multiply                               
        PushI        96                        
        Multiply                               
        PushI        73                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        67                        
        PushI        17                        
        Multiply                               
        PushI        48                        
        Multiply                               
        PushI        37                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        17                        
        PushI        73                        
        Multiply                               
        PushI        3                         
        Multiply                               
        PushI        50                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        21                        
        PushI        90                        
        Multiply                               
        PushI        27                        
        Multiply                               
        PushI        73                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        96                        
        PushI        20                        
        Multiply                               
        PushI        82                        
        Multiply                               
        PushI        54                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        90                        
        PushI        76                        
        Multiply                               
        PushI        8                         
        Multiply                               
        PushI        85                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        1                         
        PushI        4                         
        Multiply                               
        PushI        90                        
        Multiply                               
        PushI        38                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        57                        
        PushI        88                        
        Multiply                               
        PushI        17                        
        Multiply                               
        PushI        71                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        36                        
        PushI        53                        
        Multiply                               
        PushI        80                        
        Multiply                               
        PushI        21                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        82                        
        PushI        29                        
        Multiply                               
        PushI        37                        
        Multiply                               
        PushI        11                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        7                         
        PushI        79                        
        Multiply                               
        PushI        34                        
        Multiply                               
        PushI        40                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        46                        
        PushI        53                        
        Multiply                               
        PushI        98                        
        Multiply                               
        PushI        56                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        1                         
        PushI        65                        
        Multiply                               
        PushI        58                        
        Multiply                               
        PushI        55                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Halt                                   
