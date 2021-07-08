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
        PushI        88                        
        PushI        49                        
        Multiply                               
        PushI        91                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-2-start          
        PushI        98                        
        PushI        44                        
        Multiply                               
        PushI        88                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-3-start          
        PushI        68                        
        PushI        19                        
        Multiply                               
        PushI        15                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-4-start          
        PushI        95                        
        PushI        49                        
        Multiply                               
        PushI        37                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-5-start          
        PushI        92                        
        PushI        83                        
        Multiply                               
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
        PushI        68                        
        PushI        39                        
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
        Label        -compare-7-start          
        PushI        96                        
        PushI        98                        
        Multiply                               
        PushI        35                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-8-start          
        PushI        50                        
        PushI        36                        
        Multiply                               
        PushI        68                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-9-start          
        PushI        9                         
        PushI        39                        
        Multiply                               
        PushI        11                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-10-start         
        PushI        34                        
        PushI        43                        
        Multiply                               
        PushI        96                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-11-start         
        PushI        46                        
        PushI        71                        
        Multiply                               
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
        PushI        59                        
        PushI        84                        
        Multiply                               
        PushI        71                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-13-start         
        PushI        82                        
        PushI        69                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        46                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-14-start         
        PushI        87                        
        PushI        75                        
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
        Label        -compare-15-start         
        PushI        73                        
        PushI        3                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        28                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-16-start         
        PushI        61                        
        PushI        57                        
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
        Label        -compare-17-start         
        PushI        86                        
        PushI        90                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        58                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-18-start         
        PushI        36                        
        PushI        49                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        66                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-19-start         
        PushI        30                        
        PushI        80                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        13                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-20-start         
        PushI        17                        
        PushI        70                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        95                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-21-start         
        PushI        33                        
        PushI        25                        
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
        Label        -compare-22-start         
        PushI        57                        
        PushI        37                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        17                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-23-start         
        PushI        68                        
        PushI        24                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        6                         
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-24-start         
        PushI        19                        
        PushI        53                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        16                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-25-start         
        PushI        15                        
        PushI        66                        
        Multiply                               
        PushI        11                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        71                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-26-start         
        PushI        46                        
        PushI        69                        
        Multiply                               
        PushI        42                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        11                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-27-start         
        PushI        21                        
        PushI        97                        
        Multiply                               
        PushI        84                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        69                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-28-start         
        PushI        46                        
        PushI        32                        
        Multiply                               
        PushI        80                        
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
        Label        -compare-29-start         
        PushI        47                        
        PushI        36                        
        Multiply                               
        PushI        94                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        73                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-30-start         
        PushI        56                        
        PushI        16                        
        Multiply                               
        PushI        4                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        26                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-31-start         
        PushI        43                        
        PushI        93                        
        Multiply                               
        PushI        46                        
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
        Label        -compare-32-start         
        PushI        83                        
        PushI        36                        
        Multiply                               
        PushI        46                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        98                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-33-start         
        PushI        51                        
        PushI        32                        
        Multiply                               
        PushI        77                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        9                         
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-34-start         
        PushI        25                        
        PushI        78                        
        Multiply                               
        PushI        97                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        42                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-35-start         
        PushI        44                        
        PushI        22                        
        Multiply                               
        PushI        47                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        63                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-36-start         
        PushI        13                        
        PushI        53                        
        Multiply                               
        PushI        15                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        62                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-38-start         
        Label        -compare-37-start         
        PushI        46                        
        PushI        66                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        78                        
        Multiply                               
        PushI        62                        
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
        PushI        67                        
        PushI        7                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        93                        
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
        Label        -compare-42-start         
        Label        -compare-41-start         
        PushI        81                        
        PushI        31                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        7                         
        Multiply                               
        PushI        92                        
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
        PushI        19                        
        PushI        16                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        19                        
        Multiply                               
        PushI        7                         
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
        PushI        66                        
        PushI        74                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        92                        
        Multiply                               
        PushI        10                        
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
        PushI        66                        
        PushI        66                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        89                        
        Multiply                               
        PushI        97                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-50-start         
        Label        -compare-49-start         
        PushI        83                        
        PushI        22                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        66                        
        Multiply                               
        PushI        77                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-52-start         
        Label        -compare-51-start         
        PushI        68                        
        PushI        57                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        84                        
        Multiply                               
        PushI        75                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-54-start         
        Label        -compare-53-start         
        PushI        82                        
        PushI        2                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        30                        
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
        Label        -compare-56-start         
        Label        -compare-55-start         
        PushI        74                        
        PushI        45                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        82                        
        Multiply                               
        PushI        90                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-58-start         
        Label        -compare-57-start         
        PushI        80                        
        PushI        90                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        88                        
        Multiply                               
        PushI        21                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-60-start         
        Label        -compare-59-start         
        PushI        43                        
        PushI        77                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        70                        
        Multiply                               
        PushI        12                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Halt                                   
