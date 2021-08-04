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
        DLabel       $reference-space-1        
        DataZ        4                         
        DLabel       $reference-space-2        
        DataZ        4                         
        DLabel       $reference-space-macro    
        DataZ        4                         
        DLabel       $reference-space-Iter     
        DataZ        4                         
        DLabel       $usable-memory-start      
        DLabel       $global-memory-block      
        DataZ        0                         
        Label        $$main                    
        Label        -compare-2-start          
        Label        -compare-1-start          
        PushI        67                        
        Nop                                    
        PushI        2                         
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Nop                                    
        PushI        18                        
        Nop                                    
        Label        -compare-2-sub            
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-2-equate         
        JumpNeg      -compare-2-true           
        Jump         -compare-2-false          
        Label        -compare-2-equate         
        Pop                                    
        Label        -compare-2-true           
        PushI        1                         
        Jump         -compare-2-join           
        Label        -compare-2-false          
        PushI        0                         
        Jump         -compare-2-join           
        Label        -compare-2-join           
        JumpTrue     -print-boolean-3-true     
        PushD        $boolean-false-string     
        Jump         -print-boolean-3-join     
        Label        -print-boolean-3-true     
        PushD        $boolean-true-string      
        Label        -print-boolean-3-join     
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-5-start          
        Label        -compare-4-start          
        PushI        17                        
        Nop                                    
        PushI        86                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Nop                                    
        PushI        98                        
        Nop                                    
        Label        -compare-5-sub            
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-5-equate         
        JumpNeg      -compare-5-true           
        Jump         -compare-5-false          
        Label        -compare-5-equate         
        Pop                                    
        Label        -compare-5-true           
        PushI        1                         
        Jump         -compare-5-join           
        Label        -compare-5-false          
        PushI        0                         
        Jump         -compare-5-join           
        Label        -compare-5-join           
        JumpTrue     -print-boolean-6-true     
        PushD        $boolean-false-string     
        Jump         -print-boolean-6-join     
        Label        -print-boolean-6-true     
        PushD        $boolean-true-string      
        Label        -print-boolean-6-join     
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-8-start          
        Label        -compare-7-start          
        PushI        89                        
        Nop                                    
        PushI        39                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Nop                                    
        PushI        42                        
        Nop                                    
        Label        -compare-8-sub            
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-8-equate         
        JumpNeg      -compare-8-true           
        Jump         -compare-8-false          
        Label        -compare-8-equate         
        Pop                                    
        Label        -compare-8-true           
        PushI        1                         
        Jump         -compare-8-join           
        Label        -compare-8-false          
        PushI        0                         
        Jump         -compare-8-join           
        Label        -compare-8-join           
        JumpTrue     -print-boolean-9-true     
        PushD        $boolean-false-string     
        Jump         -print-boolean-9-join     
        Label        -print-boolean-9-true     
        PushD        $boolean-true-string      
        Label        -print-boolean-9-join     
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-11-start         
        Label        -compare-10-start         
        PushI        65                        
        Nop                                    
        PushI        6                         
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Nop                                    
        PushI        21                        
        Nop                                    
        Label        -compare-11-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-11-equate        
        JumpNeg      -compare-11-true          
        Jump         -compare-11-false         
        Label        -compare-11-equate        
        Pop                                    
        Label        -compare-11-true          
        PushI        1                         
        Jump         -compare-11-join          
        Label        -compare-11-false         
        PushI        0                         
        Jump         -compare-11-join          
        Label        -compare-11-join          
        JumpTrue     -print-boolean-12-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-12-join    
        Label        -print-boolean-12-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-12-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-14-start         
        Label        -compare-13-start         
        PushI        79                        
        Nop                                    
        PushI        33                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Nop                                    
        PushI        86                        
        Nop                                    
        Label        -compare-14-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-14-equate        
        JumpNeg      -compare-14-true          
        Jump         -compare-14-false         
        Label        -compare-14-equate        
        Pop                                    
        Label        -compare-14-true          
        PushI        1                         
        Jump         -compare-14-join          
        Label        -compare-14-false         
        PushI        0                         
        Jump         -compare-14-join          
        Label        -compare-14-join          
        JumpTrue     -print-boolean-15-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-15-join    
        Label        -print-boolean-15-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-15-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-17-start         
        Label        -compare-16-start         
        PushI        50                        
        Nop                                    
        PushI        52                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Nop                                    
        PushI        82                        
        Nop                                    
        Label        -compare-17-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-17-equate        
        JumpNeg      -compare-17-true          
        Jump         -compare-17-false         
        Label        -compare-17-equate        
        Pop                                    
        Label        -compare-17-true          
        PushI        1                         
        Jump         -compare-17-join          
        Label        -compare-17-false         
        PushI        0                         
        Jump         -compare-17-join          
        Label        -compare-17-join          
        JumpTrue     -print-boolean-18-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-18-join    
        Label        -print-boolean-18-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-18-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-20-start         
        Label        -compare-19-start         
        PushI        38                        
        Nop                                    
        PushI        38                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Nop                                    
        PushI        51                        
        Nop                                    
        Label        -compare-20-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-20-equate        
        JumpNeg      -compare-20-true          
        Jump         -compare-20-false         
        Label        -compare-20-equate        
        Pop                                    
        Label        -compare-20-true          
        PushI        1                         
        Jump         -compare-20-join          
        Label        -compare-20-false         
        PushI        0                         
        Jump         -compare-20-join          
        Label        -compare-20-join          
        JumpTrue     -print-boolean-21-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-21-join    
        Label        -print-boolean-21-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-21-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-23-start         
        Label        -compare-22-start         
        PushI        41                        
        Nop                                    
        PushI        23                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Nop                                    
        PushI        24                        
        Nop                                    
        Label        -compare-23-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-23-equate        
        JumpNeg      -compare-23-true          
        Jump         -compare-23-false         
        Label        -compare-23-equate        
        Pop                                    
        Label        -compare-23-true          
        PushI        1                         
        Jump         -compare-23-join          
        Label        -compare-23-false         
        PushI        0                         
        Jump         -compare-23-join          
        Label        -compare-23-join          
        JumpTrue     -print-boolean-24-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-24-join    
        Label        -print-boolean-24-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-24-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-26-start         
        Label        -compare-25-start         
        PushI        48                        
        Nop                                    
        PushI        89                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Nop                                    
        PushI        77                        
        Nop                                    
        Label        -compare-26-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-26-equate        
        JumpNeg      -compare-26-true          
        Jump         -compare-26-false         
        Label        -compare-26-equate        
        Pop                                    
        Label        -compare-26-true          
        PushI        1                         
        Jump         -compare-26-join          
        Label        -compare-26-false         
        PushI        0                         
        Jump         -compare-26-join          
        Label        -compare-26-join          
        JumpTrue     -print-boolean-27-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-27-join    
        Label        -print-boolean-27-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-27-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-29-start         
        Label        -compare-28-start         
        PushI        89                        
        Nop                                    
        PushI        48                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Nop                                    
        PushI        30                        
        Nop                                    
        Label        -compare-29-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-29-equate        
        JumpNeg      -compare-29-true          
        Jump         -compare-29-false         
        Label        -compare-29-equate        
        Pop                                    
        Label        -compare-29-true          
        PushI        1                         
        Jump         -compare-29-join          
        Label        -compare-29-false         
        PushI        0                         
        Jump         -compare-29-join          
        Label        -compare-29-join          
        JumpTrue     -print-boolean-30-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-30-join    
        Label        -print-boolean-30-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-30-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-32-start         
        Label        -compare-31-start         
        PushI        51                        
        Nop                                    
        PushI        56                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Nop                                    
        PushI        89                        
        Nop                                    
        Label        -compare-32-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-32-equate        
        JumpNeg      -compare-32-true          
        Jump         -compare-32-false         
        Label        -compare-32-equate        
        Pop                                    
        Label        -compare-32-true          
        PushI        1                         
        Jump         -compare-32-join          
        Label        -compare-32-false         
        PushI        0                         
        Jump         -compare-32-join          
        Label        -compare-32-join          
        JumpTrue     -print-boolean-33-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-33-join    
        Label        -print-boolean-33-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-33-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-35-start         
        Label        -compare-34-start         
        PushI        61                        
        Nop                                    
        PushI        61                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Nop                                    
        PushI        90                        
        Nop                                    
        Label        -compare-35-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-35-equate        
        JumpNeg      -compare-35-true          
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
        Label        -compare-38-start         
        PushI        3                         
        Nop                                    
        Label        -compare-37-start         
        PushI        7                         
        Nop                                    
        PushI        80                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Nop                                    
        Label        -compare-38-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-38-equate        
        JumpNeg      -compare-38-true          
        Jump         -compare-38-false         
        Label        -compare-38-equate        
        Pop                                    
        Label        -compare-38-true          
        PushI        1                         
        Jump         -compare-38-join          
        Label        -compare-38-false         
        PushI        0                         
        Jump         -compare-38-join          
        Label        -compare-38-join          
        JumpTrue     -print-boolean-39-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-39-join    
        Label        -print-boolean-39-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-39-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-41-start         
        PushI        88                        
        Nop                                    
        Label        -compare-40-start         
        PushI        95                        
        Nop                                    
        PushI        53                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Nop                                    
        Label        -compare-41-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-41-equate        
        JumpNeg      -compare-41-true          
        Jump         -compare-41-false         
        Label        -compare-41-equate        
        Pop                                    
        Label        -compare-41-true          
        PushI        1                         
        Jump         -compare-41-join          
        Label        -compare-41-false         
        PushI        0                         
        Jump         -compare-41-join          
        Label        -compare-41-join          
        JumpTrue     -print-boolean-42-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-42-join    
        Label        -print-boolean-42-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-42-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-44-start         
        PushI        93                        
        Nop                                    
        Label        -compare-43-start         
        PushI        76                        
        Nop                                    
        PushI        2                         
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Nop                                    
        Label        -compare-44-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-44-equate        
        JumpNeg      -compare-44-true          
        Jump         -compare-44-false         
        Label        -compare-44-equate        
        Pop                                    
        Label        -compare-44-true          
        PushI        1                         
        Jump         -compare-44-join          
        Label        -compare-44-false         
        PushI        0                         
        Jump         -compare-44-join          
        Label        -compare-44-join          
        JumpTrue     -print-boolean-45-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-45-join    
        Label        -print-boolean-45-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-45-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-47-start         
        PushI        3                         
        Nop                                    
        Label        -compare-46-start         
        PushI        34                        
        Nop                                    
        PushI        40                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Nop                                    
        Label        -compare-47-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-47-equate        
        JumpNeg      -compare-47-true          
        Jump         -compare-47-false         
        Label        -compare-47-equate        
        Pop                                    
        Label        -compare-47-true          
        PushI        1                         
        Jump         -compare-47-join          
        Label        -compare-47-false         
        PushI        0                         
        Jump         -compare-47-join          
        Label        -compare-47-join          
        JumpTrue     -print-boolean-48-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-48-join    
        Label        -print-boolean-48-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-48-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-50-start         
        PushI        47                        
        Nop                                    
        Label        -compare-49-start         
        PushI        52                        
        Nop                                    
        PushI        64                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Nop                                    
        Label        -compare-50-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-50-equate        
        JumpNeg      -compare-50-true          
        Jump         -compare-50-false         
        Label        -compare-50-equate        
        Pop                                    
        Label        -compare-50-true          
        PushI        1                         
        Jump         -compare-50-join          
        Label        -compare-50-false         
        PushI        0                         
        Jump         -compare-50-join          
        Label        -compare-50-join          
        JumpTrue     -print-boolean-51-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-51-join    
        Label        -print-boolean-51-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-51-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-53-start         
        PushI        75                        
        Nop                                    
        Label        -compare-52-start         
        PushI        66                        
        Nop                                    
        PushI        8                         
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Nop                                    
        Label        -compare-53-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-53-equate        
        JumpNeg      -compare-53-true          
        Jump         -compare-53-false         
        Label        -compare-53-equate        
        Pop                                    
        Label        -compare-53-true          
        PushI        1                         
        Jump         -compare-53-join          
        Label        -compare-53-false         
        PushI        0                         
        Jump         -compare-53-join          
        Label        -compare-53-join          
        JumpTrue     -print-boolean-54-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-54-join    
        Label        -print-boolean-54-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-54-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-56-start         
        PushI        39                        
        Nop                                    
        Label        -compare-55-start         
        PushI        69                        
        Nop                                    
        PushI        15                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Nop                                    
        Label        -compare-56-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-56-equate        
        JumpNeg      -compare-56-true          
        Jump         -compare-56-false         
        Label        -compare-56-equate        
        Pop                                    
        Label        -compare-56-true          
        PushI        1                         
        Jump         -compare-56-join          
        Label        -compare-56-false         
        PushI        0                         
        Jump         -compare-56-join          
        Label        -compare-56-join          
        JumpTrue     -print-boolean-57-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-57-join    
        Label        -print-boolean-57-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-57-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-59-start         
        PushI        95                        
        Nop                                    
        Label        -compare-58-start         
        PushI        14                        
        Nop                                    
        PushI        22                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Nop                                    
        Label        -compare-59-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-59-equate        
        JumpNeg      -compare-59-true          
        Jump         -compare-59-false         
        Label        -compare-59-equate        
        Pop                                    
        Label        -compare-59-true          
        PushI        1                         
        Jump         -compare-59-join          
        Label        -compare-59-false         
        PushI        0                         
        Jump         -compare-59-join          
        Label        -compare-59-join          
        JumpTrue     -print-boolean-60-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-60-join    
        Label        -print-boolean-60-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-60-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-62-start         
        PushI        13                        
        Nop                                    
        Label        -compare-61-start         
        PushI        41                        
        Nop                                    
        PushI        7                         
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Nop                                    
        Label        -compare-62-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-62-equate        
        JumpNeg      -compare-62-true          
        Jump         -compare-62-false         
        Label        -compare-62-equate        
        Pop                                    
        Label        -compare-62-true          
        PushI        1                         
        Jump         -compare-62-join          
        Label        -compare-62-false         
        PushI        0                         
        Jump         -compare-62-join          
        Label        -compare-62-join          
        JumpTrue     -print-boolean-63-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-63-join    
        Label        -print-boolean-63-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-63-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-65-start         
        PushI        18                        
        Nop                                    
        Label        -compare-64-start         
        PushI        5                         
        Nop                                    
        PushI        81                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Nop                                    
        Label        -compare-65-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-65-equate        
        JumpNeg      -compare-65-true          
        Jump         -compare-65-false         
        Label        -compare-65-equate        
        Pop                                    
        Label        -compare-65-true          
        PushI        1                         
        Jump         -compare-65-join          
        Label        -compare-65-false         
        PushI        0                         
        Jump         -compare-65-join          
        Label        -compare-65-join          
        JumpTrue     -print-boolean-66-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-66-join    
        Label        -print-boolean-66-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-66-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-68-start         
        PushI        61                        
        Nop                                    
        Label        -compare-67-start         
        PushI        82                        
        Nop                                    
        PushI        56                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Nop                                    
        Label        -compare-68-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-68-equate        
        JumpNeg      -compare-68-true          
        Jump         -compare-68-false         
        Label        -compare-68-equate        
        Pop                                    
        Label        -compare-68-true          
        PushI        1                         
        Jump         -compare-68-join          
        Label        -compare-68-false         
        PushI        0                         
        Jump         -compare-68-join          
        Label        -compare-68-join          
        JumpTrue     -print-boolean-69-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-69-join    
        Label        -print-boolean-69-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-69-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-71-start         
        PushI        56                        
        Nop                                    
        Label        -compare-70-start         
        PushI        87                        
        Nop                                    
        PushI        92                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Nop                                    
        Label        -compare-71-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-71-equate        
        JumpNeg      -compare-71-true          
        Jump         -compare-71-false         
        Label        -compare-71-equate        
        Pop                                    
        Label        -compare-71-true          
        PushI        1                         
        Jump         -compare-71-join          
        Label        -compare-71-false         
        PushI        0                         
        Jump         -compare-71-join          
        Label        -compare-71-join          
        JumpTrue     -print-boolean-72-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-72-join    
        Label        -print-boolean-72-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-72-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-75-start         
        Label        -compare-73-start         
        PushI        39                        
        Nop                                    
        PushI        5                         
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Nop                                    
        Label        -compare-74-start         
        PushI        53                        
        Nop                                    
        PushI        33                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Nop                                    
        Label        -compare-75-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-75-equate        
        JumpNeg      -compare-75-true          
        Jump         -compare-75-false         
        Label        -compare-75-equate        
        Pop                                    
        Label        -compare-75-true          
        PushI        1                         
        Jump         -compare-75-join          
        Label        -compare-75-false         
        PushI        0                         
        Jump         -compare-75-join          
        Label        -compare-75-join          
        JumpTrue     -print-boolean-76-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-76-join    
        Label        -print-boolean-76-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-76-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-79-start         
        Label        -compare-77-start         
        PushI        28                        
        Nop                                    
        PushI        79                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Nop                                    
        Label        -compare-78-start         
        PushI        46                        
        Nop                                    
        PushI        73                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Nop                                    
        Label        -compare-79-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-79-equate        
        JumpNeg      -compare-79-true          
        Jump         -compare-79-false         
        Label        -compare-79-equate        
        Pop                                    
        Label        -compare-79-true          
        PushI        1                         
        Jump         -compare-79-join          
        Label        -compare-79-false         
        PushI        0                         
        Jump         -compare-79-join          
        Label        -compare-79-join          
        JumpTrue     -print-boolean-80-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-80-join    
        Label        -print-boolean-80-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-80-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-83-start         
        Label        -compare-81-start         
        PushI        89                        
        Nop                                    
        PushI        88                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Nop                                    
        Label        -compare-82-start         
        PushI        87                        
        Nop                                    
        PushI        61                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Nop                                    
        Label        -compare-83-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-83-equate        
        JumpNeg      -compare-83-true          
        Jump         -compare-83-false         
        Label        -compare-83-equate        
        Pop                                    
        Label        -compare-83-true          
        PushI        1                         
        Jump         -compare-83-join          
        Label        -compare-83-false         
        PushI        0                         
        Jump         -compare-83-join          
        Label        -compare-83-join          
        JumpTrue     -print-boolean-84-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-84-join    
        Label        -print-boolean-84-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-84-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-87-start         
        Label        -compare-85-start         
        PushI        10                        
        Nop                                    
        PushI        14                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Nop                                    
        Label        -compare-86-start         
        PushI        1                         
        Nop                                    
        PushI        35                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Nop                                    
        Label        -compare-87-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-87-equate        
        JumpNeg      -compare-87-true          
        Jump         -compare-87-false         
        Label        -compare-87-equate        
        Pop                                    
        Label        -compare-87-true          
        PushI        1                         
        Jump         -compare-87-join          
        Label        -compare-87-false         
        PushI        0                         
        Jump         -compare-87-join          
        Label        -compare-87-join          
        JumpTrue     -print-boolean-88-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-88-join    
        Label        -print-boolean-88-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-88-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-91-start         
        Label        -compare-89-start         
        PushI        66                        
        Nop                                    
        PushI        98                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Nop                                    
        Label        -compare-90-start         
        PushI        43                        
        Nop                                    
        PushI        15                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Nop                                    
        Label        -compare-91-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-91-equate        
        JumpNeg      -compare-91-true          
        Jump         -compare-91-false         
        Label        -compare-91-equate        
        Pop                                    
        Label        -compare-91-true          
        PushI        1                         
        Jump         -compare-91-join          
        Label        -compare-91-false         
        PushI        0                         
        Jump         -compare-91-join          
        Label        -compare-91-join          
        JumpTrue     -print-boolean-92-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-92-join    
        Label        -print-boolean-92-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-92-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-95-start         
        Label        -compare-93-start         
        PushI        92                        
        Nop                                    
        PushI        13                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Nop                                    
        Label        -compare-94-start         
        PushI        4                         
        Nop                                    
        PushI        51                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Nop                                    
        Label        -compare-95-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-95-equate        
        JumpNeg      -compare-95-true          
        Jump         -compare-95-false         
        Label        -compare-95-equate        
        Pop                                    
        Label        -compare-95-true          
        PushI        1                         
        Jump         -compare-95-join          
        Label        -compare-95-false         
        PushI        0                         
        Jump         -compare-95-join          
        Label        -compare-95-join          
        JumpTrue     -print-boolean-96-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-96-join    
        Label        -print-boolean-96-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-96-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-99-start         
        Label        -compare-97-start         
        PushI        21                        
        Nop                                    
        PushI        13                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Nop                                    
        Label        -compare-98-start         
        PushI        36                        
        Nop                                    
        PushI        62                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Nop                                    
        Label        -compare-99-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-99-equate        
        JumpNeg      -compare-99-true          
        Jump         -compare-99-false         
        Label        -compare-99-equate        
        Pop                                    
        Label        -compare-99-true          
        PushI        1                         
        Jump         -compare-99-join          
        Label        -compare-99-false         
        PushI        0                         
        Jump         -compare-99-join          
        Label        -compare-99-join          
        JumpTrue     -print-boolean-100-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-100-join   
        Label        -print-boolean-100-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-100-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-103-start        
        Label        -compare-101-start        
        PushI        6                         
        Nop                                    
        PushI        16                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Nop                                    
        Label        -compare-102-start        
        PushI        63                        
        Nop                                    
        PushI        64                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Nop                                    
        Label        -compare-103-sub          
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-103-equate       
        JumpNeg      -compare-103-true         
        Jump         -compare-103-false        
        Label        -compare-103-equate       
        Pop                                    
        Label        -compare-103-true         
        PushI        1                         
        Jump         -compare-103-join         
        Label        -compare-103-false        
        PushI        0                         
        Jump         -compare-103-join         
        Label        -compare-103-join         
        JumpTrue     -print-boolean-104-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-104-join   
        Label        -print-boolean-104-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-104-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-107-start        
        Label        -compare-105-start        
        PushI        70                        
        Nop                                    
        PushI        25                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Nop                                    
        Label        -compare-106-start        
        PushI        11                        
        Nop                                    
        PushI        46                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Nop                                    
        Label        -compare-107-sub          
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-107-equate       
        JumpNeg      -compare-107-true         
        Jump         -compare-107-false        
        Label        -compare-107-equate       
        Pop                                    
        Label        -compare-107-true         
        PushI        1                         
        Jump         -compare-107-join         
        Label        -compare-107-false        
        PushI        0                         
        Jump         -compare-107-join         
        Label        -compare-107-join         
        JumpTrue     -print-boolean-108-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-108-join   
        Label        -print-boolean-108-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-108-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-111-start        
        Label        -compare-109-start        
        PushI        79                        
        Nop                                    
        PushI        86                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Nop                                    
        Label        -compare-110-start        
        PushI        33                        
        Nop                                    
        PushI        37                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Nop                                    
        Label        -compare-111-sub          
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-111-equate       
        JumpNeg      -compare-111-true         
        Jump         -compare-111-false        
        Label        -compare-111-equate       
        Pop                                    
        Label        -compare-111-true         
        PushI        1                         
        Jump         -compare-111-join         
        Label        -compare-111-false        
        PushI        0                         
        Jump         -compare-111-join         
        Label        -compare-111-join         
        JumpTrue     -print-boolean-112-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-112-join   
        Label        -print-boolean-112-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-112-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-115-start        
        Label        -compare-113-start        
        PushI        71                        
        Nop                                    
        PushI        55                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Nop                                    
        Label        -compare-114-start        
        PushI        3                         
        Nop                                    
        PushI        80                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Nop                                    
        Label        -compare-115-sub          
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-115-equate       
        JumpNeg      -compare-115-true         
        Jump         -compare-115-false        
        Label        -compare-115-equate       
        Pop                                    
        Label        -compare-115-true         
        PushI        1                         
        Jump         -compare-115-join         
        Label        -compare-115-false        
        PushI        0                         
        Jump         -compare-115-join         
        Label        -compare-115-join         
        JumpTrue     -print-boolean-116-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-116-join   
        Label        -print-boolean-116-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-116-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-119-start        
        Label        -compare-117-start        
        PushI        13                        
        Nop                                    
        PushI        8                         
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Nop                                    
        Label        -compare-118-start        
        PushI        80                        
        Nop                                    
        PushI        29                        
        Nop                                    
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Nop                                    
        Label        -compare-119-sub          
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-119-equate       
        JumpNeg      -compare-119-true         
        Jump         -compare-119-false        
        Label        -compare-119-equate       
        Pop                                    
        Label        -compare-119-true         
        PushI        1                         
        Jump         -compare-119-join         
        Label        -compare-119-false        
        PushI        0                         
        Jump         -compare-119-join         
        Label        -compare-119-join         
        JumpTrue     -print-boolean-120-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-120-join   
        Label        -print-boolean-120-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-120-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
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
        Label        -print-value-121-char     
        PushD        $print-value-typeid       
        LoadI                                  
        JumpTrue     -print-value-121-int      
        PushD        $print-value-address      
        LoadI                                  
        LoadC                                  
        PushD        $print-format-char        
        Printf                                 
        Label        -print-value-121-int      
        PushD        $print-value-typeid       
        LoadI                                  
        PushI        1                         
        Subtract                               
        JumpTrue     -print-value-121-float    
        PushD        $print-value-address      
        LoadI                                  
        LoadI                                  
        PushD        $print-format-integer     
        Printf                                 
        Label        -print-value-121-float    
        PushD        $print-value-typeid       
        LoadI                                  
        PushI        2                         
        Subtract                               
        JumpTrue     -print-value-121-string   
        PushD        $print-value-address      
        LoadI                                  
        LoadF                                  
        PushD        $print-format-floating    
        Printf                                 
        Label        -print-value-121-string   
        PushD        $print-value-typeid       
        LoadI                                  
        PushI        3                         
        Subtract                               
        JumpTrue     -print-value-121-bool     
        PushD        $print-value-address      
        LoadI                                  
        LoadI                                  
        PushI        12                        
        Add                                    
        PushD        $print-format-string      
        Printf                                 
        Label        -print-value-121-bool     
        PushD        $print-value-typeid       
        LoadI                                  
        PushI        4                         
        Subtract                               
        JumpTrue     -print-value-121-end      
        PushD        $print-value-address      
        LoadI                                  
        LoadC                                  
        JumpTrue     -print-value-121-true     
        PushD        $boolean-false-string     
        Jump         -print-value-121-pastTrue 
        Label        -print-value-121-true     
        PushD        $boolean-true-string      
        Label        -print-value-121-pastTrue 
        PushD        $print-format-string      
        Printf                                 
        Label        -print-value-121-end      
        PushD        $print-value-return-address 
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
