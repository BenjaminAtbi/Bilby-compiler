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
        DLabel       $global-memory-block      
        DataZ        0                         
        Label        $$main                    
        PushI        61                        
        PushI        28                        
        Subtract                               
        PushI        71                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        63                        
        PushI        26                        
        Subtract                               
        PushI        98                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        82                        
        PushI        62                        
        Subtract                               
        PushI        60                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        1                         
        PushI        40                        
        Subtract                               
        PushI        24                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        29                        
        PushI        38                        
        Subtract                               
        PushI        36                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        4                         
        PushI        62                        
        Subtract                               
        PushI        77                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        68                        
        PushI        97                        
        Subtract                               
        PushI        85                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        10                        
        PushI        7                         
        Subtract                               
        PushI        63                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        65                        
        PushI        30                        
        Subtract                               
        PushI        1                         
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        55                        
        PushI        15                        
        Subtract                               
        PushI        47                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        38                        
        PushI        97                        
        Subtract                               
        PushI        23                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        37                        
        PushI        77                        
        Subtract                               
        PushI        26                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        41                        
        PushI        63                        
        Subtract                               
        PushI        14                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        56                        
        PushI        44                        
        Subtract                               
        PushI        22                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        32                        
        PushI        49                        
        Subtract                               
        PushI        90                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        10                        
        PushI        69                        
        Subtract                               
        PushI        74                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        74                        
        PushI        83                        
        Subtract                               
        PushI        20                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        62                        
        PushI        42                        
        Subtract                               
        PushI        31                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        58                        
        PushI        96                        
        Subtract                               
        PushI        13                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        32                        
        PushI        8                         
        Subtract                               
        PushI        27                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        62                        
        PushI        59                        
        Subtract                               
        PushI        95                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        39                        
        PushI        2                         
        Subtract                               
        PushI        20                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        35                        
        PushI        55                        
        Subtract                               
        PushI        46                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        18                        
        PushI        35                        
        Subtract                               
        PushI        48                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        90                        
        PushI        13                        
        Subtract                               
        PushI        89                        
        Subtract                               
        PushI        88                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        15                        
        PushI        10                        
        Subtract                               
        PushI        59                        
        Subtract                               
        PushI        69                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        25                        
        PushI        9                         
        Subtract                               
        PushI        99                        
        Subtract                               
        PushI        42                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        61                        
        PushI        29                        
        Subtract                               
        PushI        1                         
        Subtract                               
        PushI        27                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        4                         
        PushI        77                        
        Subtract                               
        PushI        43                        
        Subtract                               
        PushI        98                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        35                        
        PushI        83                        
        Subtract                               
        PushI        19                        
        Subtract                               
        PushI        29                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        40                        
        PushI        37                        
        Subtract                               
        PushI        32                        
        Subtract                               
        PushI        14                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        49                        
        PushI        35                        
        Subtract                               
        PushI        33                        
        Subtract                               
        PushI        94                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        33                        
        PushI        65                        
        Subtract                               
        PushI        11                        
        Subtract                               
        PushI        65                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        14                        
        PushI        52                        
        Subtract                               
        PushI        60                        
        Subtract                               
        PushI        82                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        71                        
        PushI        46                        
        Subtract                               
        PushI        23                        
        Subtract                               
        PushI        93                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        23                        
        PushI        21                        
        Subtract                               
        PushI        23                        
        Subtract                               
        PushI        57                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        86                        
        PushI        75                        
        Subtract                               
        PushI        54                        
        Subtract                               
        PushI        50                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        73                        
        PushI        58                        
        Subtract                               
        PushI        21                        
        Subtract                               
        PushI        89                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        82                        
        PushI        84                        
        Subtract                               
        PushI        30                        
        Subtract                               
        PushI        76                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        26                        
        PushI        53                        
        Subtract                               
        PushI        43                        
        Subtract                               
        PushI        69                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        49                        
        PushI        72                        
        Subtract                               
        PushI        33                        
        Subtract                               
        PushI        82                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        56                        
        PushI        5                         
        Subtract                               
        PushI        71                        
        Subtract                               
        PushI        34                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        21                        
        PushI        16                        
        Subtract                               
        PushI        24                        
        Subtract                               
        PushI        28                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        36                        
        PushI        50                        
        Subtract                               
        PushI        94                        
        Subtract                               
        PushI        58                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        19                        
        PushI        71                        
        Subtract                               
        PushI        96                        
        Subtract                               
        PushI        22                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        83                        
        PushI        78                        
        Subtract                               
        PushI        75                        
        Subtract                               
        PushI        34                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        76                        
        PushI        37                        
        Subtract                               
        PushI        18                        
        Subtract                               
        PushI        14                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        56                        
        PushI        76                        
        Subtract                               
        PushI        35                        
        Subtract                               
        PushI        7                         
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Halt                                   
        Label        -mem-manager-make-tags    
        DLabel       $mmgr-tags-size           
        DataZ        4                         
        DLabel       $mmgr-tags-start          
        DataZ        4                         
        DLabel       $mmgr-tags-available      
        DataZ        4                         
        DLabel       $mmgr-tags-nextptr        
        DataZ        4                         
        DLabel       $mmgr-tags-prevptr        
        DataZ        4                         
        DLabel       $mmgr-tags-return         
        DataZ        4                         
        PushD        $mmgr-tags-return         
        Exchange                               
        StoreI                                 
        PushD        $mmgr-tags-size           
        Exchange                               
        StoreI                                 
        PushD        $mmgr-tags-start          
        Exchange                               
        StoreI                                 
        PushD        $mmgr-tags-available      
        Exchange                               
        StoreI                                 
        PushD        $mmgr-tags-nextptr        
        Exchange                               
        StoreI                                 
        PushD        $mmgr-tags-prevptr        
        Exchange                               
        StoreI                                 
        PushD        $mmgr-tags-prevptr        
        LoadI                                  
        PushD        $mmgr-tags-size           
        LoadI                                  
        PushD        $mmgr-tags-available      
        LoadI                                  
        PushD        $mmgr-tags-start          
        LoadI                                  
        Call         -mem-manager-one-tag      
        PushD        $mmgr-tags-nextptr        
        LoadI                                  
        PushD        $mmgr-tags-size           
        LoadI                                  
        PushD        $mmgr-tags-available      
        LoadI                                  
        PushD        $mmgr-tags-start          
        LoadI                                  
        Duplicate                              
        PushI        4                         
        Add                                    
        LoadI                                  
        Add                                    
        PushI        9                         
        Subtract                               
        Call         -mem-manager-one-tag      
        PushD        $mmgr-tags-return         
        LoadI                                  
        Return                                 
        Label        -mem-manager-one-tag      
        DLabel       $mmgr-onetag-return       
        DataZ        4                         
        DLabel       $mmgr-onetag-location     
        DataZ        4                         
        DLabel       $mmgr-onetag-available    
        DataZ        4                         
        DLabel       $mmgr-onetag-size         
        DataZ        4                         
        DLabel       $mmgr-onetag-pointer      
        DataZ        4                         
        PushD        $mmgr-onetag-return       
        Exchange                               
        StoreI                                 
        PushD        $mmgr-onetag-location     
        Exchange                               
        StoreI                                 
        PushD        $mmgr-onetag-available    
        Exchange                               
        StoreI                                 
        PushD        $mmgr-onetag-size         
        Exchange                               
        StoreI                                 
        PushD        $mmgr-onetag-location     
        LoadI                                  
        PushI        0                         
        Add                                    
        Exchange                               
        StoreI                                 
        PushD        $mmgr-onetag-size         
        LoadI                                  
        PushD        $mmgr-onetag-location     
        LoadI                                  
        PushI        4                         
        Add                                    
        Exchange                               
        StoreI                                 
        PushD        $mmgr-onetag-available    
        LoadI                                  
        PushD        $mmgr-onetag-location     
        LoadI                                  
        PushI        8                         
        Add                                    
        Exchange                               
        StoreC                                 
        PushD        $mmgr-onetag-return       
        LoadI                                  
        Return                                 
        Label        -mem-manager-allocate     
        DLabel       $mmgr-alloc-return        
        DataZ        4                         
        DLabel       $mmgr-alloc-size          
        DataZ        4                         
        DLabel       $mmgr-alloc-current-block 
        DataZ        4                         
        DLabel       $mmgr-alloc-remainder-block 
        DataZ        4                         
        DLabel       $mmgr-alloc-remainder-size 
        DataZ        4                         
        PushD        $mmgr-alloc-return        
        Exchange                               
        StoreI                                 
        PushI        18                        
        Add                                    
        PushD        $mmgr-alloc-size          
        Exchange                               
        StoreI                                 
        PushD        $heap-first-free          
        LoadI                                  
        PushD        $mmgr-alloc-current-block 
        Exchange                               
        StoreI                                 
        Label        -mmgr-alloc-process-current 
        PushD        $mmgr-alloc-current-block 
        LoadI                                  
        JumpFalse    -mmgr-alloc-no-block-works 
        Label        -mmgr-alloc-test-block    
        PushD        $mmgr-alloc-current-block 
        LoadI                                  
        PushI        4                         
        Add                                    
        LoadI                                  
        PushD        $mmgr-alloc-size          
        LoadI                                  
        Subtract                               
        PushI        1                         
        Add                                    
        JumpPos      -mmgr-alloc-found-block   
        PushD        $mmgr-alloc-current-block 
        LoadI                                  
        Duplicate                              
        PushI        4                         
        Add                                    
        LoadI                                  
        Add                                    
        PushI        9                         
        Subtract                               
        PushI        0                         
        Add                                    
        LoadI                                  
        PushD        $mmgr-alloc-current-block 
        Exchange                               
        StoreI                                 
        Jump         -mmgr-alloc-process-current 
        Label        -mmgr-alloc-found-block   
        PushD        $mmgr-alloc-current-block 
        LoadI                                  
        Call         -mem-manager-remove-block 
        PushD        $mmgr-alloc-current-block 
        LoadI                                  
        PushI        4                         
        Add                                    
        LoadI                                  
        PushD        $mmgr-alloc-size          
        LoadI                                  
        Subtract                               
        PushI        26                        
        Subtract                               
        JumpNeg      -mmgr-alloc-return-userblock 
        PushD        $mmgr-alloc-current-block 
        LoadI                                  
        PushD        $mmgr-alloc-size          
        LoadI                                  
        Add                                    
        PushD        $mmgr-alloc-remainder-block 
        Exchange                               
        StoreI                                 
        PushD        $mmgr-alloc-size          
        LoadI                                  
        PushD        $mmgr-alloc-current-block 
        LoadI                                  
        PushI        4                         
        Add                                    
        LoadI                                  
        Exchange                               
        Subtract                               
        PushD        $mmgr-alloc-remainder-size 
        Exchange                               
        StoreI                                 
        PushI        0                         
        PushI        0                         
        PushI        0                         
        PushD        $mmgr-alloc-current-block 
        LoadI                                  
        PushD        $mmgr-alloc-size          
        LoadI                                  
        Call         -mem-manager-make-tags    
        PushI        0                         
        PushI        0                         
        PushI        1                         
        PushD        $mmgr-alloc-remainder-block 
        LoadI                                  
        PushD        $mmgr-alloc-remainder-size 
        LoadI                                  
        Call         -mem-manager-make-tags    
        PushD        $mmgr-alloc-remainder-block 
        LoadI                                  
        PushI        9                         
        Add                                    
        Call         -mem-manager-deallocate   
        Jump         -mmgr-alloc-return-userblock 
        Label        -mmgr-alloc-no-block-works 
        PushD        $mmgr-alloc-size          
        LoadI                                  
        PushD        $mmgr-newblock-size       
        Exchange                               
        StoreI                                 
        PushD        $heap-after-ptr           
        LoadI                                  
        PushD        $mmgr-newblock-block      
        Exchange                               
        StoreI                                 
        PushD        $mmgr-newblock-size       
        LoadI                                  
        PushD        $heap-after-ptr           
        LoadI                                  
        Add                                    
        PushD        $heap-after-ptr           
        Exchange                               
        StoreI                                 
        PushI        0                         
        PushI        0                         
        PushI        0                         
        PushD        $mmgr-newblock-block      
        LoadI                                  
        PushD        $mmgr-newblock-size       
        LoadI                                  
        Call         -mem-manager-make-tags    
        PushD        $mmgr-newblock-block      
        LoadI                                  
        PushD        $mmgr-alloc-current-block 
        Exchange                               
        StoreI                                 
        Label        -mmgr-alloc-return-userblock 
        PushD        $mmgr-alloc-current-block 
        LoadI                                  
        PushI        9                         
        Add                                    
        PushD        $mmgr-alloc-return        
        LoadI                                  
        Return                                 
        Label        -mem-manager-deallocate   
        DLabel       $mmgr-dealloc-return      
        DataZ        4                         
        DLabel       $mmgr-dealloc-block       
        DataZ        4                         
        PushD        $mmgr-dealloc-return      
        Exchange                               
        StoreI                                 
        PushI        9                         
        Subtract                               
        PushD        $mmgr-dealloc-block       
        Exchange                               
        StoreI                                 
        PushD        $heap-first-free          
        LoadI                                  
        JumpFalse    -mmgr-bypass-firstFree    
        PushD        $mmgr-dealloc-block       
        LoadI                                  
        PushD        $heap-first-free          
        LoadI                                  
        PushI        0                         
        Add                                    
        Exchange                               
        StoreI                                 
        Label        -mmgr-bypass-firstFree    
        PushI        0                         
        PushD        $mmgr-dealloc-block       
        LoadI                                  
        PushI        0                         
        Add                                    
        Exchange                               
        StoreI                                 
        PushD        $heap-first-free          
        LoadI                                  
        PushD        $mmgr-dealloc-block       
        LoadI                                  
        Duplicate                              
        PushI        4                         
        Add                                    
        LoadI                                  
        Add                                    
        PushI        9                         
        Subtract                               
        PushI        0                         
        Add                                    
        Exchange                               
        StoreI                                 
        PushI        1                         
        PushD        $mmgr-dealloc-block       
        LoadI                                  
        PushI        8                         
        Add                                    
        Exchange                               
        StoreC                                 
        PushI        1                         
        PushD        $mmgr-dealloc-block       
        LoadI                                  
        Duplicate                              
        PushI        4                         
        Add                                    
        LoadI                                  
        Add                                    
        PushI        9                         
        Subtract                               
        PushI        8                         
        Add                                    
        Exchange                               
        StoreC                                 
        PushD        $mmgr-dealloc-block       
        LoadI                                  
        PushD        $heap-first-free          
        Exchange                               
        StoreI                                 
        PushD        $mmgr-dealloc-return      
        LoadI                                  
        Return                                 
        Label        -mem-manager-remove-block 
        DLabel       $mmgr-remove-return       
        DataZ        4                         
        DLabel       $mmgr-remove-block        
        DataZ        4                         
        DLabel       $mmgr-remove-prev         
        DataZ        4                         
        DLabel       $mmgr-remove-next         
        DataZ        4                         
        PushD        $mmgr-remove-return       
        Exchange                               
        StoreI                                 
        PushD        $mmgr-remove-block        
        Exchange                               
        StoreI                                 
        PushD        $mmgr-remove-block        
        LoadI                                  
        PushI        0                         
        Add                                    
        LoadI                                  
        PushD        $mmgr-remove-prev         
        Exchange                               
        StoreI                                 
        PushD        $mmgr-remove-block        
        LoadI                                  
        Duplicate                              
        PushI        4                         
        Add                                    
        LoadI                                  
        Add                                    
        PushI        9                         
        Subtract                               
        PushI        0                         
        Add                                    
        LoadI                                  
        PushD        $mmgr-remove-next         
        Exchange                               
        StoreI                                 
        Label        -mmgr-remove-process-prev 
        PushD        $mmgr-remove-prev         
        LoadI                                  
        JumpFalse    -mmgr-remove-no-prev      
        PushD        $mmgr-remove-next         
        LoadI                                  
        PushD        $mmgr-remove-prev         
        LoadI                                  
        Duplicate                              
        PushI        4                         
        Add                                    
        LoadI                                  
        Add                                    
        PushI        9                         
        Subtract                               
        PushI        0                         
        Add                                    
        Exchange                               
        StoreI                                 
        Jump         -mmgr-remove-process-next 
        Label        -mmgr-remove-no-prev      
        PushD        $mmgr-remove-next         
        LoadI                                  
        PushD        $heap-first-free          
        Exchange                               
        StoreI                                 
        Label        -mmgr-remove-process-next 
        PushD        $mmgr-remove-next         
        LoadI                                  
        JumpFalse    -mmgr-remove-done         
        PushD        $mmgr-remove-prev         
        LoadI                                  
        PushD        $mmgr-remove-next         
        LoadI                                  
        PushI        0                         
        Add                                    
        Exchange                               
        StoreI                                 
        Label        -mmgr-remove-done         
        PushD        $mmgr-remove-return       
        LoadI                                  
        Return                                 
        DLabel       $heap-memory              
