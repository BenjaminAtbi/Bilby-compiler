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
        DLabel       $print-format-open-square 
        DataC        91                        %% "["
        DataC        0                         
        DLabel       $print-format-close-square 
        DataC        93                        %% "]"
        DataC        0                         
        DLabel       $print-format-less        
        DataC        60                        %% "<"
        DataC        0                         
        DLabel       $print-format-greater     
        DataC        62                        %% ">"
        DataC        0                         
        DLabel       $print-format-period      
        DataC        46                        %% ".."
        DataC        46                        
        DataC        0                         
        DLabel       $print-format-comma       
        DataC        44                        %% ","
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
        DataC        97                        %% "array index out of bounds"
        DataC        114                       
        DataC        114                       
        DataC        97                        
        DataC        121                       
        DataC        32                        
        DataC        105                       
        DataC        110                       
        DataC        100                       
        DataC        101                       
        DataC        120                       
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
        DataC        110                       %% "negative length given for array"
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
        DataC        32                        
        DataC        103                       
        DataC        105                       
        DataC        118                       
        DataC        101                       
        DataC        110                       
        DataC        32                        
        DataC        102                       
        DataC        111                       
        DataC        114                       
        DataC        32                        
        DataC        97                        
        DataC        114                       
        DataC        114                       
        DataC        97                        
        DataC        121                       
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
        DLabel       $range-contains-invalid-type 
        DataC        114                       %% "range contains invalid type"
        DataC        97                        
        DataC        110                       
        DataC        103                       
        DataC        101                       
        DataC        32                        
        DataC        99                        
        DataC        111                       
        DataC        110                       
        DataC        116                       
        DataC        97                        
        DataC        105                       
        DataC        110                       
        DataC        115                       
        DataC        32                        
        DataC        105                       
        DataC        110                       
        DataC        118                       
        DataC        97                        
        DataC        108                       
        DataC        105                       
        DataC        100                       
        DataC        32                        
        DataC        116                       
        DataC        121                       
        DataC        112                       
        DataC        101                       
        DataC        0                         
        Label        $$range-contains-invalid-type 
        PushD        $range-contains-invalid-type 
        Jump         $$general-runtime-error   
        DLabel       $range-low-high-mismatch  
        DataC        114                       %% "range low value is higher than high value"
        DataC        97                        
        DataC        110                       
        DataC        103                       
        DataC        101                       
        DataC        32                        
        DataC        108                       
        DataC        111                       
        DataC        119                       
        DataC        32                        
        DataC        118                       
        DataC        97                        
        DataC        108                       
        DataC        117                       
        DataC        101                       
        DataC        32                        
        DataC        105                       
        DataC        115                       
        DataC        32                        
        DataC        104                       
        DataC        105                       
        DataC        103                       
        DataC        104                       
        DataC        101                       
        DataC        114                       
        DataC        32                        
        DataC        116                       
        DataC        104                       
        DataC        97                        
        DataC        110                       
        DataC        32                        
        DataC        104                       
        DataC        105                       
        DataC        103                       
        DataC        104                       
        DataC        32                        
        DataC        118                       
        DataC        97                        
        DataC        108                       
        DataC        117                       
        DataC        101                       
        DataC        0                         
        Label        $$range-low-high-mismatch 
        PushD        $range-low-high-mismatch  
        Jump         $$general-runtime-error   
        DLabel       $reference-space-1        
        DataZ        4                         
        DLabel       $reference-space-2        
        DataZ        4                         
        DLabel       $reference-space-macro    
        DataZ        4                         
        DLabel       $reference-space-Iter     
        DataZ        4                         
        DLabel       $range-move-outer-val     
        DataZ        8                         
        DLabel       $range-move-inner-val     
        DataZ        8                         
        DLabel       $range-load-outer-val     
        DataZ        8                         
        DLabel       $usable-memory-start      
        DLabel       $global-memory-block      
        DataZ        24                        
        Label        $$main                    
        PushD        $global-memory-block      
        PushI        0                         
        Add                                    %% size
        PushI        1000                      
        StoreI                                 
        PushD        $global-memory-block      
        PushI        4                         
        Add                                    %% printEvery
        PushI        50                        
        StoreI                                 
        PushD        $global-memory-block      
        PushI        8                         
        Add                                    %% arrays
        Label        -alloc-array-1-start      
        PushD        $global-memory-block      
        PushI        0                         
        Add                                    %% size
        LoadI                                  
        Nop                                    
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
        PushD        $global-memory-block      
        PushI        12                        
        Add                                    %% indx
        PushI        0                         
        StoreI                                 
        Label        -while-statement-5-start  
        Label        -compare-2-start          
        PushD        $global-memory-block      
        PushI        12                        
        Add                                    %% indx
        LoadI                                  
        Nop                                    
        PushD        $global-memory-block      
        PushI        0                         
        Add                                    %% size
        LoadI                                  
        Nop                                    
        Label        -compare-2-sub            
        Subtract                               
        JumpNeg      -compare-2-true           
        Jump         -compare-2-false          
        Label        -compare-2-true           
        PushI        1                         
        Jump         -compare-2-join           
        Label        -compare-2-false          
        PushI        0                         
        Jump         -compare-2-join           
        Label        -compare-2-join           
        JumpFalse    -while-statement-5-end    
        Label        -while-statement-5-block  
        Label        -access-array-3-start     
        PushD        $global-memory-block      
        PushI        8                         
        Add                                    %% arrays
        LoadI                                  
        Nop                                    
        Duplicate                              
        PushD        $reference-space-1        
        Exchange                               
        StoreI                                 
        PushI        12                        
        Add                                    
        LoadI                                  
        PushD        $global-memory-block      
        PushI        12                        
        Add                                    %% indx
        LoadI                                  
        Nop                                    
        Duplicate                              
        PushD        $reference-space-2        
        Exchange                               
        StoreI                                 
        Subtract                               
        JumpPos      -access-array-3-noError   
        Jump         $$array-out-of-bounds     
        Label        -access-array-3-noError   
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
        Label        -access-array-3-end       
        Label        -alloc-array-4-start      
        PushI        7                         
        Nop                                    
        Duplicate                              
        JumpNeg      $$array-negative-length   
        Duplicate                              
        PushD        $reference-space-1        
        Exchange                               
        StoreI                                 
        PushI        8                         
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
        PushI        8                         
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
        Label        -alloc-array-4-loop       
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
        JumpNeg      -alloc-array-4-loop       
        Nop                                    
        StoreI                                 
        PushD        $global-memory-block      
        PushI        12                        
        Add                                    %% indx
        PushD        $global-memory-block      
        PushI        12                        
        Add                                    %% indx
        LoadI                                  
        Nop                                    
        PushI        1                         
        Nop                                    
        Add                                    
        Nop                                    
        StoreI                                 
        Jump         -while-statement-5-start  
        Label        -while-statement-5-end    
        PushD        $global-memory-block      
        PushI        12                        
        Add                                    %% indx
        PushI        0                         
        Nop                                    
        StoreI                                 
        Label        -while-statement-21-start 
        Label        -compare-6-start          
        PushD        $global-memory-block      
        PushI        12                        
        Add                                    %% indx
        LoadI                                  
        Nop                                    
        PushD        $global-memory-block      
        PushI        0                         
        Add                                    %% size
        LoadI                                  
        Nop                                    
        Label        -compare-6-sub            
        Subtract                               
        JumpNeg      -compare-6-true           
        Jump         -compare-6-false          
        Label        -compare-6-true           
        PushI        1                         
        Jump         -compare-6-join           
        Label        -compare-6-false          
        PushI        0                         
        Jump         -compare-6-join           
        Label        -compare-6-join           
        JumpFalse    -while-statement-21-end   
        Label        -while-statement-21-block 
        Label        -access-array-8-start     
        Label        -access-array-7-start     
        PushD        $global-memory-block      
        PushI        8                         
        Add                                    %% arrays
        LoadI                                  
        Nop                                    
        Duplicate                              
        PushD        $reference-space-1        
        Exchange                               
        StoreI                                 
        PushI        12                        
        Add                                    
        LoadI                                  
        PushD        $global-memory-block      
        PushI        12                        
        Add                                    %% indx
        LoadI                                  
        Nop                                    
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
        Nop                                    
        Duplicate                              
        PushD        $reference-space-1        
        Exchange                               
        StoreI                                 
        PushI        12                        
        Add                                    
        LoadI                                  
        PushI        0                         
        Nop                                    
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
        PushF        0.010000                  
        Nop                                    
        PushD        $global-memory-block      
        PushI        12                        
        Add                                    %% indx
        LoadI                                  
        Nop                                    
        Nop                                    
        ConvertF                               
        Nop                                    
        FAdd                                   
        Nop                                    
        StoreF                                 
        Label        -access-array-10-start    
        Label        -access-array-9-start     
        PushD        $global-memory-block      
        PushI        8                         
        Add                                    %% arrays
        LoadI                                  
        Nop                                    
        Duplicate                              
        PushD        $reference-space-1        
        Exchange                               
        StoreI                                 
        PushI        12                        
        Add                                    
        LoadI                                  
        PushD        $global-memory-block      
        PushI        12                        
        Add                                    %% indx
        LoadI                                  
        Nop                                    
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
        LoadI                                  
        Nop                                    
        Duplicate                              
        PushD        $reference-space-1        
        Exchange                               
        StoreI                                 
        PushI        12                        
        Add                                    
        LoadI                                  
        PushI        1                         
        Nop                                    
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
        PushF        0.200000                  
        Nop                                    
        PushD        $global-memory-block      
        PushI        12                        
        Add                                    %% indx
        LoadI                                  
        Nop                                    
        Nop                                    
        ConvertF                               
        Nop                                    
        FAdd                                   
        Nop                                    
        StoreF                                 
        Label        -access-array-12-start    
        Label        -access-array-11-start    
        PushD        $global-memory-block      
        PushI        8                         
        Add                                    %% arrays
        LoadI                                  
        Nop                                    
        Duplicate                              
        PushD        $reference-space-1        
        Exchange                               
        StoreI                                 
        PushI        12                        
        Add                                    
        LoadI                                  
        PushD        $global-memory-block      
        PushI        12                        
        Add                                    %% indx
        LoadI                                  
        Nop                                    
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
        Nop                                    
        Duplicate                              
        PushD        $reference-space-1        
        Exchange                               
        StoreI                                 
        PushI        12                        
        Add                                    
        LoadI                                  
        PushI        2                         
        Nop                                    
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
        PushF        3.000000                  
        Nop                                    
        PushD        $global-memory-block      
        PushI        12                        
        Add                                    %% indx
        LoadI                                  
        Nop                                    
        Nop                                    
        ConvertF                               
        Nop                                    
        FAdd                                   
        Nop                                    
        StoreF                                 
        Label        -access-array-14-start    
        Label        -access-array-13-start    
        PushD        $global-memory-block      
        PushI        8                         
        Add                                    %% arrays
        LoadI                                  
        Nop                                    
        Duplicate                              
        PushD        $reference-space-1        
        Exchange                               
        StoreI                                 
        PushI        12                        
        Add                                    
        LoadI                                  
        PushD        $global-memory-block      
        PushI        12                        
        Add                                    %% indx
        LoadI                                  
        Nop                                    
        Duplicate                              
        PushD        $reference-space-2        
        Exchange                               
        StoreI                                 
        Subtract                               
        JumpPos      -access-array-13-noError  
        Jump         $$array-out-of-bounds     
        Label        -access-array-13-noError  
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
        Label        -access-array-13-end      
        LoadI                                  
        Nop                                    
        Duplicate                              
        PushD        $reference-space-1        
        Exchange                               
        StoreI                                 
        PushI        12                        
        Add                                    
        LoadI                                  
        PushI        3                         
        Nop                                    
        Duplicate                              
        PushD        $reference-space-2        
        Exchange                               
        StoreI                                 
        Subtract                               
        JumpPos      -access-array-14-noError  
        Jump         $$array-out-of-bounds     
        Label        -access-array-14-noError  
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
        Label        -access-array-14-end      
        PushF        40.000000                 
        Nop                                    
        PushD        $global-memory-block      
        PushI        12                        
        Add                                    %% indx
        LoadI                                  
        Nop                                    
        Nop                                    
        ConvertF                               
        Nop                                    
        FAdd                                   
        Nop                                    
        StoreF                                 
        Label        -access-array-16-start    
        Label        -access-array-15-start    
        PushD        $global-memory-block      
        PushI        8                         
        Add                                    %% arrays
        LoadI                                  
        Nop                                    
        Duplicate                              
        PushD        $reference-space-1        
        Exchange                               
        StoreI                                 
        PushI        12                        
        Add                                    
        LoadI                                  
        PushD        $global-memory-block      
        PushI        12                        
        Add                                    %% indx
        LoadI                                  
        Nop                                    
        Duplicate                              
        PushD        $reference-space-2        
        Exchange                               
        StoreI                                 
        Subtract                               
        JumpPos      -access-array-15-noError  
        Jump         $$array-out-of-bounds     
        Label        -access-array-15-noError  
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
        Label        -access-array-15-end      
        LoadI                                  
        Nop                                    
        Duplicate                              
        PushD        $reference-space-1        
        Exchange                               
        StoreI                                 
        PushI        12                        
        Add                                    
        LoadI                                  
        PushI        4                         
        Nop                                    
        Duplicate                              
        PushD        $reference-space-2        
        Exchange                               
        StoreI                                 
        Subtract                               
        JumpPos      -access-array-16-noError  
        Jump         $$array-out-of-bounds     
        Label        -access-array-16-noError  
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
        Label        -access-array-16-end      
        PushF        500.000000                
        Nop                                    
        PushD        $global-memory-block      
        PushI        12                        
        Add                                    %% indx
        LoadI                                  
        Nop                                    
        Nop                                    
        ConvertF                               
        Nop                                    
        FAdd                                   
        Nop                                    
        StoreF                                 
        Label        -access-array-18-start    
        Label        -access-array-17-start    
        PushD        $global-memory-block      
        PushI        8                         
        Add                                    %% arrays
        LoadI                                  
        Nop                                    
        Duplicate                              
        PushD        $reference-space-1        
        Exchange                               
        StoreI                                 
        PushI        12                        
        Add                                    
        LoadI                                  
        PushD        $global-memory-block      
        PushI        12                        
        Add                                    %% indx
        LoadI                                  
        Nop                                    
        Duplicate                              
        PushD        $reference-space-2        
        Exchange                               
        StoreI                                 
        Subtract                               
        JumpPos      -access-array-17-noError  
        Jump         $$array-out-of-bounds     
        Label        -access-array-17-noError  
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
        Label        -access-array-17-end      
        LoadI                                  
        Nop                                    
        Duplicate                              
        PushD        $reference-space-1        
        Exchange                               
        StoreI                                 
        PushI        12                        
        Add                                    
        LoadI                                  
        PushI        5                         
        Nop                                    
        Duplicate                              
        PushD        $reference-space-2        
        Exchange                               
        StoreI                                 
        Subtract                               
        JumpPos      -access-array-18-noError  
        Jump         $$array-out-of-bounds     
        Label        -access-array-18-noError  
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
        Label        -access-array-18-end      
        PushF        6000.000000               
        Nop                                    
        PushD        $global-memory-block      
        PushI        12                        
        Add                                    %% indx
        LoadI                                  
        Nop                                    
        Nop                                    
        ConvertF                               
        Nop                                    
        FAdd                                   
        Nop                                    
        StoreF                                 
        Label        -access-array-20-start    
        Label        -access-array-19-start    
        PushD        $global-memory-block      
        PushI        8                         
        Add                                    %% arrays
        LoadI                                  
        Nop                                    
        Duplicate                              
        PushD        $reference-space-1        
        Exchange                               
        StoreI                                 
        PushI        12                        
        Add                                    
        LoadI                                  
        PushD        $global-memory-block      
        PushI        12                        
        Add                                    %% indx
        LoadI                                  
        Nop                                    
        Duplicate                              
        PushD        $reference-space-2        
        Exchange                               
        StoreI                                 
        Subtract                               
        JumpPos      -access-array-19-noError  
        Jump         $$array-out-of-bounds     
        Label        -access-array-19-noError  
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
        Label        -access-array-19-end      
        LoadI                                  
        Nop                                    
        Duplicate                              
        PushD        $reference-space-1        
        Exchange                               
        StoreI                                 
        PushI        12                        
        Add                                    
        LoadI                                  
        PushI        6                         
        Nop                                    
        Duplicate                              
        PushD        $reference-space-2        
        Exchange                               
        StoreI                                 
        Subtract                               
        JumpPos      -access-array-20-noError  
        Jump         $$array-out-of-bounds     
        Label        -access-array-20-noError  
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
        Label        -access-array-20-end      
        PushF        70000.000000              
        Nop                                    
        PushD        $global-memory-block      
        PushI        12                        
        Add                                    %% indx
        LoadI                                  
        Nop                                    
        Nop                                    
        ConvertF                               
        Nop                                    
        FAdd                                   
        Nop                                    
        StoreF                                 
        PushD        $global-memory-block      
        PushI        12                        
        Add                                    %% indx
        PushD        $global-memory-block      
        PushI        12                        
        Add                                    %% indx
        LoadI                                  
        Nop                                    
        PushI        1                         
        Nop                                    
        Add                                    
        Nop                                    
        StoreI                                 
        Jump         -while-statement-21-start 
        Label        -while-statement-21-end   
        PushD        $global-memory-block      
        PushI        12                        
        Add                                    %% indx
        PushI        0                         
        Nop                                    
        StoreI                                 
        Label        -while-statement-56-start 
        Label        -compare-22-start         
        PushD        $global-memory-block      
        PushI        12                        
        Add                                    %% indx
        LoadI                                  
        Nop                                    
        PushD        $global-memory-block      
        PushI        0                         
        Add                                    %% size
        LoadI                                  
        Nop                                    
        Label        -compare-22-sub           
        Subtract                               
        JumpNeg      -compare-22-true          
        Jump         -compare-22-false         
        Label        -compare-22-true          
        PushI        1                         
        Jump         -compare-22-join          
        Label        -compare-22-false         
        PushI        0                         
        Jump         -compare-22-join          
        Label        -compare-22-join          
        JumpFalse    -while-statement-56-end   
        Label        -while-statement-56-block 
        PushD        $global-memory-block      
        PushI        16                        
        Add                                    %% elem1
        Label        -compare-25-start         
        PushF        0.010000                  
        Nop                                    
        PushD        $global-memory-block      
        PushI        12                        
        Add                                    %% indx
        LoadI                                  
        Nop                                    
        Nop                                    
        ConvertF                               
        Nop                                    
        FAdd                                   
        Nop                                    
        Label        -access-array-24-start    
        Label        -access-array-23-start    
        PushD        $global-memory-block      
        PushI        8                         
        Add                                    %% arrays
        LoadI                                  
        Nop                                    
        Duplicate                              
        PushD        $reference-space-1        
        Exchange                               
        StoreI                                 
        PushI        12                        
        Add                                    
        LoadI                                  
        PushD        $global-memory-block      
        PushI        12                        
        Add                                    %% indx
        LoadI                                  
        Nop                                    
        Duplicate                              
        PushD        $reference-space-2        
        Exchange                               
        StoreI                                 
        Subtract                               
        JumpPos      -access-array-23-noError  
        Jump         $$array-out-of-bounds     
        Label        -access-array-23-noError  
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
        Label        -access-array-23-end      
        LoadI                                  
        Nop                                    
        Duplicate                              
        PushD        $reference-space-1        
        Exchange                               
        StoreI                                 
        PushI        12                        
        Add                                    
        LoadI                                  
        PushI        0                         
        Nop                                    
        Duplicate                              
        PushD        $reference-space-2        
        Exchange                               
        StoreI                                 
        Subtract                               
        JumpPos      -access-array-24-noError  
        Jump         $$array-out-of-bounds     
        Label        -access-array-24-noError  
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
        Label        -access-array-24-end      
        LoadF                                  
        Nop                                    
        Label        -compare-25-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-25-equate        
        Pop                                    
        Jump         -compare-25-false         
        Label        -compare-25-equate        
        Pop                                    
        Label        -compare-25-true          
        PushI        1                         
        Jump         -compare-25-join          
        Label        -compare-25-false         
        PushI        0                         
        Jump         -compare-25-join          
        Label        -compare-25-join          
        StoreC                                 
        PushD        $global-memory-block      
        PushI        17                        
        Add                                    %% elem2
        Label        -compare-28-start         
        PushF        0.200000                  
        Nop                                    
        PushD        $global-memory-block      
        PushI        12                        
        Add                                    %% indx
        LoadI                                  
        Nop                                    
        Nop                                    
        ConvertF                               
        Nop                                    
        FAdd                                   
        Nop                                    
        Label        -access-array-27-start    
        Label        -access-array-26-start    
        PushD        $global-memory-block      
        PushI        8                         
        Add                                    %% arrays
        LoadI                                  
        Nop                                    
        Duplicate                              
        PushD        $reference-space-1        
        Exchange                               
        StoreI                                 
        PushI        12                        
        Add                                    
        LoadI                                  
        PushD        $global-memory-block      
        PushI        12                        
        Add                                    %% indx
        LoadI                                  
        Nop                                    
        Duplicate                              
        PushD        $reference-space-2        
        Exchange                               
        StoreI                                 
        Subtract                               
        JumpPos      -access-array-26-noError  
        Jump         $$array-out-of-bounds     
        Label        -access-array-26-noError  
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
        Label        -access-array-26-end      
        LoadI                                  
        Nop                                    
        Duplicate                              
        PushD        $reference-space-1        
        Exchange                               
        StoreI                                 
        PushI        12                        
        Add                                    
        LoadI                                  
        PushI        1                         
        Nop                                    
        Duplicate                              
        PushD        $reference-space-2        
        Exchange                               
        StoreI                                 
        Subtract                               
        JumpPos      -access-array-27-noError  
        Jump         $$array-out-of-bounds     
        Label        -access-array-27-noError  
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
        Label        -access-array-27-end      
        LoadF                                  
        Nop                                    
        Label        -compare-28-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-28-equate        
        Pop                                    
        Jump         -compare-28-false         
        Label        -compare-28-equate        
        Pop                                    
        Label        -compare-28-true          
        PushI        1                         
        Jump         -compare-28-join          
        Label        -compare-28-false         
        PushI        0                         
        Jump         -compare-28-join          
        Label        -compare-28-join          
        StoreC                                 
        PushD        $global-memory-block      
        PushI        18                        
        Add                                    %% elem3
        Label        -compare-31-start         
        PushF        3.000000                  
        Nop                                    
        PushD        $global-memory-block      
        PushI        12                        
        Add                                    %% indx
        LoadI                                  
        Nop                                    
        Nop                                    
        ConvertF                               
        Nop                                    
        FAdd                                   
        Nop                                    
        Label        -access-array-30-start    
        Label        -access-array-29-start    
        PushD        $global-memory-block      
        PushI        8                         
        Add                                    %% arrays
        LoadI                                  
        Nop                                    
        Duplicate                              
        PushD        $reference-space-1        
        Exchange                               
        StoreI                                 
        PushI        12                        
        Add                                    
        LoadI                                  
        PushD        $global-memory-block      
        PushI        12                        
        Add                                    %% indx
        LoadI                                  
        Nop                                    
        Duplicate                              
        PushD        $reference-space-2        
        Exchange                               
        StoreI                                 
        Subtract                               
        JumpPos      -access-array-29-noError  
        Jump         $$array-out-of-bounds     
        Label        -access-array-29-noError  
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
        Label        -access-array-29-end      
        LoadI                                  
        Nop                                    
        Duplicate                              
        PushD        $reference-space-1        
        Exchange                               
        StoreI                                 
        PushI        12                        
        Add                                    
        LoadI                                  
        PushI        2                         
        Nop                                    
        Duplicate                              
        PushD        $reference-space-2        
        Exchange                               
        StoreI                                 
        Subtract                               
        JumpPos      -access-array-30-noError  
        Jump         $$array-out-of-bounds     
        Label        -access-array-30-noError  
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
        Label        -access-array-30-end      
        LoadF                                  
        Nop                                    
        Label        -compare-31-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-31-equate        
        Pop                                    
        Jump         -compare-31-false         
        Label        -compare-31-equate        
        Pop                                    
        Label        -compare-31-true          
        PushI        1                         
        Jump         -compare-31-join          
        Label        -compare-31-false         
        PushI        0                         
        Jump         -compare-31-join          
        Label        -compare-31-join          
        StoreC                                 
        PushD        $global-memory-block      
        PushI        19                        
        Add                                    %% elem4
        Label        -compare-34-start         
        PushF        40.000000                 
        Nop                                    
        PushD        $global-memory-block      
        PushI        12                        
        Add                                    %% indx
        LoadI                                  
        Nop                                    
        Nop                                    
        ConvertF                               
        Nop                                    
        FAdd                                   
        Nop                                    
        Label        -access-array-33-start    
        Label        -access-array-32-start    
        PushD        $global-memory-block      
        PushI        8                         
        Add                                    %% arrays
        LoadI                                  
        Nop                                    
        Duplicate                              
        PushD        $reference-space-1        
        Exchange                               
        StoreI                                 
        PushI        12                        
        Add                                    
        LoadI                                  
        PushD        $global-memory-block      
        PushI        12                        
        Add                                    %% indx
        LoadI                                  
        Nop                                    
        Duplicate                              
        PushD        $reference-space-2        
        Exchange                               
        StoreI                                 
        Subtract                               
        JumpPos      -access-array-32-noError  
        Jump         $$array-out-of-bounds     
        Label        -access-array-32-noError  
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
        Label        -access-array-32-end      
        LoadI                                  
        Nop                                    
        Duplicate                              
        PushD        $reference-space-1        
        Exchange                               
        StoreI                                 
        PushI        12                        
        Add                                    
        LoadI                                  
        PushI        3                         
        Nop                                    
        Duplicate                              
        PushD        $reference-space-2        
        Exchange                               
        StoreI                                 
        Subtract                               
        JumpPos      -access-array-33-noError  
        Jump         $$array-out-of-bounds     
        Label        -access-array-33-noError  
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
        Label        -access-array-33-end      
        LoadF                                  
        Nop                                    
        Label        -compare-34-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-34-equate        
        Pop                                    
        Jump         -compare-34-false         
        Label        -compare-34-equate        
        Pop                                    
        Label        -compare-34-true          
        PushI        1                         
        Jump         -compare-34-join          
        Label        -compare-34-false         
        PushI        0                         
        Jump         -compare-34-join          
        Label        -compare-34-join          
        StoreC                                 
        PushD        $global-memory-block      
        PushI        20                        
        Add                                    %% elem5
        Label        -compare-37-start         
        PushF        500.000000                
        Nop                                    
        PushD        $global-memory-block      
        PushI        12                        
        Add                                    %% indx
        LoadI                                  
        Nop                                    
        Nop                                    
        ConvertF                               
        Nop                                    
        FAdd                                   
        Nop                                    
        Label        -access-array-36-start    
        Label        -access-array-35-start    
        PushD        $global-memory-block      
        PushI        8                         
        Add                                    %% arrays
        LoadI                                  
        Nop                                    
        Duplicate                              
        PushD        $reference-space-1        
        Exchange                               
        StoreI                                 
        PushI        12                        
        Add                                    
        LoadI                                  
        PushD        $global-memory-block      
        PushI        12                        
        Add                                    %% indx
        LoadI                                  
        Nop                                    
        Duplicate                              
        PushD        $reference-space-2        
        Exchange                               
        StoreI                                 
        Subtract                               
        JumpPos      -access-array-35-noError  
        Jump         $$array-out-of-bounds     
        Label        -access-array-35-noError  
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
        Label        -access-array-35-end      
        LoadI                                  
        Nop                                    
        Duplicate                              
        PushD        $reference-space-1        
        Exchange                               
        StoreI                                 
        PushI        12                        
        Add                                    
        LoadI                                  
        PushI        4                         
        Nop                                    
        Duplicate                              
        PushD        $reference-space-2        
        Exchange                               
        StoreI                                 
        Subtract                               
        JumpPos      -access-array-36-noError  
        Jump         $$array-out-of-bounds     
        Label        -access-array-36-noError  
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
        Label        -access-array-36-end      
        LoadF                                  
        Nop                                    
        Label        -compare-37-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-37-equate        
        Pop                                    
        Jump         -compare-37-false         
        Label        -compare-37-equate        
        Pop                                    
        Label        -compare-37-true          
        PushI        1                         
        Jump         -compare-37-join          
        Label        -compare-37-false         
        PushI        0                         
        Jump         -compare-37-join          
        Label        -compare-37-join          
        StoreC                                 
        PushD        $global-memory-block      
        PushI        21                        
        Add                                    %% elem6
        Label        -compare-40-start         
        PushF        6000.000000               
        Nop                                    
        PushD        $global-memory-block      
        PushI        12                        
        Add                                    %% indx
        LoadI                                  
        Nop                                    
        Nop                                    
        ConvertF                               
        Nop                                    
        FAdd                                   
        Nop                                    
        Label        -access-array-39-start    
        Label        -access-array-38-start    
        PushD        $global-memory-block      
        PushI        8                         
        Add                                    %% arrays
        LoadI                                  
        Nop                                    
        Duplicate                              
        PushD        $reference-space-1        
        Exchange                               
        StoreI                                 
        PushI        12                        
        Add                                    
        LoadI                                  
        PushD        $global-memory-block      
        PushI        12                        
        Add                                    %% indx
        LoadI                                  
        Nop                                    
        Duplicate                              
        PushD        $reference-space-2        
        Exchange                               
        StoreI                                 
        Subtract                               
        JumpPos      -access-array-38-noError  
        Jump         $$array-out-of-bounds     
        Label        -access-array-38-noError  
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
        Label        -access-array-38-end      
        LoadI                                  
        Nop                                    
        Duplicate                              
        PushD        $reference-space-1        
        Exchange                               
        StoreI                                 
        PushI        12                        
        Add                                    
        LoadI                                  
        PushI        5                         
        Nop                                    
        Duplicate                              
        PushD        $reference-space-2        
        Exchange                               
        StoreI                                 
        Subtract                               
        JumpPos      -access-array-39-noError  
        Jump         $$array-out-of-bounds     
        Label        -access-array-39-noError  
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
        Label        -access-array-39-end      
        LoadF                                  
        Nop                                    
        Label        -compare-40-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-40-equate        
        Pop                                    
        Jump         -compare-40-false         
        Label        -compare-40-equate        
        Pop                                    
        Label        -compare-40-true          
        PushI        1                         
        Jump         -compare-40-join          
        Label        -compare-40-false         
        PushI        0                         
        Jump         -compare-40-join          
        Label        -compare-40-join          
        StoreC                                 
        PushD        $global-memory-block      
        PushI        22                        
        Add                                    %% elem7
        Label        -compare-43-start         
        PushF        70000.000000              
        Nop                                    
        PushD        $global-memory-block      
        PushI        12                        
        Add                                    %% indx
        LoadI                                  
        Nop                                    
        Nop                                    
        ConvertF                               
        Nop                                    
        FAdd                                   
        Nop                                    
        Label        -access-array-42-start    
        Label        -access-array-41-start    
        PushD        $global-memory-block      
        PushI        8                         
        Add                                    %% arrays
        LoadI                                  
        Nop                                    
        Duplicate                              
        PushD        $reference-space-1        
        Exchange                               
        StoreI                                 
        PushI        12                        
        Add                                    
        LoadI                                  
        PushD        $global-memory-block      
        PushI        12                        
        Add                                    %% indx
        LoadI                                  
        Nop                                    
        Duplicate                              
        PushD        $reference-space-2        
        Exchange                               
        StoreI                                 
        Subtract                               
        JumpPos      -access-array-41-noError  
        Jump         $$array-out-of-bounds     
        Label        -access-array-41-noError  
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
        Label        -access-array-41-end      
        LoadI                                  
        Nop                                    
        Duplicate                              
        PushD        $reference-space-1        
        Exchange                               
        StoreI                                 
        PushI        12                        
        Add                                    
        LoadI                                  
        PushI        6                         
        Nop                                    
        Duplicate                              
        PushD        $reference-space-2        
        Exchange                               
        StoreI                                 
        Subtract                               
        JumpPos      -access-array-42-noError  
        Jump         $$array-out-of-bounds     
        Label        -access-array-42-noError  
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
        Label        -access-array-42-end      
        LoadF                                  
        Nop                                    
        Label        -compare-43-sub           
        FSubtract                              
        Duplicate                              
        JumpFZero    -compare-43-equate        
        Pop                                    
        Jump         -compare-43-false         
        Label        -compare-43-equate        
        Pop                                    
        Label        -compare-43-true          
        PushI        1                         
        Jump         -compare-43-join          
        Label        -compare-43-false         
        PushI        0                         
        Jump         -compare-43-join          
        Label        -compare-43-join          
        StoreC                                 
        PushD        $global-memory-block      
        PushI        23                        
        Add                                    %% good
        Label        -compare-49-start         
        Label        -compare-48-start         
        Label        -compare-47-start         
        Label        -compare-46-start         
        Label        -compare-45-start         
        Label        -compare-44-start         
        PushD        $global-memory-block      
        PushI        16                        
        Add                                    %% elem1
        LoadC                                  
        Nop                                    
        PushD        $global-memory-block      
        PushI        17                        
        Add                                    %% elem2
        LoadC                                  
        Nop                                    
        Label        -compare-44-sub           
        Exchange                               
        JumpFalse    -compare-44-arg1false     
        JumpFalse    -compare-44-false         
        PushI        1                         
        Jump         -compare-44-join          
        Label        -compare-44-arg1false     
        Pop                                    
        Label        -compare-44-false         
        PushI        0                         
        Label        -compare-44-join          
        Nop                                    
        PushD        $global-memory-block      
        PushI        18                        
        Add                                    %% elem3
        LoadC                                  
        Nop                                    
        Label        -compare-45-sub           
        Exchange                               
        JumpFalse    -compare-45-arg1false     
        JumpFalse    -compare-45-false         
        PushI        1                         
        Jump         -compare-45-join          
        Label        -compare-45-arg1false     
        Pop                                    
        Label        -compare-45-false         
        PushI        0                         
        Label        -compare-45-join          
        Nop                                    
        PushD        $global-memory-block      
        PushI        19                        
        Add                                    %% elem4
        LoadC                                  
        Nop                                    
        Label        -compare-46-sub           
        Exchange                               
        JumpFalse    -compare-46-arg1false     
        JumpFalse    -compare-46-false         
        PushI        1                         
        Jump         -compare-46-join          
        Label        -compare-46-arg1false     
        Pop                                    
        Label        -compare-46-false         
        PushI        0                         
        Label        -compare-46-join          
        Nop                                    
        PushD        $global-memory-block      
        PushI        20                        
        Add                                    %% elem5
        LoadC                                  
        Nop                                    
        Label        -compare-47-sub           
        Exchange                               
        JumpFalse    -compare-47-arg1false     
        JumpFalse    -compare-47-false         
        PushI        1                         
        Jump         -compare-47-join          
        Label        -compare-47-arg1false     
        Pop                                    
        Label        -compare-47-false         
        PushI        0                         
        Label        -compare-47-join          
        Nop                                    
        PushD        $global-memory-block      
        PushI        21                        
        Add                                    %% elem6
        LoadC                                  
        Nop                                    
        Label        -compare-48-sub           
        Exchange                               
        JumpFalse    -compare-48-arg1false     
        JumpFalse    -compare-48-false         
        PushI        1                         
        Jump         -compare-48-join          
        Label        -compare-48-arg1false     
        Pop                                    
        Label        -compare-48-false         
        PushI        0                         
        Label        -compare-48-join          
        Nop                                    
        PushD        $global-memory-block      
        PushI        22                        
        Add                                    %% elem7
        LoadC                                  
        Nop                                    
        Label        -compare-49-sub           
        Exchange                               
        JumpFalse    -compare-49-arg1false     
        JumpFalse    -compare-49-false         
        PushI        1                         
        Jump         -compare-49-join          
        Label        -compare-49-arg1false     
        Pop                                    
        Label        -compare-49-false         
        PushI        0                         
        Label        -compare-49-join          
        StoreC                                 
        Label        -if-statement-53-start    
        Label        -compare-51-start         
        PushD        $global-memory-block      
        PushI        12                        
        Add                                    %% indx
        LoadI                                  
        Nop                                    
        PushD        $global-memory-block      
        PushI        4                         
        Add                                    %% printEvery
        LoadI                                  
        Nop                                    
        Label        -compare-50-start         
        PushD        $global-memory-block      
        PushI        12                        
        Add                                    %% indx
        LoadI                                  
        Nop                                    
        PushD        $global-memory-block      
        PushI        4                         
        Add                                    %% printEvery
        LoadI                                  
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Nop                                    
        Multiply                               
        Nop                                    
        Label        -compare-51-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-51-equate        
        Pop                                    
        Jump         -compare-51-false         
        Label        -compare-51-equate        
        Pop                                    
        Label        -compare-51-true          
        PushI        1                         
        Jump         -compare-51-join          
        Label        -compare-51-false         
        PushI        0                         
        Jump         -compare-51-join          
        Label        -compare-51-join          
        JumpFalse    -if-statement-53-end      
        Label        -if-statement-53-block    
        PushD        $global-memory-block      
        PushI        12                        
        Add                                    %% indx
        LoadI                                  
        PushD        $print-format-integer     
        Printf                                 
        PushI        32                        
        PushD        $print-format-char        
        Printf                                 
        PushD        $global-memory-block      
        PushI        23                        
        Add                                    %% good
        LoadC                                  
        JumpTrue     -print-boolean-52-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-52-join    
        Label        -print-boolean-52-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-52-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -if-statement-53-end      
        Label        -if-statement-55-start    
        PushD        $global-memory-block      
        PushI        23                        
        Add                                    %% good
        LoadC                                  
        Nop                                    
        PushI        1                         
        BTXor                                  
        JumpFalse    -if-statement-55-end      
        Label        -if-statement-55-block    
        DLabel       -string-constant-54-      
        DataI        3                         
        DataI        9                         
        DataI        5                         
        DataC        98                        %% "bad! "
        DataC        97                        
        DataC        100                       
        DataC        33                        
        DataC        32                        
        DataC        0                         
        PushD        -string-constant-54-      
        PushI        12                        
        Add                                    
        PushD        $print-format-string      
        Printf                                 
        PushI        32                        
        PushD        $print-format-char        
        Printf                                 
        PushD        $global-memory-block      
        PushI        12                        
        Add                                    %% indx
        LoadI                                  
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -if-statement-55-end      
        PushD        $global-memory-block      
        PushI        12                        
        Add                                    %% indx
        PushD        $global-memory-block      
        PushI        12                        
        Add                                    %% indx
        LoadI                                  
        Nop                                    
        PushI        1                         
        Nop                                    
        Add                                    
        Nop                                    
        StoreI                                 
        Jump         -while-statement-56-start 
        Label        -while-statement-56-end   
        Halt                                   
        Label        $print-array              
        DLabel       $print-array-return-address 
        DataZ        4                         
        DLabel       $print-array-depth        
        DataZ        4                         
        DLabel       $print-array-typeid       
        DataZ        4                         
        DLabel       $print-array-address      
        DataZ        4                         
        DLabel       $print-array-index        
        DataZ        4                         
        PushD        $print-array-return-address 
        Exchange                               
        StoreI                                 
        PushD        $print-array-depth        
        Exchange                               
        StoreI                                 
        PushD        $print-array-typeid       
        Exchange                               
        StoreI                                 
        PushD        $print-array-address      
        Exchange                               
        StoreI                                 
        PushD        $print-format-open-square 
        Printf                                 
        PushD        $print-array-address      
        LoadI                                  
        PushI        12                        
        Add                                    
        LoadI                                  
        JumpFalse    $print-array-loop-end     
        PushI        0                         
        PushD        $print-array-index        
        Exchange                               
        StoreI                                 
        Label        $print-array-loop-start   
        PushD        $print-array-depth        
        LoadI                                  
        JumpFalse    $print-array-value-start  
        PushD        $print-array-index        
        LoadI                                  
        PushD        $print-array-address      
        LoadI                                  
        PushD        $print-array-typeid       
        LoadI                                  
        PushD        $print-array-depth        
        LoadI                                  
        PushD        $print-array-return-address 
        LoadI                                  
        PushD        $print-array-index        
        LoadI                                  
        PushD        $print-array-address      
        LoadI                                  
        Duplicate                              
        PushD        $reference-space-macro    
        Exchange                               
        StoreI                                 
        PushI        8                         
        Add                                    
        LoadI                                  
        Multiply                               
        PushI        16                        
        Add                                    
        PushD        $reference-space-macro    
        LoadI                                  
        Add                                    
        LoadI                                  
        PushD        $print-array-typeid       
        LoadI                                  
        PushD        $print-array-depth        
        LoadI                                  
        PushI        1                         
        Subtract                               
        Call         $print-array              
        PushD        $print-array-return-address 
        Exchange                               
        StoreI                                 
        PushD        $print-array-depth        
        Exchange                               
        StoreI                                 
        PushD        $print-array-typeid       
        Exchange                               
        StoreI                                 
        PushD        $print-array-address      
        Exchange                               
        StoreI                                 
        PushD        $print-array-index        
        Exchange                               
        StoreI                                 
        Jump         $print-array-value-end    
        Label        $print-array-value-start  
        PushD        $print-array-index        
        LoadI                                  
        PushD        $print-array-address      
        LoadI                                  
        Duplicate                              
        PushD        $reference-space-macro    
        Exchange                               
        StoreI                                 
        PushI        8                         
        Add                                    
        LoadI                                  
        Multiply                               
        PushI        16                        
        Add                                    
        PushD        $reference-space-macro    
        LoadI                                  
        Add                                    
        PushD        $print-array-typeid       
        LoadI                                  
        Call         $print-value              
        Label        $print-array-value-end    
        PushI        1                         
        PushD        $print-array-index        
        LoadI                                  
        Add                                    
        PushD        $print-array-index        
        Exchange                               
        StoreI                                 
        PushD        $print-array-address      
        LoadI                                  
        PushI        12                        
        Add                                    
        LoadI                                  
        PushD        $print-array-index        
        LoadI                                  
        Subtract                               
        JumpFalse    $print-array-loop-end     
        PushD        $print-format-comma       
        Printf                                 
        PushD        $print-format-space       
        Printf                                 
        Jump         $print-array-loop-start   
        Label        $print-array-loop-end     
        PushD        $print-format-close-square 
        Printf                                 
        PushD        $print-array-return-address 
        LoadI                                  
        Return                                 
        Label        $print-value              
        DLabel       $print-value-return-address 
        DataZ        4                         
        DLabel       $print-value-typeid       
        DataZ        4                         
        DLabel       $print-value-address      
        DataZ        4                         
        PushD        $print-value-return-address 
        Exchange                               
        StoreI                                 
        PushD        $print-value-typeid       
        Exchange                               
        StoreI                                 
        PushD        $print-value-address      
        Exchange                               
        StoreI                                 
        PushD        $print-value-typeid       
        LoadI                                  
        PushI        8                         
        Subtract                               
        JumpNeg      -print-value-57-char      
        PushD        $print-value-address      
        LoadI                                  
        PushD        $print-value-typeid       
        LoadI                                  
        PushD        $print-value-return-address 
        LoadI                                  
        PushD        $print-value-address      
        LoadI                                  
        PushD        $print-value-typeid       
        LoadI                                  
        Call         $print-range              
        PushD        $print-value-return-address 
        Exchange                               
        StoreI                                 
        PushD        $print-value-typeid       
        Exchange                               
        StoreI                                 
        PushD        $print-value-address      
        Exchange                               
        StoreI                                 
        Jump         -print-value-57-end       
        Label        -print-value-57-char      
        PushD        $print-value-typeid       
        LoadI                                  
        JumpTrue     -print-value-57-int       
        PushD        $print-value-address      
        LoadI                                  
        LoadC                                  
        PushD        $print-format-char        
        Printf                                 
        Label        -print-value-57-int       
        PushD        $print-value-typeid       
        LoadI                                  
        PushI        1                         
        Subtract                               
        JumpTrue     -print-value-57-float     
        PushD        $print-value-address      
        LoadI                                  
        LoadI                                  
        PushD        $print-format-integer     
        Printf                                 
        Label        -print-value-57-float     
        PushD        $print-value-typeid       
        LoadI                                  
        PushI        2                         
        Subtract                               
        JumpTrue     -print-value-57-string    
        PushD        $print-value-address      
        LoadI                                  
        LoadF                                  
        PushD        $print-format-floating    
        Printf                                 
        Label        -print-value-57-string    
        PushD        $print-value-typeid       
        LoadI                                  
        PushI        3                         
        Subtract                               
        JumpTrue     -print-value-57-bool      
        PushD        $print-value-address      
        LoadI                                  
        LoadI                                  
        PushI        12                        
        Add                                    
        PushD        $print-format-string      
        Printf                                 
        Label        -print-value-57-bool      
        PushD        $print-value-typeid       
        LoadI                                  
        PushI        4                         
        Subtract                               
        JumpTrue     -print-value-57-end       
        PushD        $print-value-address      
        LoadI                                  
        LoadC                                  
        JumpTrue     -print-value-57-true      
        PushD        $boolean-false-string     
        Jump         -print-value-57-pastTrue  
        Label        -print-value-57-true      
        PushD        $boolean-true-string      
        Label        -print-value-57-pastTrue  
        PushD        $print-format-string      
        Printf                                 
        Label        -print-value-57-end       
        PushD        $print-value-return-address 
        LoadI                                  
        Return                                 
        Label        $print-range              
        DLabel       -print-range-58-return-address 
        DataZ        4                         
        DLabel       -print-range-58-typeID    
        DataZ        4                         
        DLabel       -print-range-58-address   
        DataZ        4                         
        PushD        -print-range-58-return-address 
        Exchange                               
        StoreI                                 
        PushI        7                         
        BTAnd                                  
        PushD        -print-range-58-typeID    
        Exchange                               
        StoreI                                 
        PushD        -print-range-58-address   
        Exchange                               
        StoreI                                 
        PushD        $print-format-less        
        Printf                                 
        PushD        -print-range-58-address   
        LoadI                                  
        PushD        -print-range-58-typeID    
        LoadI                                  
        Call         $print-value              
        PushD        $print-format-period      
        Printf                                 
        PushD        -print-range-58-typeID    
        LoadI                                  
        JumpTrue     -print-range-58-type-int  
        PushI        1                         
        Jump         -print-range-58-after-offset 
        Label        -print-range-58-type-int  
        PushD        -print-range-58-typeID    
        LoadI                                  
        PushI        1                         
        BTAnd                                  
        JumpFalse    -print-range-58-type-float 
        PushI        4                         
        Jump         -print-range-58-after-offset 
        Label        -print-range-58-type-float 
        PushD        -print-range-58-typeID    
        LoadI                                  
        PushI        2                         
        BTAnd                                  
        JumpFalse    $$range-contains-invalid-type 
        PushI        8                         
        Label        -print-range-58-after-offset 
        PushD        -print-range-58-address   
        LoadI                                  
        Add                                    
        PushD        -print-range-58-typeID    
        LoadI                                  
        Call         $print-value              
        PushD        $print-format-greater     
        Printf                                 
        PushD        -print-range-58-return-address 
        LoadI                                  
        Return                                 
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
