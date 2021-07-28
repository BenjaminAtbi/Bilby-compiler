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
        PushI        71                        
        Label        -compare-1-start          
        PushI        25                        
        PushI        43                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        23                        
        Label        -compare-2-start          
        PushI        58                        
        PushI        95                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        4                         
        Label        -compare-3-start          
        PushI        2                         
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
        PushI        4                         
        Label        -compare-4-start          
        PushI        77                        
        PushI        58                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        4                         
        Label        -compare-5-start          
        PushI        25                        
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
        PushI        71                        
        Label        -compare-6-start          
        PushI        44                        
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
        PushI        34                        
        Label        -compare-7-start          
        PushI        2                         
        PushI        52                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        95                        
        Label        -compare-8-start          
        PushI        23                        
        PushI        23                        
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
        Label        -compare-9-start          
        PushI        46                        
        PushI        20                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        22                        
        Label        -compare-10-start         
        PushI        69                        
        PushI        48                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        76                        
        Label        -compare-11-start         
        PushI        72                        
        PushI        41                        
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
        Label        -compare-12-start         
        PushI        35                        
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
        Label        -compare-13-start         
        PushI        56                        
        PushI        67                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        98                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-14-start         
        PushI        21                        
        PushI        57                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        40                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-15-start         
        PushI        64                        
        PushI        58                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        74                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-16-start         
        PushI        4                         
        PushI        53                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        71                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-17-start         
        PushI        78                        
        PushI        9                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        23                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-18-start         
        PushI        83                        
        PushI        6                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        34                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-19-start         
        PushI        26                        
        PushI        6                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        46                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-20-start         
        PushI        69                        
        PushI        6                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        36                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-21-start         
        PushI        14                        
        PushI        39                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        2                         
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-22-start         
        PushI        71                        
        PushI        27                        
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
        Label        -compare-23-start         
        PushI        64                        
        PushI        88                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        PushI        42                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-24-start         
        PushI        28                        
        PushI        98                        
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
        PushI        54                        
        Label        -compare-25-start         
        PushI        67                        
        PushI        73                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushI        61                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        96                        
        Label        -compare-26-start         
        PushI        64                        
        PushI        80                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushI        56                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        15                        
        Label        -compare-27-start         
        PushI        45                        
        PushI        74                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushI        39                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        90                        
        Label        -compare-28-start         
        PushI        80                        
        PushI        99                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushI        19                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        27                        
        Label        -compare-29-start         
        PushI        72                        
        PushI        7                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushI        62                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        26                        
        Label        -compare-30-start         
        PushI        5                         
        PushI        96                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushI        73                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        28                        
        Label        -compare-31-start         
        PushI        28                        
        PushI        24                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushI        7                         
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        57                        
        Label        -compare-32-start         
        PushI        68                        
        PushI        7                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushI        12                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        19                        
        Label        -compare-33-start         
        PushI        14                        
        PushI        22                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushI        71                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        64                        
        Label        -compare-34-start         
        PushI        36                        
        PushI        38                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushI        16                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        81                        
        Label        -compare-35-start         
        PushI        86                        
        PushI        53                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushI        43                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        69                        
        Label        -compare-36-start         
        PushI        29                        
        PushI        35                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushI        71                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-37-start         
        PushI        5                         
        PushI        16                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-38-start         
        PushI        16                        
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
        Label        -compare-39-start         
        PushI        83                        
        PushI        8                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-40-start         
        PushI        42                        
        PushI        78                        
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
        PushI        86                        
        PushI        38                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-42-start         
        PushI        33                        
        PushI        19                        
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
        PushI        70                        
        PushI        31                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-44-start         
        PushI        31                        
        PushI        85                        
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
        PushI        49                        
        PushI        49                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-46-start         
        PushI        36                        
        PushI        4                         
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
        PushI        75                        
        PushI        93                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-48-start         
        PushI        33                        
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
        Label        -compare-49-start         
        PushI        89                        
        PushI        25                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-50-start         
        PushI        39                        
        PushI        57                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-51-start         
        PushI        78                        
        PushI        40                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-52-start         
        PushI        26                        
        PushI        95                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-53-start         
        PushI        5                         
        PushI        62                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-54-start         
        PushI        46                        
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
        Label        -compare-55-start         
        PushI        12                        
        PushI        18                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-56-start         
        PushI        55                        
        PushI        11                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-57-start         
        PushI        90                        
        PushI        92                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-58-start         
        PushI        87                        
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
        Label        -compare-59-start         
        PushI        7                         
        PushI        57                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-60-start         
        PushI        97                        
        PushI        10                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Halt                                   
