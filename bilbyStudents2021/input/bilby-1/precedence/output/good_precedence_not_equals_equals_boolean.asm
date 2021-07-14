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
        Label        -compare-2-start          
        Label        -compare-1-start          
        PushI        0                         
        PushI        1                         
        Label        -compare-1-sub            
        Subtract                               
        JumpFalse    -compare-1-false          
        Label        -compare-1-true           
        PushI        1                         
        Jump         -compare-1-join           
        Label        -compare-1-false          
        PushI        0                         
        Jump         -compare-1-join           
        Label        -compare-1-join           
        PushI        1                         
        Label        -compare-2-sub            
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-2-equate         
        Pop                                    
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
        PushI        1                         
        PushI        1                         
        Label        -compare-4-sub            
        Subtract                               
        JumpFalse    -compare-4-false          
        Label        -compare-4-true           
        PushI        1                         
        Jump         -compare-4-join           
        Label        -compare-4-false          
        PushI        0                         
        Jump         -compare-4-join           
        Label        -compare-4-join           
        PushI        0                         
        Label        -compare-5-sub            
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-5-equate         
        Pop                                    
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
        PushI        0                         
        PushI        1                         
        Label        -compare-7-sub            
        Subtract                               
        JumpFalse    -compare-7-false          
        Label        -compare-7-true           
        PushI        1                         
        Jump         -compare-7-join           
        Label        -compare-7-false          
        PushI        0                         
        Jump         -compare-7-join           
        Label        -compare-7-join           
        PushI        1                         
        Label        -compare-8-sub            
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-8-equate         
        Pop                                    
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
        PushI        0                         
        PushI        0                         
        Label        -compare-10-sub           
        Subtract                               
        JumpFalse    -compare-10-false         
        Label        -compare-10-true          
        PushI        1                         
        Jump         -compare-10-join          
        Label        -compare-10-false         
        PushI        0                         
        Jump         -compare-10-join          
        Label        -compare-10-join          
        PushI        1                         
        Label        -compare-11-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-11-equate        
        Pop                                    
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
        PushI        0                         
        PushI        0                         
        Label        -compare-13-sub           
        Subtract                               
        JumpFalse    -compare-13-false         
        Label        -compare-13-true          
        PushI        1                         
        Jump         -compare-13-join          
        Label        -compare-13-false         
        PushI        0                         
        Jump         -compare-13-join          
        Label        -compare-13-join          
        PushI        1                         
        Label        -compare-14-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-14-equate        
        Pop                                    
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
        PushI        1                         
        PushI        0                         
        Label        -compare-16-sub           
        Subtract                               
        JumpFalse    -compare-16-false         
        Label        -compare-16-true          
        PushI        1                         
        Jump         -compare-16-join          
        Label        -compare-16-false         
        PushI        0                         
        Jump         -compare-16-join          
        Label        -compare-16-join          
        PushI        1                         
        Label        -compare-17-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-17-equate        
        Pop                                    
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
        PushI        1                         
        PushI        1                         
        Label        -compare-19-sub           
        Subtract                               
        JumpFalse    -compare-19-false         
        Label        -compare-19-true          
        PushI        1                         
        Jump         -compare-19-join          
        Label        -compare-19-false         
        PushI        0                         
        Jump         -compare-19-join          
        Label        -compare-19-join          
        PushI        0                         
        Label        -compare-20-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-20-equate        
        Pop                                    
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
        PushI        1                         
        PushI        1                         
        Label        -compare-22-sub           
        Subtract                               
        JumpFalse    -compare-22-false         
        Label        -compare-22-true          
        PushI        1                         
        Jump         -compare-22-join          
        Label        -compare-22-false         
        PushI        0                         
        Jump         -compare-22-join          
        Label        -compare-22-join          
        PushI        1                         
        Label        -compare-23-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-23-equate        
        Pop                                    
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
        PushI        0                         
        PushI        0                         
        Label        -compare-25-sub           
        Subtract                               
        JumpFalse    -compare-25-false         
        Label        -compare-25-true          
        PushI        1                         
        Jump         -compare-25-join          
        Label        -compare-25-false         
        PushI        0                         
        Jump         -compare-25-join          
        Label        -compare-25-join          
        PushI        1                         
        Label        -compare-26-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-26-equate        
        Pop                                    
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
        PushI        0                         
        PushI        0                         
        Label        -compare-28-sub           
        Subtract                               
        JumpFalse    -compare-28-false         
        Label        -compare-28-true          
        PushI        1                         
        Jump         -compare-28-join          
        Label        -compare-28-false         
        PushI        0                         
        Jump         -compare-28-join          
        Label        -compare-28-join          
        PushI        0                         
        Label        -compare-29-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-29-equate        
        Pop                                    
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
        PushI        0                         
        PushI        1                         
        Label        -compare-31-sub           
        Subtract                               
        JumpFalse    -compare-31-false         
        Label        -compare-31-true          
        PushI        1                         
        Jump         -compare-31-join          
        Label        -compare-31-false         
        PushI        0                         
        Jump         -compare-31-join          
        Label        -compare-31-join          
        PushI        1                         
        Label        -compare-32-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-32-equate        
        Pop                                    
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
        PushI        0                         
        PushI        0                         
        Label        -compare-34-sub           
        Subtract                               
        JumpFalse    -compare-34-false         
        Label        -compare-34-true          
        PushI        1                         
        Jump         -compare-34-join          
        Label        -compare-34-false         
        PushI        0                         
        Jump         -compare-34-join          
        Label        -compare-34-join          
        PushI        0                         
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
        Label        -compare-37-start         
        PushI        1                         
        PushI        0                         
        Label        -compare-37-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-37-equate        
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
        PushI        1                         
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
        Label        -compare-40-start         
        PushI        0                         
        PushI        0                         
        Label        -compare-40-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-40-equate        
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
        PushI        0                         
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
        Label        -compare-43-start         
        PushI        0                         
        PushI        1                         
        Label        -compare-43-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-43-equate        
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
        PushI        1                         
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
        Label        -compare-46-start         
        PushI        1                         
        PushI        0                         
        Label        -compare-46-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-46-equate        
        Pop                                    
        Jump         -compare-46-false         
        Label        -compare-46-equate        
        Pop                                    
        Label        -compare-46-true          
        PushI        1                         
        Jump         -compare-46-join          
        Label        -compare-46-false         
        PushI        0                         
        Jump         -compare-46-join          
        Label        -compare-46-join          
        PushI        1                         
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
        Label        -compare-49-start         
        PushI        0                         
        PushI        0                         
        Label        -compare-49-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-49-equate        
        Pop                                    
        Jump         -compare-49-false         
        Label        -compare-49-equate        
        Pop                                    
        Label        -compare-49-true          
        PushI        1                         
        Jump         -compare-49-join          
        Label        -compare-49-false         
        PushI        0                         
        Jump         -compare-49-join          
        Label        -compare-49-join          
        PushI        0                         
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
        Label        -compare-52-start         
        PushI        1                         
        PushI        0                         
        Label        -compare-52-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-52-equate        
        Pop                                    
        Jump         -compare-52-false         
        Label        -compare-52-equate        
        Pop                                    
        Label        -compare-52-true          
        PushI        1                         
        Jump         -compare-52-join          
        Label        -compare-52-false         
        PushI        0                         
        Jump         -compare-52-join          
        Label        -compare-52-join          
        PushI        1                         
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
        Label        -compare-55-start         
        PushI        0                         
        PushI        0                         
        Label        -compare-55-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-55-equate        
        Pop                                    
        Jump         -compare-55-false         
        Label        -compare-55-equate        
        Pop                                    
        Label        -compare-55-true          
        PushI        1                         
        Jump         -compare-55-join          
        Label        -compare-55-false         
        PushI        0                         
        Jump         -compare-55-join          
        Label        -compare-55-join          
        PushI        0                         
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
        Label        -compare-58-start         
        PushI        0                         
        PushI        1                         
        Label        -compare-58-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-58-equate        
        Pop                                    
        Jump         -compare-58-false         
        Label        -compare-58-equate        
        Pop                                    
        Label        -compare-58-true          
        PushI        1                         
        Jump         -compare-58-join          
        Label        -compare-58-false         
        PushI        0                         
        Jump         -compare-58-join          
        Label        -compare-58-join          
        PushI        1                         
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
        Label        -compare-61-start         
        PushI        1                         
        PushI        0                         
        Label        -compare-61-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-61-equate        
        Pop                                    
        Jump         -compare-61-false         
        Label        -compare-61-equate        
        Pop                                    
        Label        -compare-61-true          
        PushI        1                         
        Jump         -compare-61-join          
        Label        -compare-61-false         
        PushI        0                         
        Jump         -compare-61-join          
        Label        -compare-61-join          
        PushI        1                         
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
        Label        -compare-64-start         
        PushI        1                         
        PushI        0                         
        Label        -compare-64-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-64-equate        
        Pop                                    
        Jump         -compare-64-false         
        Label        -compare-64-equate        
        Pop                                    
        Label        -compare-64-true          
        PushI        1                         
        Jump         -compare-64-join          
        Label        -compare-64-false         
        PushI        0                         
        Jump         -compare-64-join          
        Label        -compare-64-join          
        PushI        0                         
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
        Label        -compare-67-start         
        PushI        1                         
        PushI        1                         
        Label        -compare-67-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-67-equate        
        Pop                                    
        Jump         -compare-67-false         
        Label        -compare-67-equate        
        Pop                                    
        Label        -compare-67-true          
        PushI        1                         
        Jump         -compare-67-join          
        Label        -compare-67-false         
        PushI        0                         
        Jump         -compare-67-join          
        Label        -compare-67-join          
        PushI        1                         
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
        Label        -compare-70-start         
        PushI        1                         
        PushI        1                         
        Label        -compare-70-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-70-equate        
        Pop                                    
        Jump         -compare-70-false         
        Label        -compare-70-equate        
        Pop                                    
        Label        -compare-70-true          
        PushI        1                         
        Jump         -compare-70-join          
        Label        -compare-70-false         
        PushI        0                         
        Jump         -compare-70-join          
        Label        -compare-70-join          
        PushI        0                         
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
        Label        -compare-74-start         
        Label        -compare-73-start         
        PushI        1                         
        PushI        1                         
        Label        -compare-73-sub           
        Subtract                               
        JumpFalse    -compare-73-false         
        Label        -compare-73-true          
        PushI        1                         
        Jump         -compare-73-join          
        Label        -compare-73-false         
        PushI        0                         
        Jump         -compare-73-join          
        Label        -compare-73-join          
        PushI        1                         
        Label        -compare-74-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-74-equate        
        Pop                                    
        Jump         -compare-74-false         
        Label        -compare-74-equate        
        Pop                                    
        Label        -compare-74-true          
        PushI        1                         
        Jump         -compare-74-join          
        Label        -compare-74-false         
        PushI        0                         
        Jump         -compare-74-join          
        Label        -compare-74-join          
        PushI        0                         
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
        Label        -compare-78-start         
        Label        -compare-77-start         
        PushI        0                         
        PushI        0                         
        Label        -compare-77-sub           
        Subtract                               
        JumpFalse    -compare-77-false         
        Label        -compare-77-true          
        PushI        1                         
        Jump         -compare-77-join          
        Label        -compare-77-false         
        PushI        0                         
        Jump         -compare-77-join          
        Label        -compare-77-join          
        PushI        1                         
        Label        -compare-78-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-78-equate        
        Pop                                    
        Jump         -compare-78-false         
        Label        -compare-78-equate        
        Pop                                    
        Label        -compare-78-true          
        PushI        1                         
        Jump         -compare-78-join          
        Label        -compare-78-false         
        PushI        0                         
        Jump         -compare-78-join          
        Label        -compare-78-join          
        PushI        0                         
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
        Label        -compare-82-start         
        Label        -compare-81-start         
        PushI        0                         
        PushI        0                         
        Label        -compare-81-sub           
        Subtract                               
        JumpFalse    -compare-81-false         
        Label        -compare-81-true          
        PushI        1                         
        Jump         -compare-81-join          
        Label        -compare-81-false         
        PushI        0                         
        Jump         -compare-81-join          
        Label        -compare-81-join          
        PushI        1                         
        Label        -compare-82-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-82-equate        
        Pop                                    
        Jump         -compare-82-false         
        Label        -compare-82-equate        
        Pop                                    
        Label        -compare-82-true          
        PushI        1                         
        Jump         -compare-82-join          
        Label        -compare-82-false         
        PushI        0                         
        Jump         -compare-82-join          
        Label        -compare-82-join          
        PushI        1                         
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
        Label        -compare-86-start         
        Label        -compare-85-start         
        PushI        1                         
        PushI        0                         
        Label        -compare-85-sub           
        Subtract                               
        JumpFalse    -compare-85-false         
        Label        -compare-85-true          
        PushI        1                         
        Jump         -compare-85-join          
        Label        -compare-85-false         
        PushI        0                         
        Jump         -compare-85-join          
        Label        -compare-85-join          
        PushI        0                         
        Label        -compare-86-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-86-equate        
        Pop                                    
        Jump         -compare-86-false         
        Label        -compare-86-equate        
        Pop                                    
        Label        -compare-86-true          
        PushI        1                         
        Jump         -compare-86-join          
        Label        -compare-86-false         
        PushI        0                         
        Jump         -compare-86-join          
        Label        -compare-86-join          
        PushI        1                         
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
        Label        -compare-90-start         
        Label        -compare-89-start         
        PushI        0                         
        PushI        0                         
        Label        -compare-89-sub           
        Subtract                               
        JumpFalse    -compare-89-false         
        Label        -compare-89-true          
        PushI        1                         
        Jump         -compare-89-join          
        Label        -compare-89-false         
        PushI        0                         
        Jump         -compare-89-join          
        Label        -compare-89-join          
        PushI        1                         
        Label        -compare-90-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-90-equate        
        Pop                                    
        Jump         -compare-90-false         
        Label        -compare-90-equate        
        Pop                                    
        Label        -compare-90-true          
        PushI        1                         
        Jump         -compare-90-join          
        Label        -compare-90-false         
        PushI        0                         
        Jump         -compare-90-join          
        Label        -compare-90-join          
        PushI        0                         
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
        Label        -compare-94-start         
        Label        -compare-93-start         
        PushI        0                         
        PushI        0                         
        Label        -compare-93-sub           
        Subtract                               
        JumpFalse    -compare-93-false         
        Label        -compare-93-true          
        PushI        1                         
        Jump         -compare-93-join          
        Label        -compare-93-false         
        PushI        0                         
        Jump         -compare-93-join          
        Label        -compare-93-join          
        PushI        0                         
        Label        -compare-94-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-94-equate        
        Pop                                    
        Jump         -compare-94-false         
        Label        -compare-94-equate        
        Pop                                    
        Label        -compare-94-true          
        PushI        1                         
        Jump         -compare-94-join          
        Label        -compare-94-false         
        PushI        0                         
        Jump         -compare-94-join          
        Label        -compare-94-join          
        PushI        1                         
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
        Label        -compare-98-start         
        Label        -compare-97-start         
        PushI        1                         
        PushI        1                         
        Label        -compare-97-sub           
        Subtract                               
        JumpFalse    -compare-97-false         
        Label        -compare-97-true          
        PushI        1                         
        Jump         -compare-97-join          
        Label        -compare-97-false         
        PushI        0                         
        Jump         -compare-97-join          
        Label        -compare-97-join          
        PushI        0                         
        Label        -compare-98-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-98-equate        
        Pop                                    
        Jump         -compare-98-false         
        Label        -compare-98-equate        
        Pop                                    
        Label        -compare-98-true          
        PushI        1                         
        Jump         -compare-98-join          
        Label        -compare-98-false         
        PushI        0                         
        Jump         -compare-98-join          
        Label        -compare-98-join          
        PushI        0                         
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
        Label        -compare-102-start        
        Label        -compare-101-start        
        PushI        0                         
        PushI        1                         
        Label        -compare-101-sub          
        Subtract                               
        JumpFalse    -compare-101-false        
        Label        -compare-101-true         
        PushI        1                         
        Jump         -compare-101-join         
        Label        -compare-101-false        
        PushI        0                         
        Jump         -compare-101-join         
        Label        -compare-101-join         
        PushI        0                         
        Label        -compare-102-sub          
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-102-equate       
        Pop                                    
        Jump         -compare-102-false        
        Label        -compare-102-equate       
        Pop                                    
        Label        -compare-102-true         
        PushI        1                         
        Jump         -compare-102-join         
        Label        -compare-102-false        
        PushI        0                         
        Jump         -compare-102-join         
        Label        -compare-102-join         
        PushI        0                         
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
        Label        -compare-106-start        
        Label        -compare-105-start        
        PushI        0                         
        PushI        1                         
        Label        -compare-105-sub          
        Subtract                               
        JumpFalse    -compare-105-false        
        Label        -compare-105-true         
        PushI        1                         
        Jump         -compare-105-join         
        Label        -compare-105-false        
        PushI        0                         
        Jump         -compare-105-join         
        Label        -compare-105-join         
        PushI        0                         
        Label        -compare-106-sub          
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-106-equate       
        Pop                                    
        Jump         -compare-106-false        
        Label        -compare-106-equate       
        Pop                                    
        Label        -compare-106-true         
        PushI        1                         
        Jump         -compare-106-join         
        Label        -compare-106-false        
        PushI        0                         
        Jump         -compare-106-join         
        Label        -compare-106-join         
        PushI        1                         
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
        Label        -compare-110-start        
        Label        -compare-109-start        
        PushI        1                         
        PushI        0                         
        Label        -compare-109-sub          
        Subtract                               
        JumpFalse    -compare-109-false        
        Label        -compare-109-true         
        PushI        1                         
        Jump         -compare-109-join         
        Label        -compare-109-false        
        PushI        0                         
        Jump         -compare-109-join         
        Label        -compare-109-join         
        PushI        0                         
        Label        -compare-110-sub          
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-110-equate       
        Pop                                    
        Jump         -compare-110-false        
        Label        -compare-110-equate       
        Pop                                    
        Label        -compare-110-true         
        PushI        1                         
        Jump         -compare-110-join         
        Label        -compare-110-false        
        PushI        0                         
        Jump         -compare-110-join         
        Label        -compare-110-join         
        PushI        1                         
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
        Label        -compare-114-start        
        Label        -compare-113-start        
        PushI        0                         
        PushI        0                         
        Label        -compare-113-sub          
        Subtract                               
        JumpFalse    -compare-113-false        
        Label        -compare-113-true         
        PushI        1                         
        Jump         -compare-113-join         
        Label        -compare-113-false        
        PushI        0                         
        Jump         -compare-113-join         
        Label        -compare-113-join         
        PushI        1                         
        Label        -compare-114-sub          
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-114-equate       
        Pop                                    
        Jump         -compare-114-false        
        Label        -compare-114-equate       
        Pop                                    
        Label        -compare-114-true         
        PushI        1                         
        Jump         -compare-114-join         
        Label        -compare-114-false        
        PushI        0                         
        Jump         -compare-114-join         
        Label        -compare-114-join         
        PushI        1                         
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
        Label        -compare-118-start        
        Label        -compare-117-start        
        PushI        1                         
        PushI        1                         
        Label        -compare-117-sub          
        Subtract                               
        JumpFalse    -compare-117-false        
        Label        -compare-117-true         
        PushI        1                         
        Jump         -compare-117-join         
        Label        -compare-117-false        
        PushI        0                         
        Jump         -compare-117-join         
        Label        -compare-117-join         
        PushI        0                         
        Label        -compare-118-sub          
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-118-equate       
        Pop                                    
        Jump         -compare-118-false        
        Label        -compare-118-equate       
        Pop                                    
        Label        -compare-118-true         
        PushI        1                         
        Jump         -compare-118-join         
        Label        -compare-118-false        
        PushI        0                         
        Jump         -compare-118-join         
        Label        -compare-118-join         
        PushI        1                         
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
        Label        -compare-123-start        
        Label        -compare-122-start        
        Label        -compare-121-start        
        PushI        0                         
        PushI        0                         
        Label        -compare-121-sub          
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-121-equate       
        Pop                                    
        Jump         -compare-121-false        
        Label        -compare-121-equate       
        Pop                                    
        Label        -compare-121-true         
        PushI        1                         
        Jump         -compare-121-join         
        Label        -compare-121-false        
        PushI        0                         
        Jump         -compare-121-join         
        Label        -compare-121-join         
        PushI        1                         
        Label        -compare-122-sub          
        Subtract                               
        JumpFalse    -compare-122-false        
        Label        -compare-122-true         
        PushI        1                         
        Jump         -compare-122-join         
        Label        -compare-122-false        
        PushI        0                         
        Jump         -compare-122-join         
        Label        -compare-122-join         
        PushI        1                         
        Label        -compare-123-sub          
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-123-equate       
        Pop                                    
        Jump         -compare-123-false        
        Label        -compare-123-equate       
        Pop                                    
        Label        -compare-123-true         
        PushI        1                         
        Jump         -compare-123-join         
        Label        -compare-123-false        
        PushI        0                         
        Jump         -compare-123-join         
        Label        -compare-123-join         
        JumpTrue     -print-boolean-124-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-124-join   
        Label        -print-boolean-124-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-124-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-127-start        
        Label        -compare-126-start        
        Label        -compare-125-start        
        PushI        0                         
        PushI        0                         
        Label        -compare-125-sub          
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-125-equate       
        Pop                                    
        Jump         -compare-125-false        
        Label        -compare-125-equate       
        Pop                                    
        Label        -compare-125-true         
        PushI        1                         
        Jump         -compare-125-join         
        Label        -compare-125-false        
        PushI        0                         
        Jump         -compare-125-join         
        Label        -compare-125-join         
        PushI        1                         
        Label        -compare-126-sub          
        Subtract                               
        JumpFalse    -compare-126-false        
        Label        -compare-126-true         
        PushI        1                         
        Jump         -compare-126-join         
        Label        -compare-126-false        
        PushI        0                         
        Jump         -compare-126-join         
        Label        -compare-126-join         
        PushI        1                         
        Label        -compare-127-sub          
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-127-equate       
        Pop                                    
        Jump         -compare-127-false        
        Label        -compare-127-equate       
        Pop                                    
        Label        -compare-127-true         
        PushI        1                         
        Jump         -compare-127-join         
        Label        -compare-127-false        
        PushI        0                         
        Jump         -compare-127-join         
        Label        -compare-127-join         
        JumpTrue     -print-boolean-128-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-128-join   
        Label        -print-boolean-128-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-128-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-131-start        
        Label        -compare-130-start        
        Label        -compare-129-start        
        PushI        1                         
        PushI        1                         
        Label        -compare-129-sub          
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-129-equate       
        Pop                                    
        Jump         -compare-129-false        
        Label        -compare-129-equate       
        Pop                                    
        Label        -compare-129-true         
        PushI        1                         
        Jump         -compare-129-join         
        Label        -compare-129-false        
        PushI        0                         
        Jump         -compare-129-join         
        Label        -compare-129-join         
        PushI        0                         
        Label        -compare-130-sub          
        Subtract                               
        JumpFalse    -compare-130-false        
        Label        -compare-130-true         
        PushI        1                         
        Jump         -compare-130-join         
        Label        -compare-130-false        
        PushI        0                         
        Jump         -compare-130-join         
        Label        -compare-130-join         
        PushI        1                         
        Label        -compare-131-sub          
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-131-equate       
        Pop                                    
        Jump         -compare-131-false        
        Label        -compare-131-equate       
        Pop                                    
        Label        -compare-131-true         
        PushI        1                         
        Jump         -compare-131-join         
        Label        -compare-131-false        
        PushI        0                         
        Jump         -compare-131-join         
        Label        -compare-131-join         
        JumpTrue     -print-boolean-132-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-132-join   
        Label        -print-boolean-132-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-132-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-135-start        
        Label        -compare-134-start        
        Label        -compare-133-start        
        PushI        0                         
        PushI        1                         
        Label        -compare-133-sub          
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-133-equate       
        Pop                                    
        Jump         -compare-133-false        
        Label        -compare-133-equate       
        Pop                                    
        Label        -compare-133-true         
        PushI        1                         
        Jump         -compare-133-join         
        Label        -compare-133-false        
        PushI        0                         
        Jump         -compare-133-join         
        Label        -compare-133-join         
        PushI        0                         
        Label        -compare-134-sub          
        Subtract                               
        JumpFalse    -compare-134-false        
        Label        -compare-134-true         
        PushI        1                         
        Jump         -compare-134-join         
        Label        -compare-134-false        
        PushI        0                         
        Jump         -compare-134-join         
        Label        -compare-134-join         
        PushI        1                         
        Label        -compare-135-sub          
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-135-equate       
        Pop                                    
        Jump         -compare-135-false        
        Label        -compare-135-equate       
        Pop                                    
        Label        -compare-135-true         
        PushI        1                         
        Jump         -compare-135-join         
        Label        -compare-135-false        
        PushI        0                         
        Jump         -compare-135-join         
        Label        -compare-135-join         
        JumpTrue     -print-boolean-136-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-136-join   
        Label        -print-boolean-136-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-136-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-139-start        
        Label        -compare-138-start        
        Label        -compare-137-start        
        PushI        0                         
        PushI        0                         
        Label        -compare-137-sub          
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-137-equate       
        Pop                                    
        Jump         -compare-137-false        
        Label        -compare-137-equate       
        Pop                                    
        Label        -compare-137-true         
        PushI        1                         
        Jump         -compare-137-join         
        Label        -compare-137-false        
        PushI        0                         
        Jump         -compare-137-join         
        Label        -compare-137-join         
        PushI        0                         
        Label        -compare-138-sub          
        Subtract                               
        JumpFalse    -compare-138-false        
        Label        -compare-138-true         
        PushI        1                         
        Jump         -compare-138-join         
        Label        -compare-138-false        
        PushI        0                         
        Jump         -compare-138-join         
        Label        -compare-138-join         
        PushI        1                         
        Label        -compare-139-sub          
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-139-equate       
        Pop                                    
        Jump         -compare-139-false        
        Label        -compare-139-equate       
        Pop                                    
        Label        -compare-139-true         
        PushI        1                         
        Jump         -compare-139-join         
        Label        -compare-139-false        
        PushI        0                         
        Jump         -compare-139-join         
        Label        -compare-139-join         
        JumpTrue     -print-boolean-140-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-140-join   
        Label        -print-boolean-140-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-140-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-143-start        
        Label        -compare-142-start        
        Label        -compare-141-start        
        PushI        1                         
        PushI        1                         
        Label        -compare-141-sub          
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-141-equate       
        Pop                                    
        Jump         -compare-141-false        
        Label        -compare-141-equate       
        Pop                                    
        Label        -compare-141-true         
        PushI        1                         
        Jump         -compare-141-join         
        Label        -compare-141-false        
        PushI        0                         
        Jump         -compare-141-join         
        Label        -compare-141-join         
        PushI        0                         
        Label        -compare-142-sub          
        Subtract                               
        JumpFalse    -compare-142-false        
        Label        -compare-142-true         
        PushI        1                         
        Jump         -compare-142-join         
        Label        -compare-142-false        
        PushI        0                         
        Jump         -compare-142-join         
        Label        -compare-142-join         
        PushI        1                         
        Label        -compare-143-sub          
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-143-equate       
        Pop                                    
        Jump         -compare-143-false        
        Label        -compare-143-equate       
        Pop                                    
        Label        -compare-143-true         
        PushI        1                         
        Jump         -compare-143-join         
        Label        -compare-143-false        
        PushI        0                         
        Jump         -compare-143-join         
        Label        -compare-143-join         
        JumpTrue     -print-boolean-144-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-144-join   
        Label        -print-boolean-144-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-144-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-147-start        
        Label        -compare-146-start        
        Label        -compare-145-start        
        PushI        1                         
        PushI        1                         
        Label        -compare-145-sub          
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-145-equate       
        Pop                                    
        Jump         -compare-145-false        
        Label        -compare-145-equate       
        Pop                                    
        Label        -compare-145-true         
        PushI        1                         
        Jump         -compare-145-join         
        Label        -compare-145-false        
        PushI        0                         
        Jump         -compare-145-join         
        Label        -compare-145-join         
        PushI        0                         
        Label        -compare-146-sub          
        Subtract                               
        JumpFalse    -compare-146-false        
        Label        -compare-146-true         
        PushI        1                         
        Jump         -compare-146-join         
        Label        -compare-146-false        
        PushI        0                         
        Jump         -compare-146-join         
        Label        -compare-146-join         
        PushI        0                         
        Label        -compare-147-sub          
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-147-equate       
        Pop                                    
        Jump         -compare-147-false        
        Label        -compare-147-equate       
        Pop                                    
        Label        -compare-147-true         
        PushI        1                         
        Jump         -compare-147-join         
        Label        -compare-147-false        
        PushI        0                         
        Jump         -compare-147-join         
        Label        -compare-147-join         
        JumpTrue     -print-boolean-148-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-148-join   
        Label        -print-boolean-148-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-148-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-151-start        
        Label        -compare-150-start        
        Label        -compare-149-start        
        PushI        1                         
        PushI        1                         
        Label        -compare-149-sub          
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-149-equate       
        Pop                                    
        Jump         -compare-149-false        
        Label        -compare-149-equate       
        Pop                                    
        Label        -compare-149-true         
        PushI        1                         
        Jump         -compare-149-join         
        Label        -compare-149-false        
        PushI        0                         
        Jump         -compare-149-join         
        Label        -compare-149-join         
        PushI        0                         
        Label        -compare-150-sub          
        Subtract                               
        JumpFalse    -compare-150-false        
        Label        -compare-150-true         
        PushI        1                         
        Jump         -compare-150-join         
        Label        -compare-150-false        
        PushI        0                         
        Jump         -compare-150-join         
        Label        -compare-150-join         
        PushI        1                         
        Label        -compare-151-sub          
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-151-equate       
        Pop                                    
        Jump         -compare-151-false        
        Label        -compare-151-equate       
        Pop                                    
        Label        -compare-151-true         
        PushI        1                         
        Jump         -compare-151-join         
        Label        -compare-151-false        
        PushI        0                         
        Jump         -compare-151-join         
        Label        -compare-151-join         
        JumpTrue     -print-boolean-152-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-152-join   
        Label        -print-boolean-152-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-152-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-155-start        
        Label        -compare-154-start        
        Label        -compare-153-start        
        PushI        1                         
        PushI        0                         
        Label        -compare-153-sub          
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-153-equate       
        Pop                                    
        Jump         -compare-153-false        
        Label        -compare-153-equate       
        Pop                                    
        Label        -compare-153-true         
        PushI        1                         
        Jump         -compare-153-join         
        Label        -compare-153-false        
        PushI        0                         
        Jump         -compare-153-join         
        Label        -compare-153-join         
        PushI        1                         
        Label        -compare-154-sub          
        Subtract                               
        JumpFalse    -compare-154-false        
        Label        -compare-154-true         
        PushI        1                         
        Jump         -compare-154-join         
        Label        -compare-154-false        
        PushI        0                         
        Jump         -compare-154-join         
        Label        -compare-154-join         
        PushI        1                         
        Label        -compare-155-sub          
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-155-equate       
        Pop                                    
        Jump         -compare-155-false        
        Label        -compare-155-equate       
        Pop                                    
        Label        -compare-155-true         
        PushI        1                         
        Jump         -compare-155-join         
        Label        -compare-155-false        
        PushI        0                         
        Jump         -compare-155-join         
        Label        -compare-155-join         
        JumpTrue     -print-boolean-156-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-156-join   
        Label        -print-boolean-156-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-156-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-159-start        
        Label        -compare-158-start        
        Label        -compare-157-start        
        PushI        0                         
        PushI        1                         
        Label        -compare-157-sub          
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-157-equate       
        Pop                                    
        Jump         -compare-157-false        
        Label        -compare-157-equate       
        Pop                                    
        Label        -compare-157-true         
        PushI        1                         
        Jump         -compare-157-join         
        Label        -compare-157-false        
        PushI        0                         
        Jump         -compare-157-join         
        Label        -compare-157-join         
        PushI        0                         
        Label        -compare-158-sub          
        Subtract                               
        JumpFalse    -compare-158-false        
        Label        -compare-158-true         
        PushI        1                         
        Jump         -compare-158-join         
        Label        -compare-158-false        
        PushI        0                         
        Jump         -compare-158-join         
        Label        -compare-158-join         
        PushI        1                         
        Label        -compare-159-sub          
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-159-equate       
        Pop                                    
        Jump         -compare-159-false        
        Label        -compare-159-equate       
        Pop                                    
        Label        -compare-159-true         
        PushI        1                         
        Jump         -compare-159-join         
        Label        -compare-159-false        
        PushI        0                         
        Jump         -compare-159-join         
        Label        -compare-159-join         
        JumpTrue     -print-boolean-160-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-160-join   
        Label        -print-boolean-160-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-160-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-163-start        
        Label        -compare-162-start        
        Label        -compare-161-start        
        PushI        1                         
        PushI        0                         
        Label        -compare-161-sub          
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-161-equate       
        Pop                                    
        Jump         -compare-161-false        
        Label        -compare-161-equate       
        Pop                                    
        Label        -compare-161-true         
        PushI        1                         
        Jump         -compare-161-join         
        Label        -compare-161-false        
        PushI        0                         
        Jump         -compare-161-join         
        Label        -compare-161-join         
        PushI        0                         
        Label        -compare-162-sub          
        Subtract                               
        JumpFalse    -compare-162-false        
        Label        -compare-162-true         
        PushI        1                         
        Jump         -compare-162-join         
        Label        -compare-162-false        
        PushI        0                         
        Jump         -compare-162-join         
        Label        -compare-162-join         
        PushI        1                         
        Label        -compare-163-sub          
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-163-equate       
        Pop                                    
        Jump         -compare-163-false        
        Label        -compare-163-equate       
        Pop                                    
        Label        -compare-163-true         
        PushI        1                         
        Jump         -compare-163-join         
        Label        -compare-163-false        
        PushI        0                         
        Jump         -compare-163-join         
        Label        -compare-163-join         
        JumpTrue     -print-boolean-164-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-164-join   
        Label        -print-boolean-164-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-164-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-167-start        
        Label        -compare-166-start        
        Label        -compare-165-start        
        PushI        0                         
        PushI        1                         
        Label        -compare-165-sub          
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-165-equate       
        Pop                                    
        Jump         -compare-165-false        
        Label        -compare-165-equate       
        Pop                                    
        Label        -compare-165-true         
        PushI        1                         
        Jump         -compare-165-join         
        Label        -compare-165-false        
        PushI        0                         
        Jump         -compare-165-join         
        Label        -compare-165-join         
        PushI        0                         
        Label        -compare-166-sub          
        Subtract                               
        JumpFalse    -compare-166-false        
        Label        -compare-166-true         
        PushI        1                         
        Jump         -compare-166-join         
        Label        -compare-166-false        
        PushI        0                         
        Jump         -compare-166-join         
        Label        -compare-166-join         
        PushI        0                         
        Label        -compare-167-sub          
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-167-equate       
        Pop                                    
        Jump         -compare-167-false        
        Label        -compare-167-equate       
        Pop                                    
        Label        -compare-167-true         
        PushI        1                         
        Jump         -compare-167-join         
        Label        -compare-167-false        
        PushI        0                         
        Jump         -compare-167-join         
        Label        -compare-167-join         
        JumpTrue     -print-boolean-168-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-168-join   
        Label        -print-boolean-168-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-168-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushI        10                        
        PushD        $print-format-char        
        Printf                                 
        Halt                                   