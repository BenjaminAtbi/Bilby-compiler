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
        Label        -convert-1-start          
        PushI        67                        
        Nop                                    
        Nop                                    
        JumpFalse    -convert-1-false          
        PushI        1                         
        Jump         -convert-1-join           
        Label        -convert-1-false          
        PushI        0                         
        Label        -convert-1-join           
        Nop                                    
        PushI        1                         
        Nop                                    
        Label        -compare-2-sub            
        Subtract                               
        JumpFalse    -compare-2-false          
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
        Label        -convert-4-start          
        PushI        84                        
        Nop                                    
        Nop                                    
        JumpFalse    -convert-4-false          
        PushI        1                         
        Jump         -convert-4-join           
        Label        -convert-4-false          
        PushI        0                         
        Label        -convert-4-join           
        Nop                                    
        PushI        1                         
        Nop                                    
        Label        -compare-5-sub            
        Subtract                               
        JumpFalse    -compare-5-false          
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
        Label        -convert-7-start          
        PushI        44                        
        Nop                                    
        Nop                                    
        JumpFalse    -convert-7-false          
        PushI        1                         
        Jump         -convert-7-join           
        Label        -convert-7-false          
        PushI        0                         
        Label        -convert-7-join           
        Nop                                    
        PushI        0                         
        Nop                                    
        Label        -compare-8-sub            
        Subtract                               
        JumpFalse    -compare-8-false          
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
        Label        -convert-10-start         
        PushI        62                        
        Nop                                    
        Nop                                    
        JumpFalse    -convert-10-false         
        PushI        1                         
        Jump         -convert-10-join          
        Label        -convert-10-false         
        PushI        0                         
        Label        -convert-10-join          
        Nop                                    
        PushI        1                         
        Nop                                    
        Label        -compare-11-sub           
        Subtract                               
        JumpFalse    -compare-11-false         
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
        Label        -convert-13-start         
        PushI        11                        
        Nop                                    
        Nop                                    
        JumpFalse    -convert-13-false         
        PushI        1                         
        Jump         -convert-13-join          
        Label        -convert-13-false         
        PushI        0                         
        Label        -convert-13-join          
        Nop                                    
        PushI        1                         
        Nop                                    
        Label        -compare-14-sub           
        Subtract                               
        JumpFalse    -compare-14-false         
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
        Label        -convert-16-start         
        PushI        38                        
        Nop                                    
        Nop                                    
        JumpFalse    -convert-16-false         
        PushI        1                         
        Jump         -convert-16-join          
        Label        -convert-16-false         
        PushI        0                         
        Label        -convert-16-join          
        Nop                                    
        PushI        0                         
        Nop                                    
        Label        -compare-17-sub           
        Subtract                               
        JumpFalse    -compare-17-false         
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
        Label        -convert-19-start         
        PushI        90                        
        Nop                                    
        Nop                                    
        JumpFalse    -convert-19-false         
        PushI        1                         
        Jump         -convert-19-join          
        Label        -convert-19-false         
        PushI        0                         
        Label        -convert-19-join          
        Nop                                    
        PushI        1                         
        Nop                                    
        Label        -compare-20-sub           
        Subtract                               
        JumpFalse    -compare-20-false         
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
        Label        -convert-22-start         
        PushI        77                        
        Nop                                    
        Nop                                    
        JumpFalse    -convert-22-false         
        PushI        1                         
        Jump         -convert-22-join          
        Label        -convert-22-false         
        PushI        0                         
        Label        -convert-22-join          
        Nop                                    
        PushI        1                         
        Nop                                    
        Label        -compare-23-sub           
        Subtract                               
        JumpFalse    -compare-23-false         
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
        Label        -convert-25-start         
        PushI        67                        
        Nop                                    
        Nop                                    
        JumpFalse    -convert-25-false         
        PushI        1                         
        Jump         -convert-25-join          
        Label        -convert-25-false         
        PushI        0                         
        Label        -convert-25-join          
        Nop                                    
        PushI        1                         
        Nop                                    
        Label        -compare-26-sub           
        Subtract                               
        JumpFalse    -compare-26-false         
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
        Label        -convert-28-start         
        PushI        96                        
        Nop                                    
        Nop                                    
        JumpFalse    -convert-28-false         
        PushI        1                         
        Jump         -convert-28-join          
        Label        -convert-28-false         
        PushI        0                         
        Label        -convert-28-join          
        Nop                                    
        PushI        0                         
        Nop                                    
        Label        -compare-29-sub           
        Subtract                               
        JumpFalse    -compare-29-false         
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
        Label        -convert-31-start         
        PushI        18                        
        Nop                                    
        Nop                                    
        JumpFalse    -convert-31-false         
        PushI        1                         
        Jump         -convert-31-join          
        Label        -convert-31-false         
        PushI        0                         
        Label        -convert-31-join          
        Nop                                    
        PushI        1                         
        Nop                                    
        Label        -compare-32-sub           
        Subtract                               
        JumpFalse    -compare-32-false         
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
        Label        -convert-34-start         
        PushI        65                        
        Nop                                    
        Nop                                    
        JumpFalse    -convert-34-false         
        PushI        1                         
        Jump         -convert-34-join          
        Label        -convert-34-false         
        PushI        0                         
        Label        -convert-34-join          
        Nop                                    
        PushI        1                         
        Nop                                    
        Label        -compare-35-sub           
        Subtract                               
        JumpFalse    -compare-35-false         
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
        PushI        0                         
        Nop                                    
        Label        -convert-37-start         
        PushI        52                        
        Nop                                    
        Nop                                    
        JumpFalse    -convert-37-false         
        PushI        1                         
        Jump         -convert-37-join          
        Label        -convert-37-false         
        PushI        0                         
        Label        -convert-37-join          
        Nop                                    
        Label        -compare-38-sub           
        Subtract                               
        JumpFalse    -compare-38-false         
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
        PushI        1                         
        Nop                                    
        Label        -convert-40-start         
        PushI        93                        
        Nop                                    
        Nop                                    
        JumpFalse    -convert-40-false         
        PushI        1                         
        Jump         -convert-40-join          
        Label        -convert-40-false         
        PushI        0                         
        Label        -convert-40-join          
        Nop                                    
        Label        -compare-41-sub           
        Subtract                               
        JumpFalse    -compare-41-false         
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
        PushI        0                         
        Nop                                    
        Label        -convert-43-start         
        PushI        53                        
        Nop                                    
        Nop                                    
        JumpFalse    -convert-43-false         
        PushI        1                         
        Jump         -convert-43-join          
        Label        -convert-43-false         
        PushI        0                         
        Label        -convert-43-join          
        Nop                                    
        Label        -compare-44-sub           
        Subtract                               
        JumpFalse    -compare-44-false         
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
        PushI        0                         
        Nop                                    
        Label        -convert-46-start         
        PushI        74                        
        Nop                                    
        Nop                                    
        JumpFalse    -convert-46-false         
        PushI        1                         
        Jump         -convert-46-join          
        Label        -convert-46-false         
        PushI        0                         
        Label        -convert-46-join          
        Nop                                    
        Label        -compare-47-sub           
        Subtract                               
        JumpFalse    -compare-47-false         
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
        PushI        0                         
        Nop                                    
        Label        -convert-49-start         
        PushI        41                        
        Nop                                    
        Nop                                    
        JumpFalse    -convert-49-false         
        PushI        1                         
        Jump         -convert-49-join          
        Label        -convert-49-false         
        PushI        0                         
        Label        -convert-49-join          
        Nop                                    
        Label        -compare-50-sub           
        Subtract                               
        JumpFalse    -compare-50-false         
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
        PushI        0                         
        Nop                                    
        Label        -convert-52-start         
        PushI        81                        
        Nop                                    
        Nop                                    
        JumpFalse    -convert-52-false         
        PushI        1                         
        Jump         -convert-52-join          
        Label        -convert-52-false         
        PushI        0                         
        Label        -convert-52-join          
        Nop                                    
        Label        -compare-53-sub           
        Subtract                               
        JumpFalse    -compare-53-false         
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
        PushI        1                         
        Nop                                    
        Label        -convert-55-start         
        PushI        14                        
        Nop                                    
        Nop                                    
        JumpFalse    -convert-55-false         
        PushI        1                         
        Jump         -convert-55-join          
        Label        -convert-55-false         
        PushI        0                         
        Label        -convert-55-join          
        Nop                                    
        Label        -compare-56-sub           
        Subtract                               
        JumpFalse    -compare-56-false         
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
        PushI        1                         
        Nop                                    
        Label        -convert-58-start         
        PushI        52                        
        Nop                                    
        Nop                                    
        JumpFalse    -convert-58-false         
        PushI        1                         
        Jump         -convert-58-join          
        Label        -convert-58-false         
        PushI        0                         
        Label        -convert-58-join          
        Nop                                    
        Label        -compare-59-sub           
        Subtract                               
        JumpFalse    -compare-59-false         
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
        PushI        1                         
        Nop                                    
        Label        -convert-61-start         
        PushI        54                        
        Nop                                    
        Nop                                    
        JumpFalse    -convert-61-false         
        PushI        1                         
        Jump         -convert-61-join          
        Label        -convert-61-false         
        PushI        0                         
        Label        -convert-61-join          
        Nop                                    
        Label        -compare-62-sub           
        Subtract                               
        JumpFalse    -compare-62-false         
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
        PushI        0                         
        Nop                                    
        Label        -convert-64-start         
        PushI        24                        
        Nop                                    
        Nop                                    
        JumpFalse    -convert-64-false         
        PushI        1                         
        Jump         -convert-64-join          
        Label        -convert-64-false         
        PushI        0                         
        Label        -convert-64-join          
        Nop                                    
        Label        -compare-65-sub           
        Subtract                               
        JumpFalse    -compare-65-false         
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
        PushI        1                         
        Nop                                    
        Label        -convert-67-start         
        PushI        24                        
        Nop                                    
        Nop                                    
        JumpFalse    -convert-67-false         
        PushI        1                         
        Jump         -convert-67-join          
        Label        -convert-67-false         
        PushI        0                         
        Label        -convert-67-join          
        Nop                                    
        Label        -compare-68-sub           
        Subtract                               
        JumpFalse    -compare-68-false         
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
        PushI        1                         
        Nop                                    
        Label        -convert-70-start         
        PushI        66                        
        Nop                                    
        Nop                                    
        JumpFalse    -convert-70-false         
        PushI        1                         
        Jump         -convert-70-join          
        Label        -convert-70-false         
        PushI        0                         
        Label        -convert-70-join          
        Nop                                    
        Label        -compare-71-sub           
        Subtract                               
        JumpFalse    -compare-71-false         
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
        Label        -convert-73-start         
        PushI        85                        
        Nop                                    
        Nop                                    
        JumpFalse    -convert-73-false         
        PushI        1                         
        Jump         -convert-73-join          
        Label        -convert-73-false         
        PushI        0                         
        Label        -convert-73-join          
        Nop                                    
        Label        -convert-74-start         
        PushI        53                        
        Nop                                    
        Nop                                    
        JumpFalse    -convert-74-false         
        PushI        1                         
        Jump         -convert-74-join          
        Label        -convert-74-false         
        PushI        0                         
        Label        -convert-74-join          
        Nop                                    
        Label        -compare-75-sub           
        Subtract                               
        JumpFalse    -compare-75-false         
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
        Label        -convert-77-start         
        PushI        29                        
        Nop                                    
        Nop                                    
        JumpFalse    -convert-77-false         
        PushI        1                         
        Jump         -convert-77-join          
        Label        -convert-77-false         
        PushI        0                         
        Label        -convert-77-join          
        Nop                                    
        Label        -convert-78-start         
        PushI        24                        
        Nop                                    
        Nop                                    
        JumpFalse    -convert-78-false         
        PushI        1                         
        Jump         -convert-78-join          
        Label        -convert-78-false         
        PushI        0                         
        Label        -convert-78-join          
        Nop                                    
        Label        -compare-79-sub           
        Subtract                               
        JumpFalse    -compare-79-false         
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
        Label        -convert-81-start         
        PushI        80                        
        Nop                                    
        Nop                                    
        JumpFalse    -convert-81-false         
        PushI        1                         
        Jump         -convert-81-join          
        Label        -convert-81-false         
        PushI        0                         
        Label        -convert-81-join          
        Nop                                    
        Label        -convert-82-start         
        PushI        62                        
        Nop                                    
        Nop                                    
        JumpFalse    -convert-82-false         
        PushI        1                         
        Jump         -convert-82-join          
        Label        -convert-82-false         
        PushI        0                         
        Label        -convert-82-join          
        Nop                                    
        Label        -compare-83-sub           
        Subtract                               
        JumpFalse    -compare-83-false         
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
        Label        -convert-85-start         
        PushI        42                        
        Nop                                    
        Nop                                    
        JumpFalse    -convert-85-false         
        PushI        1                         
        Jump         -convert-85-join          
        Label        -convert-85-false         
        PushI        0                         
        Label        -convert-85-join          
        Nop                                    
        Label        -convert-86-start         
        PushI        83                        
        Nop                                    
        Nop                                    
        JumpFalse    -convert-86-false         
        PushI        1                         
        Jump         -convert-86-join          
        Label        -convert-86-false         
        PushI        0                         
        Label        -convert-86-join          
        Nop                                    
        Label        -compare-87-sub           
        Subtract                               
        JumpFalse    -compare-87-false         
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
        Label        -convert-89-start         
        PushI        81                        
        Nop                                    
        Nop                                    
        JumpFalse    -convert-89-false         
        PushI        1                         
        Jump         -convert-89-join          
        Label        -convert-89-false         
        PushI        0                         
        Label        -convert-89-join          
        Nop                                    
        Label        -convert-90-start         
        PushI        5                         
        Nop                                    
        Nop                                    
        JumpFalse    -convert-90-false         
        PushI        1                         
        Jump         -convert-90-join          
        Label        -convert-90-false         
        PushI        0                         
        Label        -convert-90-join          
        Nop                                    
        Label        -compare-91-sub           
        Subtract                               
        JumpFalse    -compare-91-false         
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
        Label        -convert-93-start         
        PushI        92                        
        Nop                                    
        Nop                                    
        JumpFalse    -convert-93-false         
        PushI        1                         
        Jump         -convert-93-join          
        Label        -convert-93-false         
        PushI        0                         
        Label        -convert-93-join          
        Nop                                    
        Label        -convert-94-start         
        PushI        90                        
        Nop                                    
        Nop                                    
        JumpFalse    -convert-94-false         
        PushI        1                         
        Jump         -convert-94-join          
        Label        -convert-94-false         
        PushI        0                         
        Label        -convert-94-join          
        Nop                                    
        Label        -compare-95-sub           
        Subtract                               
        JumpFalse    -compare-95-false         
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
        Label        -convert-97-start         
        PushI        74                        
        Nop                                    
        Nop                                    
        JumpFalse    -convert-97-false         
        PushI        1                         
        Jump         -convert-97-join          
        Label        -convert-97-false         
        PushI        0                         
        Label        -convert-97-join          
        Nop                                    
        Label        -convert-98-start         
        PushI        61                        
        Nop                                    
        Nop                                    
        JumpFalse    -convert-98-false         
        PushI        1                         
        Jump         -convert-98-join          
        Label        -convert-98-false         
        PushI        0                         
        Label        -convert-98-join          
        Nop                                    
        Label        -compare-99-sub           
        Subtract                               
        JumpFalse    -compare-99-false         
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
        Label        -convert-101-start        
        PushI        37                        
        Nop                                    
        Nop                                    
        JumpFalse    -convert-101-false        
        PushI        1                         
        Jump         -convert-101-join         
        Label        -convert-101-false        
        PushI        0                         
        Label        -convert-101-join         
        Nop                                    
        Label        -convert-102-start        
        PushI        35                        
        Nop                                    
        Nop                                    
        JumpFalse    -convert-102-false        
        PushI        1                         
        Jump         -convert-102-join         
        Label        -convert-102-false        
        PushI        0                         
        Label        -convert-102-join         
        Nop                                    
        Label        -compare-103-sub          
        Subtract                               
        JumpFalse    -compare-103-false        
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
        Label        -convert-105-start        
        PushI        51                        
        Nop                                    
        Nop                                    
        JumpFalse    -convert-105-false        
        PushI        1                         
        Jump         -convert-105-join         
        Label        -convert-105-false        
        PushI        0                         
        Label        -convert-105-join         
        Nop                                    
        Label        -convert-106-start        
        PushI        49                        
        Nop                                    
        Nop                                    
        JumpFalse    -convert-106-false        
        PushI        1                         
        Jump         -convert-106-join         
        Label        -convert-106-false        
        PushI        0                         
        Label        -convert-106-join         
        Nop                                    
        Label        -compare-107-sub          
        Subtract                               
        JumpFalse    -compare-107-false        
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
        Label        -convert-109-start        
        PushI        67                        
        Nop                                    
        Nop                                    
        JumpFalse    -convert-109-false        
        PushI        1                         
        Jump         -convert-109-join         
        Label        -convert-109-false        
        PushI        0                         
        Label        -convert-109-join         
        Nop                                    
        Label        -convert-110-start        
        PushI        47                        
        Nop                                    
        Nop                                    
        JumpFalse    -convert-110-false        
        PushI        1                         
        Jump         -convert-110-join         
        Label        -convert-110-false        
        PushI        0                         
        Label        -convert-110-join         
        Nop                                    
        Label        -compare-111-sub          
        Subtract                               
        JumpFalse    -compare-111-false        
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
        Label        -convert-113-start        
        PushI        11                        
        Nop                                    
        Nop                                    
        JumpFalse    -convert-113-false        
        PushI        1                         
        Jump         -convert-113-join         
        Label        -convert-113-false        
        PushI        0                         
        Label        -convert-113-join         
        Nop                                    
        Label        -convert-114-start        
        PushI        21                        
        Nop                                    
        Nop                                    
        JumpFalse    -convert-114-false        
        PushI        1                         
        Jump         -convert-114-join         
        Label        -convert-114-false        
        PushI        0                         
        Label        -convert-114-join         
        Nop                                    
        Label        -compare-115-sub          
        Subtract                               
        JumpFalse    -compare-115-false        
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
        Label        -convert-117-start        
        PushI        39                        
        Nop                                    
        Nop                                    
        JumpFalse    -convert-117-false        
        PushI        1                         
        Jump         -convert-117-join         
        Label        -convert-117-false        
        PushI        0                         
        Label        -convert-117-join         
        Nop                                    
        Label        -convert-118-start        
        PushI        5                         
        Nop                                    
        Nop                                    
        JumpFalse    -convert-118-false        
        PushI        1                         
        Jump         -convert-118-join         
        Label        -convert-118-false        
        PushI        0                         
        Label        -convert-118-join         
        Nop                                    
        Label        -compare-119-sub          
        Subtract                               
        JumpFalse    -compare-119-false        
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
