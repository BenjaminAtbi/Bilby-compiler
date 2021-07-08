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
        Label        -convert-1-start          
        PushI        69                        
        JumpFalse    -convert-1-false          
        PushI        1                         
        Jump         -convert-1-join           
        Label        -convert-1-false          
        PushI        0                         
        Label        -convert-1-join           
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
        Label        -convert-4-start          
        PushI        66                        
        JumpFalse    -convert-4-false          
        PushI        1                         
        Jump         -convert-4-join           
        Label        -convert-4-false          
        PushI        0                         
        Label        -convert-4-join           
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
        Label        -convert-7-start          
        PushI        24                        
        JumpFalse    -convert-7-false          
        PushI        1                         
        Jump         -convert-7-join           
        Label        -convert-7-false          
        PushI        0                         
        Label        -convert-7-join           
        PushI        0                         
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
        Label        -convert-10-start         
        PushI        88                        
        JumpFalse    -convert-10-false         
        PushI        1                         
        Jump         -convert-10-join          
        Label        -convert-10-false         
        PushI        0                         
        Label        -convert-10-join          
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
        Label        -convert-13-start         
        PushI        80                        
        JumpFalse    -convert-13-false         
        PushI        1                         
        Jump         -convert-13-join          
        Label        -convert-13-false         
        PushI        0                         
        Label        -convert-13-join          
        PushI        0                         
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
        Label        -convert-16-start         
        PushI        98                        
        JumpFalse    -convert-16-false         
        PushI        1                         
        Jump         -convert-16-join          
        Label        -convert-16-false         
        PushI        0                         
        Label        -convert-16-join          
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
        Label        -convert-19-start         
        PushI        95                        
        JumpFalse    -convert-19-false         
        PushI        1                         
        Jump         -convert-19-join          
        Label        -convert-19-false         
        PushI        0                         
        Label        -convert-19-join          
        PushI        1                         
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
        Label        -convert-22-start         
        PushI        57                        
        JumpFalse    -convert-22-false         
        PushI        1                         
        Jump         -convert-22-join          
        Label        -convert-22-false         
        PushI        0                         
        Label        -convert-22-join          
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
        Label        -convert-25-start         
        PushI        59                        
        JumpFalse    -convert-25-false         
        PushI        1                         
        Jump         -convert-25-join          
        Label        -convert-25-false         
        PushI        0                         
        Label        -convert-25-join          
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
        Label        -convert-28-start         
        PushI        12                        
        JumpFalse    -convert-28-false         
        PushI        1                         
        Jump         -convert-28-join          
        Label        -convert-28-false         
        PushI        0                         
        Label        -convert-28-join          
        PushI        1                         
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
        Label        -convert-31-start         
        PushI        28                        
        JumpFalse    -convert-31-false         
        PushI        1                         
        Jump         -convert-31-join          
        Label        -convert-31-false         
        PushI        0                         
        Label        -convert-31-join          
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
        Label        -convert-34-start         
        PushI        33                        
        JumpFalse    -convert-34-false         
        PushI        1                         
        Jump         -convert-34-join          
        Label        -convert-34-false         
        PushI        0                         
        Label        -convert-34-join          
        PushI        1                         
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
        PushI        1                         
        Label        -convert-37-start         
        PushI        5                         
        JumpFalse    -convert-37-false         
        PushI        1                         
        Jump         -convert-37-join          
        Label        -convert-37-false         
        PushI        0                         
        Label        -convert-37-join          
        Label        -compare-38-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-38-equate        
        Pop                                    
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
        PushI        1                         
        Label        -convert-40-start         
        PushI        23                        
        JumpFalse    -convert-40-false         
        PushI        1                         
        Jump         -convert-40-join          
        Label        -convert-40-false         
        PushI        0                         
        Label        -convert-40-join          
        Label        -compare-41-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-41-equate        
        Pop                                    
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
        PushI        1                         
        Label        -convert-43-start         
        PushI        1                         
        JumpFalse    -convert-43-false         
        PushI        1                         
        Jump         -convert-43-join          
        Label        -convert-43-false         
        PushI        0                         
        Label        -convert-43-join          
        Label        -compare-44-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-44-equate        
        Pop                                    
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
        PushI        1                         
        Label        -convert-46-start         
        PushI        95                        
        JumpFalse    -convert-46-false         
        PushI        1                         
        Jump         -convert-46-join          
        Label        -convert-46-false         
        PushI        0                         
        Label        -convert-46-join          
        Label        -compare-47-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-47-equate        
        Pop                                    
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
        PushI        0                         
        Label        -convert-49-start         
        PushI        71                        
        JumpFalse    -convert-49-false         
        PushI        1                         
        Jump         -convert-49-join          
        Label        -convert-49-false         
        PushI        0                         
        Label        -convert-49-join          
        Label        -compare-50-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-50-equate        
        Pop                                    
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
        PushI        0                         
        Label        -convert-52-start         
        PushI        57                        
        JumpFalse    -convert-52-false         
        PushI        1                         
        Jump         -convert-52-join          
        Label        -convert-52-false         
        PushI        0                         
        Label        -convert-52-join          
        Label        -compare-53-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-53-equate        
        Pop                                    
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
        PushI        1                         
        Label        -convert-55-start         
        PushI        24                        
        JumpFalse    -convert-55-false         
        PushI        1                         
        Jump         -convert-55-join          
        Label        -convert-55-false         
        PushI        0                         
        Label        -convert-55-join          
        Label        -compare-56-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-56-equate        
        Pop                                    
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
        PushI        1                         
        Label        -convert-58-start         
        PushI        25                        
        JumpFalse    -convert-58-false         
        PushI        1                         
        Jump         -convert-58-join          
        Label        -convert-58-false         
        PushI        0                         
        Label        -convert-58-join          
        Label        -compare-59-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-59-equate        
        Pop                                    
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
        PushI        1                         
        Label        -convert-61-start         
        PushI        14                        
        JumpFalse    -convert-61-false         
        PushI        1                         
        Jump         -convert-61-join          
        Label        -convert-61-false         
        PushI        0                         
        Label        -convert-61-join          
        Label        -compare-62-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-62-equate        
        Pop                                    
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
        PushI        1                         
        Label        -convert-64-start         
        PushI        3                         
        JumpFalse    -convert-64-false         
        PushI        1                         
        Jump         -convert-64-join          
        Label        -convert-64-false         
        PushI        0                         
        Label        -convert-64-join          
        Label        -compare-65-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-65-equate        
        Pop                                    
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
        PushI        1                         
        Label        -convert-67-start         
        PushI        70                        
        JumpFalse    -convert-67-false         
        PushI        1                         
        Jump         -convert-67-join          
        Label        -convert-67-false         
        PushI        0                         
        Label        -convert-67-join          
        Label        -compare-68-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-68-equate        
        Pop                                    
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
        PushI        1                         
        Label        -convert-70-start         
        PushI        37                        
        JumpFalse    -convert-70-false         
        PushI        1                         
        Jump         -convert-70-join          
        Label        -convert-70-false         
        PushI        0                         
        Label        -convert-70-join          
        Label        -compare-71-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-71-equate        
        Pop                                    
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
        Label        -convert-73-start         
        PushI        97                        
        JumpFalse    -convert-73-false         
        PushI        1                         
        Jump         -convert-73-join          
        Label        -convert-73-false         
        PushI        0                         
        Label        -convert-73-join          
        Label        -convert-74-start         
        PushI        71                        
        JumpFalse    -convert-74-false         
        PushI        1                         
        Jump         -convert-74-join          
        Label        -convert-74-false         
        PushI        0                         
        Label        -convert-74-join          
        Label        -compare-75-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-75-equate        
        Pop                                    
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
        Label        -convert-77-start         
        PushI        21                        
        JumpFalse    -convert-77-false         
        PushI        1                         
        Jump         -convert-77-join          
        Label        -convert-77-false         
        PushI        0                         
        Label        -convert-77-join          
        Label        -convert-78-start         
        PushI        7                         
        JumpFalse    -convert-78-false         
        PushI        1                         
        Jump         -convert-78-join          
        Label        -convert-78-false         
        PushI        0                         
        Label        -convert-78-join          
        Label        -compare-79-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-79-equate        
        Pop                                    
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
        Label        -convert-81-start         
        PushI        42                        
        JumpFalse    -convert-81-false         
        PushI        1                         
        Jump         -convert-81-join          
        Label        -convert-81-false         
        PushI        0                         
        Label        -convert-81-join          
        Label        -convert-82-start         
        PushI        66                        
        JumpFalse    -convert-82-false         
        PushI        1                         
        Jump         -convert-82-join          
        Label        -convert-82-false         
        PushI        0                         
        Label        -convert-82-join          
        Label        -compare-83-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-83-equate        
        Pop                                    
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
        Label        -convert-85-start         
        PushI        29                        
        JumpFalse    -convert-85-false         
        PushI        1                         
        Jump         -convert-85-join          
        Label        -convert-85-false         
        PushI        0                         
        Label        -convert-85-join          
        Label        -convert-86-start         
        PushI        52                        
        JumpFalse    -convert-86-false         
        PushI        1                         
        Jump         -convert-86-join          
        Label        -convert-86-false         
        PushI        0                         
        Label        -convert-86-join          
        Label        -compare-87-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-87-equate        
        Pop                                    
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
        Label        -convert-89-start         
        PushI        92                        
        JumpFalse    -convert-89-false         
        PushI        1                         
        Jump         -convert-89-join          
        Label        -convert-89-false         
        PushI        0                         
        Label        -convert-89-join          
        Label        -convert-90-start         
        PushI        83                        
        JumpFalse    -convert-90-false         
        PushI        1                         
        Jump         -convert-90-join          
        Label        -convert-90-false         
        PushI        0                         
        Label        -convert-90-join          
        Label        -compare-91-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-91-equate        
        Pop                                    
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
        Label        -convert-93-start         
        PushI        45                        
        JumpFalse    -convert-93-false         
        PushI        1                         
        Jump         -convert-93-join          
        Label        -convert-93-false         
        PushI        0                         
        Label        -convert-93-join          
        Label        -convert-94-start         
        PushI        32                        
        JumpFalse    -convert-94-false         
        PushI        1                         
        Jump         -convert-94-join          
        Label        -convert-94-false         
        PushI        0                         
        Label        -convert-94-join          
        Label        -compare-95-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-95-equate        
        Pop                                    
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
        Label        -convert-97-start         
        PushI        42                        
        JumpFalse    -convert-97-false         
        PushI        1                         
        Jump         -convert-97-join          
        Label        -convert-97-false         
        PushI        0                         
        Label        -convert-97-join          
        Label        -convert-98-start         
        PushI        15                        
        JumpFalse    -convert-98-false         
        PushI        1                         
        Jump         -convert-98-join          
        Label        -convert-98-false         
        PushI        0                         
        Label        -convert-98-join          
        Label        -compare-99-sub           
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-99-equate        
        Pop                                    
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
        Label        -convert-101-start        
        PushI        1                         
        JumpFalse    -convert-101-false        
        PushI        1                         
        Jump         -convert-101-join         
        Label        -convert-101-false        
        PushI        0                         
        Label        -convert-101-join         
        Label        -convert-102-start        
        PushI        85                        
        JumpFalse    -convert-102-false        
        PushI        1                         
        Jump         -convert-102-join         
        Label        -convert-102-false        
        PushI        0                         
        Label        -convert-102-join         
        Label        -compare-103-sub          
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-103-equate       
        Pop                                    
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
        Label        -convert-105-start        
        PushI        37                        
        JumpFalse    -convert-105-false        
        PushI        1                         
        Jump         -convert-105-join         
        Label        -convert-105-false        
        PushI        0                         
        Label        -convert-105-join         
        Label        -convert-106-start        
        PushI        96                        
        JumpFalse    -convert-106-false        
        PushI        1                         
        Jump         -convert-106-join         
        Label        -convert-106-false        
        PushI        0                         
        Label        -convert-106-join         
        Label        -compare-107-sub          
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-107-equate       
        Pop                                    
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
        Label        -convert-109-start        
        PushI        15                        
        JumpFalse    -convert-109-false        
        PushI        1                         
        Jump         -convert-109-join         
        Label        -convert-109-false        
        PushI        0                         
        Label        -convert-109-join         
        Label        -convert-110-start        
        PushI        38                        
        JumpFalse    -convert-110-false        
        PushI        1                         
        Jump         -convert-110-join         
        Label        -convert-110-false        
        PushI        0                         
        Label        -convert-110-join         
        Label        -compare-111-sub          
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-111-equate       
        Pop                                    
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
        Label        -convert-113-start        
        PushI        29                        
        JumpFalse    -convert-113-false        
        PushI        1                         
        Jump         -convert-113-join         
        Label        -convert-113-false        
        PushI        0                         
        Label        -convert-113-join         
        Label        -convert-114-start        
        PushI        8                         
        JumpFalse    -convert-114-false        
        PushI        1                         
        Jump         -convert-114-join         
        Label        -convert-114-false        
        PushI        0                         
        Label        -convert-114-join         
        Label        -compare-115-sub          
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-115-equate       
        Pop                                    
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
        Label        -convert-117-start        
        PushI        65                        
        JumpFalse    -convert-117-false        
        PushI        1                         
        Jump         -convert-117-join         
        Label        -convert-117-false        
        PushI        0                         
        Label        -convert-117-join         
        Label        -convert-118-start        
        PushI        82                        
        JumpFalse    -convert-118-false        
        PushI        1                         
        Jump         -convert-118-join         
        Label        -convert-118-false        
        PushI        0                         
        Label        -convert-118-join         
        Label        -compare-119-sub          
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-119-equate       
        Pop                                    
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
