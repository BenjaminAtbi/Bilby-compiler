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
        PushI        31                        
        Label        -compare-1-start          
        PushI        68                        
        PushI        8                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        63                        
        Label        -compare-2-start          
        PushI        28                        
        PushI        19                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        73                        
        Label        -compare-3-start          
        PushI        23                        
        PushI        68                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        99                        
        Label        -compare-4-start          
        PushI        84                        
        PushI        71                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        84                        
        Label        -compare-5-start          
        PushI        52                        
        PushI        62                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        95                        
        Label        -compare-6-start          
        PushI        24                        
        PushI        28                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        52                        
        Label        -compare-7-start          
        PushI        24                        
        PushI        64                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        99                        
        Label        -compare-8-start          
        PushI        4                         
        PushI        92                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        23                        
        Label        -compare-9-start          
        PushI        38                        
        PushI        91                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        81                        
        Label        -compare-10-start         
        PushI        29                        
        PushI        46                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        33                        
        Label        -compare-11-start         
        PushI        62                        
        PushI        16                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        84                        
        Label        -compare-12-start         
        PushI        69                        
        PushI        90                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-13-start         
        PushI        58                        
        PushI        97                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        81                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-14-start         
        PushI        33                        
        PushI        77                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        19                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-15-start         
        PushI        94                        
        PushI        67                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        75                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-16-start         
        PushI        94                        
        PushI        88                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        14                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-17-start         
        PushI        76                        
        PushI        88                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        74                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-18-start         
        PushI        34                        
        PushI        51                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        60                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-19-start         
        PushI        33                        
        PushI        4                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        19                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-20-start         
        PushI        31                        
        PushI        79                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        74                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-21-start         
        PushI        42                        
        PushI        1                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        60                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-22-start         
        PushI        77                        
        PushI        10                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        23                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-23-start         
        PushI        40                        
        PushI        37                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        67                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-24-start         
        PushI        94                        
        PushI        81                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        82                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        56                        
        Label        -compare-25-start         
        PushI        38                        
        PushI        62                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Subtract                               
        PushI        46                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        23                        
        Label        -compare-26-start         
        PushI        57                        
        PushI        32                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Subtract                               
        PushI        54                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        6                         
        Label        -compare-27-start         
        PushI        25                        
        PushI        49                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Subtract                               
        PushI        50                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        21                        
        Label        -compare-28-start         
        PushI        82                        
        PushI        90                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Subtract                               
        PushI        27                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        1                         
        Label        -compare-29-start         
        PushI        4                         
        PushI        19                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Subtract                               
        PushI        80                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        42                        
        Label        -compare-30-start         
        PushI        24                        
        PushI        62                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Subtract                               
        PushI        9                         
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        8                         
        Label        -compare-31-start         
        PushI        36                        
        PushI        27                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Subtract                               
        PushI        67                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        5                         
        Label        -compare-32-start         
        PushI        4                         
        PushI        43                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Subtract                               
        PushI        21                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        95                        
        Label        -compare-33-start         
        PushI        96                        
        PushI        70                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Subtract                               
        PushI        8                         
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        30                        
        Label        -compare-34-start         
        PushI        2                         
        PushI        37                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Subtract                               
        PushI        2                         
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        30                        
        Label        -compare-35-start         
        PushI        56                        
        PushI        34                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Subtract                               
        PushI        7                         
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        38                        
        Label        -compare-36-start         
        PushI        37                        
        PushI        75                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Subtract                               
        PushI        99                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-37-start         
        PushI        11                        
        PushI        79                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-38-start         
        PushI        42                        
        PushI        42                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-39-start         
        PushI        14                        
        PushI        46                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-40-start         
        PushI        27                        
        PushI        98                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-41-start         
        PushI        11                        
        PushI        19                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-42-start         
        PushI        21                        
        PushI        93                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-43-start         
        PushI        8                         
        PushI        14                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-44-start         
        PushI        81                        
        PushI        5                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-45-start         
        PushI        34                        
        PushI        25                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-46-start         
        PushI        32                        
        PushI        70                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-47-start         
        PushI        87                        
        PushI        47                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-48-start         
        PushI        63                        
        PushI        61                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-49-start         
        PushI        5                         
        PushI        45                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-50-start         
        PushI        87                        
        PushI        77                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-51-start         
        PushI        76                        
        PushI        9                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-52-start         
        PushI        2                         
        PushI        6                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-53-start         
        PushI        69                        
        PushI        31                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-54-start         
        PushI        10                        
        PushI        21                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-55-start         
        PushI        76                        
        PushI        8                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-56-start         
        PushI        17                        
        PushI        9                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-57-start         
        PushI        88                        
        PushI        9                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-58-start         
        PushI        86                        
        PushI        12                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-59-start         
        PushI        36                        
        PushI        43                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-60-start         
        PushI        96                        
        PushI        38                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Halt                                   
