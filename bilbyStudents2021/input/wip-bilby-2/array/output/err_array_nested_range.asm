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
        DataC        97                        %% "array negative length"
        DataC        114                       
        DataC        114                       
        DataC        97                        
        DataC        121                       
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
        DLabel       $array-not-initialized    
        DataC        97                        %% "array not initialized"
        DataC        114                       
        DataC        114                       
        DataC        97                        
        DataC        121                       
        DataC        32                        
        DataC        110                       
        DataC        111                       
        DataC        116                       
        DataC        32                        
        DataC        105                       
        DataC        110                       
        DataC        105                       
        DataC        116                       
        DataC        105                       
        DataC        97                        
        DataC        108                       
        DataC        105                       
        DataC        122                       
        DataC        101                       
        DataC        100                       
        DataC        0                         
        Label        $$array-not-initialized   
        PushD        $array-not-initialized    
        Jump         $$general-runtime-error   
        DLabel       $reference-space-1        
        DataZ        4                         
        DLabel       $reference-space-2        
        DataZ        4                         
        DLabel       $reference-space-Iter     
        DataZ        4                         
        DLabel       $usable-memory-start      
        DLabel       $global-memory-block      
        DataZ        4                         
        Label        $$main                    
        PushD        $global-memory-block      
        PushI        0                         
        Add                                    %% a
        Label        -alloc-array-1-start      
        PushI        4                         
        Duplicate                              
        JumpNeg      $$array-negative-length   
        Duplicate                              
        PushD        $reference-space-1        
        Exchange                               
        StoreI                                 
        PushI        4                         
        Multiply                               
        PushI        16                        
        Add                                    
        Call         -mem-manager-allocate     
        PushD        $reference-space-2        
        Exchange                               
        StoreI                                 
        PushD        $reference-space-2        
        LoadI                                  
        PushI        7                         
        StoreI                                 
        PushI        2                         
        PushD        $reference-space-2        
        LoadI                                  
        PushI        4                         
        Add                                    
        Exchange                               
        StoreI                                 
        PushI        4                         
        PushD        $reference-space-2        
        LoadI                                  
        PushI        8                         
        Add                                    
        Exchange                               
        StoreI                                 
        PushD        $reference-space-1        
        LoadI                                  
        PushD        $reference-space-2        
        LoadI                                  
        PushI        12                        
        Add                                    
        Exchange                               
        StoreI                                 
        PushI        0                         
        PushD        $reference-space-Iter     
        Exchange                               
        StoreI                                 
        PushD        $reference-space-2        
        LoadI                                  
        Label        -alloc-array-1-loop       
        Duplicate                              
        Duplicate                              
        PushI        8                         
        Add                                    
        LoadI                                  
        PushD        $reference-space-Iter     
        LoadI                                  
        Multiply                               
        Add                                    
        PushI        0                         
        Exchange                               
        PushI        16                        
        Add                                    
        Exchange                               
        StoreI                                 
        PushI        1                         
        PushD        $reference-space-Iter     
        LoadI                                  
        Add                                    
        PushD        $reference-space-Iter     
        Exchange                               
        StoreI                                 
        PushD        $reference-space-Iter     
        LoadI                                  
        PushD        $reference-space-1        
        LoadI                                  
        Subtract                               
        JumpNeg      -alloc-array-1-loop       
        StoreI                                 
        Label        -access-array-2-start     
        PushD        $global-memory-block      
        PushI        0                         
        Add                                    %% a
        LoadI                                  
        Duplicate                              
        PushD        $reference-space-1        
        Exchange                               
        StoreI                                 
        PushI        12                        
        Add                                    
        LoadI                                  
        PushI        1                         
        Duplicate                              
        PushD        $reference-space-2        
        Exchange                               
        StoreI                                 
        Subtract                               
        JumpPos      -access-array-2-noError   
        Jump         $$array-out-of-bounds     
        Label        -access-array-2-noError   
        PushD        $reference-space-2        
        LoadI                                  
        JumpNeg      $$array-out-of-bounds     
        PushD        $reference-space-1        
        LoadI                                  
        Duplicate                              
        PushI        0                         
        Add                                    
        LoadI                                  
        PushI        7                         
        Subtract                               
        JumpTrue     $$array-not-initialized   
        Duplicate                              
        PushI        8                         
        Add                                    
        LoadI                                  
        PushD        $reference-space-2        
        LoadI                                  
        Multiply                               
        PushI        16                        
        Add                                    
        Add                                    
        Label        -access-array-2-end       
        Label        -alloc-array-3-start      
        PushI        4                         
        Duplicate                              
        JumpNeg      $$array-negative-length   
        Duplicate                              
        PushD        $reference-space-1        
        Exchange                               
        StoreI                                 
        PushI        4                         
        Multiply                               
        PushI        16                        
        Add                                    
        Call         -mem-manager-allocate     
        PushD        $reference-space-2        
        Exchange                               
        StoreI                                 
        PushD        $reference-space-2        
        LoadI                                  
        PushI        7                         
        StoreI                                 
        PushI        2                         
        PushD        $reference-space-2        
        LoadI                                  
        PushI        4                         
        Add                                    
        Exchange                               
        StoreI                                 
        PushI        4                         
        PushD        $reference-space-2        
        LoadI                                  
        PushI        8                         
        Add                                    
        Exchange                               
        StoreI                                 
        PushD        $reference-space-1        
        LoadI                                  
        PushD        $reference-space-2        
        LoadI                                  
        PushI        12                        
        Add                                    
        Exchange                               
        StoreI                                 
        PushI        0                         
        PushD        $reference-space-Iter     
        Exchange                               
        StoreI                                 
        PushD        $reference-space-2        
        LoadI                                  
        Label        -alloc-array-3-loop       
        Duplicate                              
        Duplicate                              
        PushI        8                         
        Add                                    
        LoadI                                  
        PushD        $reference-space-Iter     
        LoadI                                  
        Multiply                               
        Add                                    
        PushI        0                         
        Exchange                               
        PushI        16                        
        Add                                    
        Exchange                               
        StoreI                                 
        PushI        1                         
        PushD        $reference-space-Iter     
        LoadI                                  
        Add                                    
        PushD        $reference-space-Iter     
        Exchange                               
        StoreI                                 
        PushD        $reference-space-Iter     
        LoadI                                  
        PushD        $reference-space-1        
        LoadI                                  
        Subtract                               
        JumpNeg      -alloc-array-3-loop       
        StoreI                                 
        Label        -access-array-5-start     
        Label        -access-array-4-start     
        PushD        $global-memory-block      
        PushI        0                         
        Add                                    %% a
        LoadI                                  
        Duplicate                              
        PushD        $reference-space-1        
        Exchange                               
        StoreI                                 
        PushI        12                        
        Add                                    
        LoadI                                  
        PushI        1                         
        Duplicate                              
        PushD        $reference-space-2        
        Exchange                               
        StoreI                                 
        Subtract                               
        JumpPos      -access-array-4-noError   
        Jump         $$array-out-of-bounds     
        Label        -access-array-4-noError   
        PushD        $reference-space-2        
        LoadI                                  
        JumpNeg      $$array-out-of-bounds     
        PushD        $reference-space-1        
        LoadI                                  
        Duplicate                              
        PushI        0                         
        Add                                    
        LoadI                                  
        PushI        7                         
        Subtract                               
        JumpTrue     $$array-not-initialized   
        Duplicate                              
        PushI        8                         
        Add                                    
        LoadI                                  
        PushD        $reference-space-2        
        LoadI                                  
        Multiply                               
        PushI        16                        
        Add                                    
        Add                                    
        Label        -access-array-4-end       
        LoadI                                  
        Duplicate                              
        PushD        $reference-space-1        
        Exchange                               
        StoreI                                 
        PushI        12                        
        Add                                    
        LoadI                                  
        PushI        1                         
        Duplicate                              
        PushD        $reference-space-2        
        Exchange                               
        StoreI                                 
        Subtract                               
        JumpPos      -access-array-5-noError   
        Jump         $$array-out-of-bounds     
        Label        -access-array-5-noError   
        PushD        $reference-space-2        
        LoadI                                  
        JumpNeg      $$array-out-of-bounds     
        PushD        $reference-space-1        
        LoadI                                  
        Duplicate                              
        PushI        0                         
        Add                                    
        LoadI                                  
        PushI        7                         
        Subtract                               
        JumpTrue     $$array-not-initialized   
        Duplicate                              
        PushI        8                         
        Add                                    
        LoadI                                  
        PushD        $reference-space-2        
        LoadI                                  
        Multiply                               
        PushI        16                        
        Add                                    
        Add                                    
        Label        -access-array-5-end       
        Label        -alloc-array-6-start      
        PushI        4                         
        Duplicate                              
        JumpNeg      $$array-negative-length   
        Duplicate                              
        PushD        $reference-space-1        
        Exchange                               
        StoreI                                 
        PushI        4                         
        Multiply                               
        PushI        16                        
        Add                                    
        Call         -mem-manager-allocate     
        PushD        $reference-space-2        
        Exchange                               
        StoreI                                 
        PushD        $reference-space-2        
        LoadI                                  
        PushI        7                         
        StoreI                                 
        PushI        2                         
        PushD        $reference-space-2        
        LoadI                                  
        PushI        4                         
        Add                                    
        Exchange                               
        StoreI                                 
        PushI        4                         
        PushD        $reference-space-2        
        LoadI                                  
        PushI        8                         
        Add                                    
        Exchange                               
        StoreI                                 
        PushD        $reference-space-1        
        LoadI                                  
        PushD        $reference-space-2        
        LoadI                                  
        PushI        12                        
        Add                                    
        Exchange                               
        StoreI                                 
        PushI        0                         
        PushD        $reference-space-Iter     
        Exchange                               
        StoreI                                 
        PushD        $reference-space-2        
        LoadI                                  
        Label        -alloc-array-6-loop       
        Duplicate                              
        Duplicate                              
        PushI        8                         
        Add                                    
        LoadI                                  
        PushD        $reference-space-Iter     
        LoadI                                  
        Multiply                               
        Add                                    
        PushI        0                         
        Exchange                               
        PushI        16                        
        Add                                    
        Exchange                               
        StoreI                                 
        PushI        1                         
        PushD        $reference-space-Iter     
        LoadI                                  
        Add                                    
        PushD        $reference-space-Iter     
        Exchange                               
        StoreI                                 
        PushD        $reference-space-Iter     
        LoadI                                  
        PushD        $reference-space-1        
        LoadI                                  
        Subtract                               
        JumpNeg      -alloc-array-6-loop       
        StoreI                                 
        Label        -access-array-9-start     
        Label        -access-array-8-start     
        Label        -access-array-7-start     
        PushD        $global-memory-block      
        PushI        0                         
        Add                                    %% a
        LoadI                                  
        Duplicate                              
        PushD        $reference-space-1        
        Exchange                               
        StoreI                                 
        PushI        12                        
        Add                                    
        LoadI                                  
        PushI        1                         
        Duplicate                              
        PushD        $reference-space-2        
        Exchange                               
        StoreI                                 
        Subtract                               
        JumpPos      -access-array-7-noError   
        Jump         $$array-out-of-bounds     
        Label        -access-array-7-noError   
        PushD        $reference-space-2        
        LoadI                                  
        JumpNeg      $$array-out-of-bounds     
        PushD        $reference-space-1        
        LoadI                                  
        Duplicate                              
        PushI        0                         
        Add                                    
        LoadI                                  
        PushI        7                         
        Subtract                               
        JumpTrue     $$array-not-initialized   
        Duplicate                              
        PushI        8                         
        Add                                    
        LoadI                                  
        PushD        $reference-space-2        
        LoadI                                  
        Multiply                               
        PushI        16                        
        Add                                    
        Add                                    
        Label        -access-array-7-end       
        LoadI                                  
        Duplicate                              
        PushD        $reference-space-1        
        Exchange                               
        StoreI                                 
        PushI        12                        
        Add                                    
        LoadI                                  
        PushI        1                         
        Duplicate                              
        PushD        $reference-space-2        
        Exchange                               
        StoreI                                 
        Subtract                               
        JumpPos      -access-array-8-noError   
        Jump         $$array-out-of-bounds     
        Label        -access-array-8-noError   
        PushD        $reference-space-2        
        LoadI                                  
        JumpNeg      $$array-out-of-bounds     
        PushD        $reference-space-1        
        LoadI                                  
        Duplicate                              
        PushI        0                         
        Add                                    
        LoadI                                  
        PushI        7                         
        Subtract                               
        JumpTrue     $$array-not-initialized   
        Duplicate                              
        PushI        8                         
        Add                                    
        LoadI                                  
        PushD        $reference-space-2        
        LoadI                                  
        Multiply                               
        PushI        16                        
        Add                                    
        Add                                    
        Label        -access-array-8-end       
        LoadI                                  
        Duplicate                              
        PushD        $reference-space-1        
        Exchange                               
        StoreI                                 
        PushI        12                        
        Add                                    
        LoadI                                  
        PushI        1                         
        Duplicate                              
        PushD        $reference-space-2        
        Exchange                               
        StoreI                                 
        Subtract                               
        JumpPos      -access-array-9-noError   
        Jump         $$array-out-of-bounds     
        Label        -access-array-9-noError   
        PushD        $reference-space-2        
        LoadI                                  
        JumpNeg      $$array-out-of-bounds     
        PushD        $reference-space-1        
        LoadI                                  
        Duplicate                              
        PushI        0                         
        Add                                    
        LoadI                                  
        PushI        7                         
        Subtract                               
        JumpTrue     $$array-not-initialized   
        Duplicate                              
        PushI        8                         
        Add                                    
        LoadI                                  
        PushD        $reference-space-2        
        LoadI                                  
        Multiply                               
        PushI        16                        
        Add                                    
        Add                                    
        Label        -access-array-9-end       
        PushI        3                         
        StoreI                                 
        Label        -access-array-12-start    
        Label        -access-array-11-start    
        Label        -access-array-10-start    
        PushD        $global-memory-block      
        PushI        0                         
        Add                                    %% a
        LoadI                                  
        Duplicate                              
        PushD        $reference-space-1        
        Exchange                               
        StoreI                                 
        PushI        12                        
        Add                                    
        LoadI                                  
        PushI        1                         
        Duplicate                              
        PushD        $reference-space-2        
        Exchange                               
        StoreI                                 
        Subtract                               
        JumpPos      -access-array-10-noError  
        Jump         $$array-out-of-bounds     
        Label        -access-array-10-noError  
        PushD        $reference-space-2        
        LoadI                                  
        JumpNeg      $$array-out-of-bounds     
        PushD        $reference-space-1        
        LoadI                                  
        Duplicate                              
        PushI        0                         
        Add                                    
        LoadI                                  
        PushI        7                         
        Subtract                               
        JumpTrue     $$array-not-initialized   
        Duplicate                              
        PushI        8                         
        Add                                    
        LoadI                                  
        PushD        $reference-space-2        
        LoadI                                  
        Multiply                               
        PushI        16                        
        Add                                    
        Add                                    
        Label        -access-array-10-end      
        LoadI                                  
        Duplicate                              
        PushD        $reference-space-1        
        Exchange                               
        StoreI                                 
        PushI        12                        
        Add                                    
        LoadI                                  
        PushI        1                         
        Duplicate                              
        PushD        $reference-space-2        
        Exchange                               
        StoreI                                 
        Subtract                               
        JumpPos      -access-array-11-noError  
        Jump         $$array-out-of-bounds     
        Label        -access-array-11-noError  
        PushD        $reference-space-2        
        LoadI                                  
        JumpNeg      $$array-out-of-bounds     
        PushD        $reference-space-1        
        LoadI                                  
        Duplicate                              
        PushI        0                         
        Add                                    
        LoadI                                  
        PushI        7                         
        Subtract                               
        JumpTrue     $$array-not-initialized   
        Duplicate                              
        PushI        8                         
        Add                                    
        LoadI                                  
        PushD        $reference-space-2        
        LoadI                                  
        Multiply                               
        PushI        16                        
        Add                                    
        Add                                    
        Label        -access-array-11-end      
        LoadI                                  
        Duplicate                              
        PushD        $reference-space-1        
        Exchange                               
        StoreI                                 
        PushI        12                        
        Add                                    
        LoadI                                  
        PushI        1                         
        Duplicate                              
        PushD        $reference-space-2        
        Exchange                               
        StoreI                                 
        Subtract                               
        JumpPos      -access-array-12-noError  
        Jump         $$array-out-of-bounds     
        Label        -access-array-12-noError  
        PushD        $reference-space-2        
        LoadI                                  
        JumpNeg      $$array-out-of-bounds     
        PushD        $reference-space-1        
        LoadI                                  
        Duplicate                              
        PushI        0                         
        Add                                    
        LoadI                                  
        PushI        7                         
        Subtract                               
        JumpTrue     $$array-not-initialized   
        Duplicate                              
        PushI        8                         
        Add                                    
        LoadI                                  
        PushD        $reference-space-2        
        LoadI                                  
        Multiply                               
        PushI        16                        
        Add                                    
        Add                                    
        Label        -access-array-12-end      
        LoadI                                  
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
