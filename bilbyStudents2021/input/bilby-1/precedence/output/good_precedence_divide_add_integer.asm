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
        PushI        25                        
        PushI        39                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        95                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-2-start          
        PushI        27                        
        PushI        79                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        4                         
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-3-start          
        PushI        20                        
        PushI        78                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        52                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-4-start          
        PushI        85                        
        PushI        26                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        66                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-5-start          
        PushI        26                        
        PushI        19                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        73                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-6-start          
        PushI        16                        
        PushI        47                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        6                         
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-7-start          
        PushI        48                        
        PushI        24                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        96                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-8-start          
        PushI        32                        
        PushI        92                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        45                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-9-start          
        PushI        78                        
        PushI        33                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        88                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-10-start         
        PushI        13                        
        PushI        77                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        39                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-11-start         
        PushI        27                        
        PushI        31                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        55                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-12-start         
        PushI        28                        
        PushI        85                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        54                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        3                         
        Label        -compare-13-start         
        PushI        90                        
        PushI        67                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        37                        
        Label        -compare-14-start         
        PushI        38                        
        PushI        83                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        42                        
        Label        -compare-15-start         
        PushI        10                        
        PushI        27                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        73                        
        Label        -compare-16-start         
        PushI        33                        
        PushI        83                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        39                        
        Label        -compare-17-start         
        PushI        62                        
        PushI        60                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        73                        
        Label        -compare-18-start         
        PushI        20                        
        PushI        86                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        19                        
        Label        -compare-19-start         
        PushI        32                        
        PushI        88                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        28                        
        Label        -compare-20-start         
        PushI        88                        
        PushI        26                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        92                        
        Label        -compare-21-start         
        PushI        2                         
        PushI        29                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        2                         
        Label        -compare-22-start         
        PushI        71                        
        PushI        14                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        12                        
        Label        -compare-23-start         
        PushI        86                        
        PushI        39                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        31                        
        Label        -compare-24-start         
        PushI        72                        
        PushI        96                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-25-start         
        PushI        19                        
        PushI        79                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-26-start         
        PushI        42                        
        PushI        59                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-27-start         
        PushI        19                        
        PushI        38                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-28-start         
        PushI        12                        
        PushI        37                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-29-start         
        PushI        6                         
        PushI        8                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-30-start         
        PushI        54                        
        PushI        80                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-31-start         
        PushI        70                        
        PushI        42                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-32-start         
        PushI        2                         
        PushI        39                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-33-start         
        PushI        64                        
        PushI        46                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-34-start         
        PushI        38                        
        PushI        62                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-35-start         
        PushI        5                         
        PushI        36                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-36-start         
        PushI        69                        
        PushI        51                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-37-start         
        PushI        54                        
        PushI        46                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-38-start         
        PushI        69                        
        PushI        25                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-39-start         
        PushI        21                        
        PushI        31                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-40-start         
        PushI        97                        
        PushI        42                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-41-start         
        PushI        36                        
        PushI        42                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-42-start         
        PushI        40                        
        PushI        99                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-43-start         
        PushI        51                        
        PushI        46                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-44-start         
        PushI        54                        
        PushI        93                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-45-start         
        PushI        98                        
        PushI        47                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-46-start         
        PushI        9                         
        PushI        61                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-47-start         
        PushI        97                        
        PushI        48                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-48-start         
        PushI        36                        
        PushI        32                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        58                        
        Label        -compare-49-start         
        PushI        18                        
        PushI        54                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushI        58                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        8                         
        Label        -compare-50-start         
        PushI        80                        
        PushI        11                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushI        32                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        21                        
        Label        -compare-51-start         
        PushI        69                        
        PushI        90                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushI        38                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        95                        
        Label        -compare-52-start         
        PushI        91                        
        PushI        88                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushI        30                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        10                        
        Label        -compare-53-start         
        PushI        15                        
        PushI        23                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushI        44                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        69                        
        Label        -compare-54-start         
        PushI        71                        
        PushI        1                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushI        51                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        14                        
        Label        -compare-55-start         
        PushI        86                        
        PushI        67                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushI        91                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        94                        
        Label        -compare-56-start         
        PushI        35                        
        PushI        54                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushI        63                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        74                        
        Label        -compare-57-start         
        PushI        41                        
        PushI        75                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushI        6                         
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        79                        
        Label        -compare-58-start         
        PushI        27                        
        PushI        88                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushI        93                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        63                        
        Label        -compare-59-start         
        PushI        87                        
        PushI        94                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushI        24                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        23                        
        Label        -compare-60-start         
        PushI        68                        
        PushI        87                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushI        5                         
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Halt                                   
