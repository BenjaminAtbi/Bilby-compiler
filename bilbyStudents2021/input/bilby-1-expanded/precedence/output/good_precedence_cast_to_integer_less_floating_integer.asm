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
        DLabel       $frame-pointer            
        DataZ        4                         
        DLabel       $stack-pointer            
        DataZ        4                         
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
        DataZ        0                         
        Label        $$main                    
        Memtop                                 
        PushD        $frame-pointer            
        Exchange                               
        StoreI                                 
        Memtop                                 
        PushD        $stack-pointer            
        Exchange                               
        StoreI                                 
        Jump         AFTER-FUNCTIONS           
        Label        AFTER-FUNCTIONS           
        Label        -compare-1-start          
        PushF        8.500000                  
        Nop                                    
        Nop                                    
        ConvertI                               
        Nop                                    
        PushI        28                        
        Nop                                    
        Label        -compare-1-sub            
        Subtract                               
        JumpNeg      -compare-1-true           
        Jump         -compare-1-false          
        Label        -compare-1-true           
        PushI        1                         
        Jump         -compare-1-join           
        Label        -compare-1-false          
        PushI        0                         
        Jump         -compare-1-join           
        Label        -compare-1-join           
        JumpTrue     -print-boolean-2-true     
        PushD        $boolean-false-string     
        Jump         -print-boolean-2-join     
        Label        -print-boolean-2-true     
        PushD        $boolean-true-string      
        Label        -print-boolean-2-join     
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-3-start          
        PushF        5.300000                  
        Nop                                    
        Nop                                    
        ConvertI                               
        Nop                                    
        PushI        85                        
        Nop                                    
        Label        -compare-3-sub            
        Subtract                               
        JumpNeg      -compare-3-true           
        Jump         -compare-3-false          
        Label        -compare-3-true           
        PushI        1                         
        Jump         -compare-3-join           
        Label        -compare-3-false          
        PushI        0                         
        Jump         -compare-3-join           
        Label        -compare-3-join           
        JumpTrue     -print-boolean-4-true     
        PushD        $boolean-false-string     
        Jump         -print-boolean-4-join     
        Label        -print-boolean-4-true     
        PushD        $boolean-true-string      
        Label        -print-boolean-4-join     
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-5-start          
        PushF        2.400000                  
        Nop                                    
        Nop                                    
        ConvertI                               
        Nop                                    
        PushI        86                        
        Nop                                    
        Label        -compare-5-sub            
        Subtract                               
        JumpNeg      -compare-5-true           
        Jump         -compare-5-false          
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
        Label        -compare-7-start          
        PushF        1.100000                  
        Nop                                    
        Nop                                    
        ConvertI                               
        Nop                                    
        PushI        55                        
        Nop                                    
        Label        -compare-7-sub            
        Subtract                               
        JumpNeg      -compare-7-true           
        Jump         -compare-7-false          
        Label        -compare-7-true           
        PushI        1                         
        Jump         -compare-7-join           
        Label        -compare-7-false          
        PushI        0                         
        Jump         -compare-7-join           
        Label        -compare-7-join           
        JumpTrue     -print-boolean-8-true     
        PushD        $boolean-false-string     
        Jump         -print-boolean-8-join     
        Label        -print-boolean-8-true     
        PushD        $boolean-true-string      
        Label        -print-boolean-8-join     
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-9-start          
        PushF        8.300000                  
        Nop                                    
        Nop                                    
        ConvertI                               
        Nop                                    
        PushI        12                        
        Nop                                    
        Label        -compare-9-sub            
        Subtract                               
        JumpNeg      -compare-9-true           
        Jump         -compare-9-false          
        Label        -compare-9-true           
        PushI        1                         
        Jump         -compare-9-join           
        Label        -compare-9-false          
        PushI        0                         
        Jump         -compare-9-join           
        Label        -compare-9-join           
        JumpTrue     -print-boolean-10-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-10-join    
        Label        -print-boolean-10-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-10-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-11-start         
        PushF        6.200000                  
        Nop                                    
        Nop                                    
        ConvertI                               
        Nop                                    
        PushI        98                        
        Nop                                    
        Label        -compare-11-sub           
        Subtract                               
        JumpNeg      -compare-11-true          
        Jump         -compare-11-false         
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
        Label        -compare-13-start         
        PushF        1.000000                  
        Nop                                    
        Nop                                    
        ConvertI                               
        Nop                                    
        PushI        79                        
        Nop                                    
        Label        -compare-13-sub           
        Subtract                               
        JumpNeg      -compare-13-true          
        Jump         -compare-13-false         
        Label        -compare-13-true          
        PushI        1                         
        Jump         -compare-13-join          
        Label        -compare-13-false         
        PushI        0                         
        Jump         -compare-13-join          
        Label        -compare-13-join          
        JumpTrue     -print-boolean-14-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-14-join    
        Label        -print-boolean-14-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-14-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-15-start         
        PushF        7.800000                  
        Nop                                    
        Nop                                    
        ConvertI                               
        Nop                                    
        PushI        68                        
        Nop                                    
        Label        -compare-15-sub           
        Subtract                               
        JumpNeg      -compare-15-true          
        Jump         -compare-15-false         
        Label        -compare-15-true          
        PushI        1                         
        Jump         -compare-15-join          
        Label        -compare-15-false         
        PushI        0                         
        Jump         -compare-15-join          
        Label        -compare-15-join          
        JumpTrue     -print-boolean-16-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-16-join    
        Label        -print-boolean-16-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-16-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-17-start         
        PushF        9.600000                  
        Nop                                    
        Nop                                    
        ConvertI                               
        Nop                                    
        PushI        69                        
        Nop                                    
        Label        -compare-17-sub           
        Subtract                               
        JumpNeg      -compare-17-true          
        Jump         -compare-17-false         
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
        Label        -compare-19-start         
        PushF        4.400000                  
        Nop                                    
        Nop                                    
        ConvertI                               
        Nop                                    
        PushI        98                        
        Nop                                    
        Label        -compare-19-sub           
        Subtract                               
        JumpNeg      -compare-19-true          
        Jump         -compare-19-false         
        Label        -compare-19-true          
        PushI        1                         
        Jump         -compare-19-join          
        Label        -compare-19-false         
        PushI        0                         
        Jump         -compare-19-join          
        Label        -compare-19-join          
        JumpTrue     -print-boolean-20-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-20-join    
        Label        -print-boolean-20-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-20-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-21-start         
        PushF        2.900000                  
        Nop                                    
        Nop                                    
        ConvertI                               
        Nop                                    
        PushI        71                        
        Nop                                    
        Label        -compare-21-sub           
        Subtract                               
        JumpNeg      -compare-21-true          
        Jump         -compare-21-false         
        Label        -compare-21-true          
        PushI        1                         
        Jump         -compare-21-join          
        Label        -compare-21-false         
        PushI        0                         
        Jump         -compare-21-join          
        Label        -compare-21-join          
        JumpTrue     -print-boolean-22-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-22-join    
        Label        -print-boolean-22-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-22-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-23-start         
        PushF        8.500000                  
        Nop                                    
        Nop                                    
        ConvertI                               
        Nop                                    
        PushI        53                        
        Nop                                    
        Label        -compare-23-sub           
        Subtract                               
        JumpNeg      -compare-23-true          
        Jump         -compare-23-false         
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
        Label        -compare-25-start         
        PushI        2                         
        Nop                                    
        PushF        5.100000                  
        Nop                                    
        Nop                                    
        ConvertI                               
        Nop                                    
        Label        -compare-25-sub           
        Subtract                               
        JumpNeg      -compare-25-true          
        Jump         -compare-25-false         
        Label        -compare-25-true          
        PushI        1                         
        Jump         -compare-25-join          
        Label        -compare-25-false         
        PushI        0                         
        Jump         -compare-25-join          
        Label        -compare-25-join          
        JumpTrue     -print-boolean-26-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-26-join    
        Label        -print-boolean-26-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-26-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-27-start         
        PushI        29                        
        Nop                                    
        PushF        5.200000                  
        Nop                                    
        Nop                                    
        ConvertI                               
        Nop                                    
        Label        -compare-27-sub           
        Subtract                               
        JumpNeg      -compare-27-true          
        Jump         -compare-27-false         
        Label        -compare-27-true          
        PushI        1                         
        Jump         -compare-27-join          
        Label        -compare-27-false         
        PushI        0                         
        Jump         -compare-27-join          
        Label        -compare-27-join          
        JumpTrue     -print-boolean-28-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-28-join    
        Label        -print-boolean-28-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-28-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-29-start         
        PushI        81                        
        Nop                                    
        PushF        7.600000                  
        Nop                                    
        Nop                                    
        ConvertI                               
        Nop                                    
        Label        -compare-29-sub           
        Subtract                               
        JumpNeg      -compare-29-true          
        Jump         -compare-29-false         
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
        Label        -compare-31-start         
        PushI        25                        
        Nop                                    
        PushF        5.200000                  
        Nop                                    
        Nop                                    
        ConvertI                               
        Nop                                    
        Label        -compare-31-sub           
        Subtract                               
        JumpNeg      -compare-31-true          
        Jump         -compare-31-false         
        Label        -compare-31-true          
        PushI        1                         
        Jump         -compare-31-join          
        Label        -compare-31-false         
        PushI        0                         
        Jump         -compare-31-join          
        Label        -compare-31-join          
        JumpTrue     -print-boolean-32-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-32-join    
        Label        -print-boolean-32-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-32-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-33-start         
        PushI        6                         
        Nop                                    
        PushF        3.100000                  
        Nop                                    
        Nop                                    
        ConvertI                               
        Nop                                    
        Label        -compare-33-sub           
        Subtract                               
        JumpNeg      -compare-33-true          
        Jump         -compare-33-false         
        Label        -compare-33-true          
        PushI        1                         
        Jump         -compare-33-join          
        Label        -compare-33-false         
        PushI        0                         
        Jump         -compare-33-join          
        Label        -compare-33-join          
        JumpTrue     -print-boolean-34-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-34-join    
        Label        -print-boolean-34-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-34-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-35-start         
        PushI        7                         
        Nop                                    
        PushF        4.100000                  
        Nop                                    
        Nop                                    
        ConvertI                               
        Nop                                    
        Label        -compare-35-sub           
        Subtract                               
        JumpNeg      -compare-35-true          
        Jump         -compare-35-false         
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
        Label        -compare-37-start         
        PushI        98                        
        Nop                                    
        PushF        9.000000                  
        Nop                                    
        Nop                                    
        ConvertI                               
        Nop                                    
        Label        -compare-37-sub           
        Subtract                               
        JumpNeg      -compare-37-true          
        Jump         -compare-37-false         
        Label        -compare-37-true          
        PushI        1                         
        Jump         -compare-37-join          
        Label        -compare-37-false         
        PushI        0                         
        Jump         -compare-37-join          
        Label        -compare-37-join          
        JumpTrue     -print-boolean-38-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-38-join    
        Label        -print-boolean-38-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-38-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-39-start         
        PushI        34                        
        Nop                                    
        PushF        9.600000                  
        Nop                                    
        Nop                                    
        ConvertI                               
        Nop                                    
        Label        -compare-39-sub           
        Subtract                               
        JumpNeg      -compare-39-true          
        Jump         -compare-39-false         
        Label        -compare-39-true          
        PushI        1                         
        Jump         -compare-39-join          
        Label        -compare-39-false         
        PushI        0                         
        Jump         -compare-39-join          
        Label        -compare-39-join          
        JumpTrue     -print-boolean-40-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-40-join    
        Label        -print-boolean-40-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-40-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-41-start         
        PushI        40                        
        Nop                                    
        PushF        9.100000                  
        Nop                                    
        Nop                                    
        ConvertI                               
        Nop                                    
        Label        -compare-41-sub           
        Subtract                               
        JumpNeg      -compare-41-true          
        Jump         -compare-41-false         
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
        Label        -compare-43-start         
        PushI        2                         
        Nop                                    
        PushF        9.900000                  
        Nop                                    
        Nop                                    
        ConvertI                               
        Nop                                    
        Label        -compare-43-sub           
        Subtract                               
        JumpNeg      -compare-43-true          
        Jump         -compare-43-false         
        Label        -compare-43-true          
        PushI        1                         
        Jump         -compare-43-join          
        Label        -compare-43-false         
        PushI        0                         
        Jump         -compare-43-join          
        Label        -compare-43-join          
        JumpTrue     -print-boolean-44-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-44-join    
        Label        -print-boolean-44-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-44-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-45-start         
        PushI        7                         
        Nop                                    
        PushF        5.800000                  
        Nop                                    
        Nop                                    
        ConvertI                               
        Nop                                    
        Label        -compare-45-sub           
        Subtract                               
        JumpNeg      -compare-45-true          
        Jump         -compare-45-false         
        Label        -compare-45-true          
        PushI        1                         
        Jump         -compare-45-join          
        Label        -compare-45-false         
        PushI        0                         
        Jump         -compare-45-join          
        Label        -compare-45-join          
        JumpTrue     -print-boolean-46-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-46-join    
        Label        -print-boolean-46-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-46-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-47-start         
        PushI        30                        
        Nop                                    
        PushF        6.900000                  
        Nop                                    
        Nop                                    
        ConvertI                               
        Nop                                    
        Label        -compare-47-sub           
        Subtract                               
        JumpNeg      -compare-47-true          
        Jump         -compare-47-false         
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
        Label        -compare-49-start         
        PushF        1.500000                  
        Nop                                    
        Nop                                    
        ConvertI                               
        Nop                                    
        PushF        8.600000                  
        Nop                                    
        Nop                                    
        ConvertI                               
        Nop                                    
        Label        -compare-49-sub           
        Subtract                               
        JumpNeg      -compare-49-true          
        Jump         -compare-49-false         
        Label        -compare-49-true          
        PushI        1                         
        Jump         -compare-49-join          
        Label        -compare-49-false         
        PushI        0                         
        Jump         -compare-49-join          
        Label        -compare-49-join          
        JumpTrue     -print-boolean-50-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-50-join    
        Label        -print-boolean-50-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-50-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-51-start         
        PushF        9.300000                  
        Nop                                    
        Nop                                    
        ConvertI                               
        Nop                                    
        PushF        1.500000                  
        Nop                                    
        Nop                                    
        ConvertI                               
        Nop                                    
        Label        -compare-51-sub           
        Subtract                               
        JumpNeg      -compare-51-true          
        Jump         -compare-51-false         
        Label        -compare-51-true          
        PushI        1                         
        Jump         -compare-51-join          
        Label        -compare-51-false         
        PushI        0                         
        Jump         -compare-51-join          
        Label        -compare-51-join          
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
        Label        -compare-53-start         
        PushF        1.300000                  
        Nop                                    
        Nop                                    
        ConvertI                               
        Nop                                    
        PushF        7.100000                  
        Nop                                    
        Nop                                    
        ConvertI                               
        Nop                                    
        Label        -compare-53-sub           
        Subtract                               
        JumpNeg      -compare-53-true          
        Jump         -compare-53-false         
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
        Label        -compare-55-start         
        PushF        9.200000                  
        Nop                                    
        Nop                                    
        ConvertI                               
        Nop                                    
        PushF        6.200000                  
        Nop                                    
        Nop                                    
        ConvertI                               
        Nop                                    
        Label        -compare-55-sub           
        Subtract                               
        JumpNeg      -compare-55-true          
        Jump         -compare-55-false         
        Label        -compare-55-true          
        PushI        1                         
        Jump         -compare-55-join          
        Label        -compare-55-false         
        PushI        0                         
        Jump         -compare-55-join          
        Label        -compare-55-join          
        JumpTrue     -print-boolean-56-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-56-join    
        Label        -print-boolean-56-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-56-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-57-start         
        PushF        7.900000                  
        Nop                                    
        Nop                                    
        ConvertI                               
        Nop                                    
        PushF        7.000000                  
        Nop                                    
        Nop                                    
        ConvertI                               
        Nop                                    
        Label        -compare-57-sub           
        Subtract                               
        JumpNeg      -compare-57-true          
        Jump         -compare-57-false         
        Label        -compare-57-true          
        PushI        1                         
        Jump         -compare-57-join          
        Label        -compare-57-false         
        PushI        0                         
        Jump         -compare-57-join          
        Label        -compare-57-join          
        JumpTrue     -print-boolean-58-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-58-join    
        Label        -print-boolean-58-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-58-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-59-start         
        PushF        5.700000                  
        Nop                                    
        Nop                                    
        ConvertI                               
        Nop                                    
        PushF        9.100000                  
        Nop                                    
        Nop                                    
        ConvertI                               
        Nop                                    
        Label        -compare-59-sub           
        Subtract                               
        JumpNeg      -compare-59-true          
        Jump         -compare-59-false         
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
        Label        -compare-61-start         
        PushF        9.500000                  
        Nop                                    
        Nop                                    
        ConvertI                               
        Nop                                    
        PushF        1.300000                  
        Nop                                    
        Nop                                    
        ConvertI                               
        Nop                                    
        Label        -compare-61-sub           
        Subtract                               
        JumpNeg      -compare-61-true          
        Jump         -compare-61-false         
        Label        -compare-61-true          
        PushI        1                         
        Jump         -compare-61-join          
        Label        -compare-61-false         
        PushI        0                         
        Jump         -compare-61-join          
        Label        -compare-61-join          
        JumpTrue     -print-boolean-62-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-62-join    
        Label        -print-boolean-62-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-62-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-63-start         
        PushF        3.900000                  
        Nop                                    
        Nop                                    
        ConvertI                               
        Nop                                    
        PushF        2.600000                  
        Nop                                    
        Nop                                    
        ConvertI                               
        Nop                                    
        Label        -compare-63-sub           
        Subtract                               
        JumpNeg      -compare-63-true          
        Jump         -compare-63-false         
        Label        -compare-63-true          
        PushI        1                         
        Jump         -compare-63-join          
        Label        -compare-63-false         
        PushI        0                         
        Jump         -compare-63-join          
        Label        -compare-63-join          
        JumpTrue     -print-boolean-64-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-64-join    
        Label        -print-boolean-64-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-64-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-65-start         
        PushF        7.200000                  
        Nop                                    
        Nop                                    
        ConvertI                               
        Nop                                    
        PushF        7.300000                  
        Nop                                    
        Nop                                    
        ConvertI                               
        Nop                                    
        Label        -compare-65-sub           
        Subtract                               
        JumpNeg      -compare-65-true          
        Jump         -compare-65-false         
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
        Label        -compare-67-start         
        PushF        3.000000                  
        Nop                                    
        Nop                                    
        ConvertI                               
        Nop                                    
        PushF        6.800000                  
        Nop                                    
        Nop                                    
        ConvertI                               
        Nop                                    
        Label        -compare-67-sub           
        Subtract                               
        JumpNeg      -compare-67-true          
        Jump         -compare-67-false         
        Label        -compare-67-true          
        PushI        1                         
        Jump         -compare-67-join          
        Label        -compare-67-false         
        PushI        0                         
        Jump         -compare-67-join          
        Label        -compare-67-join          
        JumpTrue     -print-boolean-68-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-68-join    
        Label        -print-boolean-68-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-68-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-69-start         
        PushF        7.400000                  
        Nop                                    
        Nop                                    
        ConvertI                               
        Nop                                    
        PushF        6.600000                  
        Nop                                    
        Nop                                    
        ConvertI                               
        Nop                                    
        Label        -compare-69-sub           
        Subtract                               
        JumpNeg      -compare-69-true          
        Jump         -compare-69-false         
        Label        -compare-69-true          
        PushI        1                         
        Jump         -compare-69-join          
        Label        -compare-69-false         
        PushI        0                         
        Jump         -compare-69-join          
        Label        -compare-69-join          
        JumpTrue     -print-boolean-70-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-70-join    
        Label        -print-boolean-70-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-70-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-71-start         
        PushF        5.300000                  
        Nop                                    
        Nop                                    
        ConvertI                               
        Nop                                    
        PushF        3.200000                  
        Nop                                    
        Nop                                    
        ConvertI                               
        Nop                                    
        Label        -compare-71-sub           
        Subtract                               
        JumpNeg      -compare-71-true          
        Jump         -compare-71-false         
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
        JumpNeg      -print-value-73-char      
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
        Jump         -print-value-73-end       
        Label        -print-value-73-char      
        PushD        $print-value-typeid       
        LoadI                                  
        JumpTrue     -print-value-73-int       
        PushD        $print-value-address      
        LoadI                                  
        LoadC                                  
        PushD        $print-format-char        
        Printf                                 
        Label        -print-value-73-int       
        PushD        $print-value-typeid       
        LoadI                                  
        PushI        1                         
        Subtract                               
        JumpTrue     -print-value-73-float     
        PushD        $print-value-address      
        LoadI                                  
        LoadI                                  
        PushD        $print-format-integer     
        Printf                                 
        Label        -print-value-73-float     
        PushD        $print-value-typeid       
        LoadI                                  
        PushI        2                         
        Subtract                               
        JumpTrue     -print-value-73-string    
        PushD        $print-value-address      
        LoadI                                  
        LoadF                                  
        PushD        $print-format-floating    
        Printf                                 
        Label        -print-value-73-string    
        PushD        $print-value-typeid       
        LoadI                                  
        PushI        3                         
        Subtract                               
        JumpTrue     -print-value-73-bool      
        PushD        $print-value-address      
        LoadI                                  
        LoadI                                  
        PushI        12                        
        Add                                    
        PushD        $print-format-string      
        Printf                                 
        Label        -print-value-73-bool      
        PushD        $print-value-typeid       
        LoadI                                  
        PushI        4                         
        Subtract                               
        JumpTrue     -print-value-73-end       
        PushD        $print-value-address      
        LoadI                                  
        LoadC                                  
        JumpTrue     -print-value-73-true      
        PushD        $boolean-false-string     
        Jump         -print-value-73-pastTrue  
        Label        -print-value-73-true      
        PushD        $boolean-true-string      
        Label        -print-value-73-pastTrue  
        PushD        $print-format-string      
        Printf                                 
        Label        -print-value-73-end       
        PushD        $print-value-return-address 
        LoadI                                  
        Return                                 
        Label        $print-range              
        DLabel       -print-range-74-return-address 
        DataZ        4                         
        DLabel       -print-range-74-typeID    
        DataZ        4                         
        DLabel       -print-range-74-address   
        DataZ        4                         
        PushD        -print-range-74-return-address 
        Exchange                               
        StoreI                                 
        PushI        7                         
        BTAnd                                  
        PushD        -print-range-74-typeID    
        Exchange                               
        StoreI                                 
        PushD        -print-range-74-address   
        Exchange                               
        StoreI                                 
        PushD        $print-format-less        
        Printf                                 
        PushD        -print-range-74-address   
        LoadI                                  
        PushD        -print-range-74-typeID    
        LoadI                                  
        Call         $print-value              
        PushD        $print-format-period      
        Printf                                 
        PushD        -print-range-74-typeID    
        LoadI                                  
        JumpTrue     -print-range-74-type-int  
        PushI        1                         
        Jump         -print-range-74-after-offset 
        Label        -print-range-74-type-int  
        PushD        -print-range-74-typeID    
        LoadI                                  
        PushI        1                         
        BTAnd                                  
        JumpFalse    -print-range-74-type-float 
        PushI        4                         
        Jump         -print-range-74-after-offset 
        Label        -print-range-74-type-float 
        PushD        -print-range-74-typeID    
        LoadI                                  
        PushI        2                         
        BTAnd                                  
        JumpFalse    $$range-contains-invalid-type 
        PushI        8                         
        Label        -print-range-74-after-offset 
        PushD        -print-range-74-address   
        LoadI                                  
        Add                                    
        PushD        -print-range-74-typeID    
        LoadI                                  
        Call         $print-value              
        PushD        $print-format-greater     
        Printf                                 
        PushD        -print-range-74-return-address 
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
