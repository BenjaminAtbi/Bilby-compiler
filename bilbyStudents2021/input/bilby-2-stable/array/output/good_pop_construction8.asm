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
        DataZ        16                        
        Label        $$main                    
        PushD        $global-memory-block      
        PushI        0                         
        Add                                    %% arrays
        Label        -alloc-array-1-start      
        PushI        100                       
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
        PushI        4                         
        Add                                    %% indx
        PushI        0                         
        StoreI                                 
        Label        -while-statement-5-start  
        Label        -compare-2-start          
        PushD        $global-memory-block      
        PushI        4                         
        Add                                    %% indx
        LoadI                                  
        Nop                                    
        PushI        100                       
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
        PushI        0                         
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
        PushI        4                         
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
        PushD        $reference-space-2        
        LoadI                                  
        Duplicate                              
        PushI        16                        
        Add                                    
        PushI        1                         
        StoreI                                 
        Duplicate                              
        PushI        20                        
        Add                                    
        PushI        2                         
        StoreI                                 
        Duplicate                              
        PushI        24                        
        Add                                    
        PushI        3                         
        StoreI                                 
        Duplicate                              
        PushI        28                        
        Add                                    
        PushI        4                         
        StoreI                                 
        Duplicate                              
        PushI        32                        
        Add                                    
        PushI        5                         
        StoreI                                 
        Duplicate                              
        PushI        36                        
        Add                                    
        PushI        6                         
        StoreI                                 
        Duplicate                              
        PushI        40                        
        Add                                    
        PushI        99                        
        StoreI                                 
        Nop                                    
        StoreI                                 
        PushD        $global-memory-block      
        PushI        4                         
        Add                                    %% indx
        PushD        $global-memory-block      
        PushI        4                         
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
        PushI        4                         
        Add                                    %% indx
        PushI        0                         
        Nop                                    
        StoreI                                 
        Label        -while-statement-40-start 
        Label        -compare-6-start          
        PushD        $global-memory-block      
        PushI        4                         
        Add                                    %% indx
        LoadI                                  
        Nop                                    
        PushI        100                       
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
        JumpFalse    -while-statement-40-end   
        Label        -while-statement-40-block 
        PushD        $global-memory-block      
        PushI        8                         
        Add                                    %% elem1
        Label        -compare-9-start          
        PushI        1                         
        Nop                                    
        Label        -access-array-8-start     
        Label        -access-array-7-start     
        PushD        $global-memory-block      
        PushI        0                         
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
        PushI        4                         
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
        LoadI                                  
        Nop                                    
        Label        -compare-9-sub            
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-9-equate         
        Pop                                    
        Jump         -compare-9-false          
        Label        -compare-9-equate         
        Pop                                    
        Label        -compare-9-true           
        PushI        1                         
        Jump         -compare-9-join           
        Label        -compare-9-false          
        PushI        0                         
        Jump         -compare-9-join           
        Label        -compare-9-join           
        StoreC                                 
        PushD        $global-memory-block      
        PushI        9                         
        Add                                    %% elem2
        Label        -compare-12-start         
        PushI        2                         
        Nop                                    
        Label        -access-array-11-start    
        Label        -access-array-10-start    
        PushD        $global-memory-block      
        PushI        0                         
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
        PushI        4                         
        Add                                    %% indx
        LoadI                                  
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
        Label        -compare-12-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-12-equate        
        Pop                                    
        Jump         -compare-12-false         
        Label        -compare-12-equate        
        Pop                                    
        Label        -compare-12-true          
        PushI        1                         
        Jump         -compare-12-join          
        Label        -compare-12-false         
        PushI        0                         
        Jump         -compare-12-join          
        Label        -compare-12-join          
        StoreC                                 
        PushD        $global-memory-block      
        PushI        10                        
        Add                                    %% elem3
        Label        -compare-15-start         
        PushI        3                         
        Nop                                    
        Label        -access-array-14-start    
        Label        -access-array-13-start    
        PushD        $global-memory-block      
        PushI        0                         
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
        PushI        4                         
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
        PushI        2                         
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
        LoadI                                  
        Nop                                    
        Label        -compare-15-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-15-equate        
        Pop                                    
        Jump         -compare-15-false         
        Label        -compare-15-equate        
        Pop                                    
        Label        -compare-15-true          
        PushI        1                         
        Jump         -compare-15-join          
        Label        -compare-15-false         
        PushI        0                         
        Jump         -compare-15-join          
        Label        -compare-15-join          
        StoreC                                 
        PushD        $global-memory-block      
        PushI        11                        
        Add                                    %% elem4
        Label        -compare-18-start         
        PushI        4                         
        Nop                                    
        Label        -access-array-17-start    
        Label        -access-array-16-start    
        PushD        $global-memory-block      
        PushI        0                         
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
        PushI        4                         
        Add                                    %% indx
        LoadI                                  
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
        Label        -compare-18-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-18-equate        
        Pop                                    
        Jump         -compare-18-false         
        Label        -compare-18-equate        
        Pop                                    
        Label        -compare-18-true          
        PushI        1                         
        Jump         -compare-18-join          
        Label        -compare-18-false         
        PushI        0                         
        Jump         -compare-18-join          
        Label        -compare-18-join          
        StoreC                                 
        PushD        $global-memory-block      
        PushI        12                        
        Add                                    %% elem5
        Label        -compare-21-start         
        PushI        5                         
        Nop                                    
        Label        -access-array-20-start    
        Label        -access-array-19-start    
        PushD        $global-memory-block      
        PushI        0                         
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
        PushI        4                         
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
        PushI        4                         
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
        LoadI                                  
        Nop                                    
        Label        -compare-21-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-21-equate        
        Pop                                    
        Jump         -compare-21-false         
        Label        -compare-21-equate        
        Pop                                    
        Label        -compare-21-true          
        PushI        1                         
        Jump         -compare-21-join          
        Label        -compare-21-false         
        PushI        0                         
        Jump         -compare-21-join          
        Label        -compare-21-join          
        StoreC                                 
        PushD        $global-memory-block      
        PushI        13                        
        Add                                    %% elem6
        Label        -compare-24-start         
        PushI        6                         
        Nop                                    
        Label        -access-array-23-start    
        Label        -access-array-22-start    
        PushD        $global-memory-block      
        PushI        0                         
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
        PushI        4                         
        Add                                    %% indx
        LoadI                                  
        Nop                                    
        Duplicate                              
        PushD        $reference-space-2        
        Exchange                               
        StoreI                                 
        Subtract                               
        JumpPos      -access-array-22-noError  
        Jump         $$array-out-of-bounds     
        Label        -access-array-22-noError  
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
        Label        -access-array-22-end      
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
        Label        -compare-24-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-24-equate        
        Pop                                    
        Jump         -compare-24-false         
        Label        -compare-24-equate        
        Pop                                    
        Label        -compare-24-true          
        PushI        1                         
        Jump         -compare-24-join          
        Label        -compare-24-false         
        PushI        0                         
        Jump         -compare-24-join          
        Label        -compare-24-join          
        StoreC                                 
        PushD        $global-memory-block      
        PushI        14                        
        Add                                    %% elem7
        Label        -compare-27-start         
        PushI        99                        
        Nop                                    
        Label        -access-array-26-start    
        Label        -access-array-25-start    
        PushD        $global-memory-block      
        PushI        0                         
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
        PushI        4                         
        Add                                    %% indx
        LoadI                                  
        Nop                                    
        Duplicate                              
        PushD        $reference-space-2        
        Exchange                               
        StoreI                                 
        Subtract                               
        JumpPos      -access-array-25-noError  
        Jump         $$array-out-of-bounds     
        Label        -access-array-25-noError  
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
        Label        -access-array-25-end      
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
        Label        -compare-27-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-27-equate        
        Pop                                    
        Jump         -compare-27-false         
        Label        -compare-27-equate        
        Pop                                    
        Label        -compare-27-true          
        PushI        1                         
        Jump         -compare-27-join          
        Label        -compare-27-false         
        PushI        0                         
        Jump         -compare-27-join          
        Label        -compare-27-join          
        StoreC                                 
        PushD        $global-memory-block      
        PushI        15                        
        Add                                    %% good
        Label        -compare-33-start         
        Label        -compare-32-start         
        Label        -compare-31-start         
        Label        -compare-30-start         
        Label        -compare-29-start         
        Label        -compare-28-start         
        PushD        $global-memory-block      
        PushI        8                         
        Add                                    %% elem1
        LoadC                                  
        Nop                                    
        PushD        $global-memory-block      
        PushI        9                         
        Add                                    %% elem2
        LoadC                                  
        Nop                                    
        Label        -compare-28-sub           
        Exchange                               
        JumpFalse    -compare-28-arg1false     
        JumpFalse    -compare-28-false         
        PushI        1                         
        Jump         -compare-28-join          
        Label        -compare-28-arg1false     
        Pop                                    
        Label        -compare-28-false         
        PushI        0                         
        Label        -compare-28-join          
        Nop                                    
        PushD        $global-memory-block      
        PushI        10                        
        Add                                    %% elem3
        LoadC                                  
        Nop                                    
        Label        -compare-29-sub           
        Exchange                               
        JumpFalse    -compare-29-arg1false     
        JumpFalse    -compare-29-false         
        PushI        1                         
        Jump         -compare-29-join          
        Label        -compare-29-arg1false     
        Pop                                    
        Label        -compare-29-false         
        PushI        0                         
        Label        -compare-29-join          
        Nop                                    
        PushD        $global-memory-block      
        PushI        11                        
        Add                                    %% elem4
        LoadC                                  
        Nop                                    
        Label        -compare-30-sub           
        Exchange                               
        JumpFalse    -compare-30-arg1false     
        JumpFalse    -compare-30-false         
        PushI        1                         
        Jump         -compare-30-join          
        Label        -compare-30-arg1false     
        Pop                                    
        Label        -compare-30-false         
        PushI        0                         
        Label        -compare-30-join          
        Nop                                    
        PushD        $global-memory-block      
        PushI        12                        
        Add                                    %% elem5
        LoadC                                  
        Nop                                    
        Label        -compare-31-sub           
        Exchange                               
        JumpFalse    -compare-31-arg1false     
        JumpFalse    -compare-31-false         
        PushI        1                         
        Jump         -compare-31-join          
        Label        -compare-31-arg1false     
        Pop                                    
        Label        -compare-31-false         
        PushI        0                         
        Label        -compare-31-join          
        Nop                                    
        PushD        $global-memory-block      
        PushI        13                        
        Add                                    %% elem6
        LoadC                                  
        Nop                                    
        Label        -compare-32-sub           
        Exchange                               
        JumpFalse    -compare-32-arg1false     
        JumpFalse    -compare-32-false         
        PushI        1                         
        Jump         -compare-32-join          
        Label        -compare-32-arg1false     
        Pop                                    
        Label        -compare-32-false         
        PushI        0                         
        Label        -compare-32-join          
        Nop                                    
        PushD        $global-memory-block      
        PushI        14                        
        Add                                    %% elem7
        LoadC                                  
        Nop                                    
        Label        -compare-33-sub           
        Exchange                               
        JumpFalse    -compare-33-arg1false     
        JumpFalse    -compare-33-false         
        PushI        1                         
        Jump         -compare-33-join          
        Label        -compare-33-arg1false     
        Pop                                    
        Label        -compare-33-false         
        PushI        0                         
        Label        -compare-33-join          
        StoreC                                 
        Label        -if-statement-37-start    
        Label        -compare-35-start         
        PushD        $global-memory-block      
        PushI        4                         
        Add                                    %% indx
        LoadI                                  
        Nop                                    
        PushI        10                        
        Nop                                    
        Label        -compare-34-start         
        PushD        $global-memory-block      
        PushI        4                         
        Add                                    %% indx
        LoadI                                  
        Nop                                    
        PushI        10                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Nop                                    
        Multiply                               
        Nop                                    
        Label        -compare-35-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-35-equate        
        Pop                                    
        Jump         -compare-35-false         
        Label        -compare-35-equate        
        Pop                                    
        Label        -compare-35-true          
        PushI        1                         
        Jump         -compare-35-join          
        Label        -compare-35-false         
        PushI        0                         
        Jump         -compare-35-join          
        Label        -compare-35-join          
        JumpFalse    -if-statement-37-end      
        Label        -if-statement-37-block    
        PushD        $global-memory-block      
        PushI        4                         
        Add                                    %% indx
        LoadI                                  
        PushD        $print-format-integer     
        Printf                                 
        PushI        32                        
        PushD        $print-format-char        
        Printf                                 
        PushD        $global-memory-block      
        PushI        15                        
        Add                                    %% good
        LoadC                                  
        JumpTrue     -print-boolean-36-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-36-join    
        Label        -print-boolean-36-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-36-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -if-statement-37-end      
        Label        -if-statement-39-start    
        PushD        $global-memory-block      
        PushI        15                        
        Add                                    %% good
        LoadC                                  
        Nop                                    
        PushI        1                         
        BTXor                                  
        JumpFalse    -if-statement-39-end      
        Label        -if-statement-39-block    
        DLabel       -string-constant-38-      
        DataI        3                         
        DataI        9                         
        DataI        4                         
        DataC        98                        %% "bad "
        DataC        97                        
        DataC        100                       
        DataC        32                        
        DataC        0                         
        PushD        -string-constant-38-      
        PushI        12                        
        Add                                    
        PushD        $print-format-string      
        Printf                                 
        PushD        $global-memory-block      
        PushI        4                         
        Add                                    %% indx
        LoadI                                  
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -if-statement-39-end      
        PushD        $global-memory-block      
        PushI        4                         
        Add                                    %% indx
        PushD        $global-memory-block      
        PushI        4                         
        Add                                    %% indx
        LoadI                                  
        Nop                                    
        PushI        1                         
        Nop                                    
        Add                                    
        Nop                                    
        StoreI                                 
        Jump         -while-statement-40-start 
        Label        -while-statement-40-end   
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
        JumpNeg      -print-value-41-char      
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
        Jump         -print-value-41-end       
        Label        -print-value-41-char      
        PushD        $print-value-typeid       
        LoadI                                  
        JumpTrue     -print-value-41-int       
        PushD        $print-value-address      
        LoadI                                  
        LoadC                                  
        PushD        $print-format-char        
        Printf                                 
        Label        -print-value-41-int       
        PushD        $print-value-typeid       
        LoadI                                  
        PushI        1                         
        Subtract                               
        JumpTrue     -print-value-41-float     
        PushD        $print-value-address      
        LoadI                                  
        LoadI                                  
        PushD        $print-format-integer     
        Printf                                 
        Label        -print-value-41-float     
        PushD        $print-value-typeid       
        LoadI                                  
        PushI        2                         
        Subtract                               
        JumpTrue     -print-value-41-string    
        PushD        $print-value-address      
        LoadI                                  
        LoadF                                  
        PushD        $print-format-floating    
        Printf                                 
        Label        -print-value-41-string    
        PushD        $print-value-typeid       
        LoadI                                  
        PushI        3                         
        Subtract                               
        JumpTrue     -print-value-41-bool      
        PushD        $print-value-address      
        LoadI                                  
        LoadI                                  
        PushI        12                        
        Add                                    
        PushD        $print-format-string      
        Printf                                 
        Label        -print-value-41-bool      
        PushD        $print-value-typeid       
        LoadI                                  
        PushI        4                         
        Subtract                               
        JumpTrue     -print-value-41-end       
        PushD        $print-value-address      
        LoadI                                  
        LoadC                                  
        JumpTrue     -print-value-41-true      
        PushD        $boolean-false-string     
        Jump         -print-value-41-pastTrue  
        Label        -print-value-41-true      
        PushD        $boolean-true-string      
        Label        -print-value-41-pastTrue  
        PushD        $print-format-string      
        Printf                                 
        Label        -print-value-41-end       
        PushD        $print-value-return-address 
        LoadI                                  
        Return                                 
        Label        $print-range              
        DLabel       -print-range-42-return-address 
        DataZ        4                         
        DLabel       -print-range-42-typeID    
        DataZ        4                         
        DLabel       -print-range-42-address   
        DataZ        4                         
        PushD        -print-range-42-return-address 
        Exchange                               
        StoreI                                 
        PushI        7                         
        BTAnd                                  
        PushD        -print-range-42-typeID    
        Exchange                               
        StoreI                                 
        PushD        -print-range-42-address   
        Exchange                               
        StoreI                                 
        PushD        $print-format-less        
        Printf                                 
        PushD        -print-range-42-address   
        LoadI                                  
        PushD        -print-range-42-typeID    
        LoadI                                  
        Call         $print-value              
        PushD        $print-format-period      
        Printf                                 
        PushD        -print-range-42-typeID    
        LoadI                                  
        JumpTrue     -print-range-42-type-int  
        PushI        1                         
        Jump         -print-range-42-after-offset 
        Label        -print-range-42-type-int  
        PushD        -print-range-42-typeID    
        LoadI                                  
        PushI        1                         
        BTAnd                                  
        JumpFalse    -print-range-42-type-float 
        PushI        4                         
        Jump         -print-range-42-after-offset 
        Label        -print-range-42-type-float 
        PushD        -print-range-42-typeID    
        LoadI                                  
        PushI        2                         
        BTAnd                                  
        JumpFalse    $$range-contains-invalid-type 
        PushI        8                         
        Label        -print-range-42-after-offset 
        PushD        -print-range-42-address   
        LoadI                                  
        Add                                    
        PushD        -print-range-42-typeID    
        LoadI                                  
        Call         $print-value              
        PushD        $print-format-greater     
        Printf                                 
        PushD        -print-range-42-return-address 
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
