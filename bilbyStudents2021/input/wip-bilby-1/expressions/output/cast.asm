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
        PushI        1                         
        Nop                                    
        JumpTrue     -print-boolean-1-true     
        PushD        $boolean-false-string     
        Jump         -print-boolean-1-join     
        Label        -print-boolean-1-true     
        PushD        $boolean-true-string      
        Label        -print-boolean-1-join     
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        97                        
        Nop                                    
        PushD        $print-format-char        
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        97                        
        Nop                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -convert-2-start          
        PushI        97                        
        JumpFalse    -convert-2-false          
        PushI        1                         
        Jump         -convert-2-join           
        Label        -convert-2-false          
        PushI        0                         
        Label        -convert-2-join           
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
        Label        -convert-4-start          
        PushI        0                         
        JumpFalse    -convert-4-false          
        PushI        1                         
        Jump         -convert-4-join           
        Label        -convert-4-false          
        PushI        0                         
        Label        -convert-4-join           
        JumpTrue     -print-boolean-5-true     
        PushD        $boolean-false-string     
        Jump         -print-boolean-5-join     
        Label        -print-boolean-5-true     
        PushD        $boolean-true-string      
        Label        -print-boolean-5-join     
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        3                         
        Nop                                    
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushI        3                         
        ConvertF                               
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -convert-6-start          
        PushI        97                        
        PushI        127                       
        BTAnd                                  
        PushD        $print-format-char        
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -convert-7-start          
        PushI        61537                     
        PushI        127                       
        BTAnd                                  
        PushD        $print-format-char        
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -convert-8-start          
        PushI        3                         
        JumpFalse    -convert-8-false          
        PushI        1                         
        Jump         -convert-8-join           
        Label        -convert-8-false          
        PushI        0                         
        Label        -convert-8-join           
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
        Label        -convert-10-start         
        PushI        0                         
        JumpFalse    -convert-10-false         
        PushI        1                         
        Jump         -convert-10-join          
        Label        -convert-10-false         
        PushI        0                         
        Label        -convert-10-join          
        JumpTrue     -print-boolean-11-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-11-join    
        Label        -print-boolean-11-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-11-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        3.000000                  
        Nop                                    
        PushD        $print-format-floating    
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        PushF        3.000000                  
        ConvertI                               
        PushD        $print-format-integer     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Halt                                   
