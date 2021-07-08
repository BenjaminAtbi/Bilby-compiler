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
        DataZ        16                        
        Label        $$main                    
        PushD        $global-memory-block      
        PushI        0                         
        Add                                    %% v
        DLabel       -string-constant-1-       
        DataI        3                         
        DataI        9                         
        DataI        3                         
        DataC        110                       %% "now"
        DataC        111                       
        DataC        119                       
        DataC        0                         
        PushD        -string-constant-1-       
        StoreI                                 
        PushD        $global-memory-block      
        PushI        4                         
        Add                                    %% w
        DLabel       -string-constant-2-       
        DataI        3                         
        DataI        9                         
        DataI        6                         
        DataC        105                       %% "is the"
        DataC        115                       
        DataC        32                        
        DataC        116                       
        DataC        104                       
        DataC        101                       
        DataC        0                         
        PushD        -string-constant-2-       
        StoreI                                 
        PushD        $global-memory-block      
        PushI        8                         
        Add                                    %% x
        PushD        $global-memory-block      
        PushI        0                         
        Add                                    %% v
        LoadI                                  
        StoreI                                 
        PushD        $global-memory-block      
        PushI        12                        
        Add                                    %% y
        DLabel       -string-constant-3-       
        DataI        3                         
        DataI        9                         
        DataI        3                         
        DataC        110                       %% "now"
        DataC        111                       
        DataC        119                       
        DataC        0                         
        PushD        -string-constant-3-       
        StoreI                                 
        Label        -compare-4-start          
        PushD        $global-memory-block      
        PushI        0                         
        Add                                    %% v
        LoadI                                  
        PushD        $global-memory-block      
        PushI        4                         
        Add                                    %% w
        LoadI                                  
        Label        -compare-4-sub            
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-4-equate         
        Pop                                    
        Jump         -compare-4-false          
        Label        -compare-4-equate         
        Pop                                    
        Label        -compare-4-true           
        PushI        1                         
        Jump         -compare-4-join           
        Label        -compare-4-false          
        PushI        0                         
        Jump         -compare-4-join           
        Label        -compare-4-join           
        JumpTrue     -print-boolean-7-true     
        PushD        $boolean-false-string     
        Jump         -print-boolean-7-join     
        Label        -print-boolean-7-true     
        PushD        $boolean-true-string      
        Label        -print-boolean-7-join     
        PushD        $print-format-boolean     
        Printf                                 
        PushI        32                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-5-start          
        PushD        $global-memory-block      
        PushI        0                         
        Add                                    %% v
        LoadI                                  
        PushD        $global-memory-block      
        PushI        8                         
        Add                                    %% x
        LoadI                                  
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
        JumpTrue     -print-boolean-8-true     
        PushD        $boolean-false-string     
        Jump         -print-boolean-8-join     
        Label        -print-boolean-8-true     
        PushD        $boolean-true-string      
        Label        -print-boolean-8-join     
        PushD        $print-format-boolean     
        Printf                                 
        PushI        32                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-6-start          
        PushD        $global-memory-block      
        PushI        0                         
        Add                                    %% v
        LoadI                                  
        PushD        $global-memory-block      
        PushI        12                        
        Add                                    %% y
        LoadI                                  
        Label        -compare-6-sub            
        Subtract                               
        Duplicate                              
        JumpFalse    -compare-6-equate         
        Pop                                    
        Jump         -compare-6-false          
        Label        -compare-6-equate         
        Pop                                    
        Label        -compare-6-true           
        PushI        1                         
        Jump         -compare-6-join           
        Label        -compare-6-false          
        PushI        0                         
        Jump         -compare-6-join           
        Label        -compare-6-join           
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
        Label        -compare-10-start         
        PushD        $global-memory-block      
        PushI        0                         
        Add                                    %% v
        LoadI                                  
        PushD        $global-memory-block      
        PushI        4                         
        Add                                    %% w
        LoadI                                  
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
        JumpTrue     -print-boolean-13-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-13-join    
        Label        -print-boolean-13-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-13-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        32                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-11-start         
        PushD        $global-memory-block      
        PushI        0                         
        Add                                    %% v
        LoadI                                  
        PushD        $global-memory-block      
        PushI        8                         
        Add                                    %% x
        LoadI                                  
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
        JumpTrue     -print-boolean-14-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-14-join    
        Label        -print-boolean-14-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-14-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushI        32                        
        PushD        $print-format-char        
        Printf                                 
        Label        -compare-12-start         
        PushD        $global-memory-block      
        PushI        0                         
        Add                                    %% v
        LoadI                                  
        PushD        $global-memory-block      
        PushI        12                        
        Add                                    %% y
        LoadI                                  
        Label        -compare-12-sub           
        Subtract                               
        JumpFalse    -compare-12-false         
        Label        -compare-12-true          
        PushI        1                         
        Jump         -compare-12-join          
        Label        -compare-12-false         
        PushI        0                         
        Jump         -compare-12-join          
        Label        -compare-12-join          
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
        Halt                                   
