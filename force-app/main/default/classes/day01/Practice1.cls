public class Practice1 {
    
    // when we call it , Practice.runCode() ; 
    
    public static void runCode(){
       

        
       	 System.debug('Running whats inside');
        
        // This is how we comment 

        System.debug('Hello World'); 
        
        // String 
        
        String s1 = 'abc' ; 
        
        // Integer , Long , Double Decimal 
        
        // Date DateTime , Time 
        
        // ID  
        
        ID accountId1 = '0018c00002LRFHdAAP'; 
        
        ID accountId2 = '0018c00002LRFHd'; 
		
        
        // both of them represent same Id , one case senstive one case insenstive 
        // it will print same thing 
        System.debug('account id 1 ' + accountId1);  
        System.debug('account id 2 ' + accountId2);
        
        
        
        // Conditional Statements : 
        
        Integer num = 100 ; 
        
        if(  num > 60  ){
            System.debug('Pass');
        }else{
            System.debug('Fail');
        }
        
        
        // 
        if (num > 90 && num<=100) {
            
            System.debug('A');
            
        }else if (num > 80 && num<=90){
            
            System.debug('B') ; 
            
        }else if (num > 70 && num<=80){
            
            System.debug('C');
            
        }else if (num > 60 && num<=70){
            
            System.debug('D') ; 
            
        }else {
                    
            System.debug('You have failed ') ; 
            
        }
        
        
        // Equality   ==
        
        Long salary = 1500000 ; 
        
        // check if the salary is 1500000
        Boolean isExpectedSalary =   salary==1500000 ; 
        
        System.debug(isExpectedSalary) ;   // true
        
        
        // String comparision with == or .equal 
        String str1 = 'Hello' ; 
        String str2 = 'Hello' ; 
        
        System.debug('s1 == s2 ???  '  +  (str1==str2)     );
        
        
        /// switch statement 
        /*
        switch on expression {
            when value1 {		// when block 1
                // code block 1
            }	
            when value2 {		// when block 2
                // code block 2
            }
            when value3 {		// when block 3
                // code block 3
            }
            when else {		  // default block, optional
                // code block 4
            }
        }
        */
        Integer seasonNumber = 31 ; 
        
        switch on seasonNumber {
            
            when 1 {
                System.debug('Spring');
            }
            when 2 {
                System.debug('Summer');
            }
            when 3 {
                System.debug('Fall');
            }
            when 4 {
                System.debug('Winter');
            }
            when else{
                System.debug('Invalid Number');
            }
            
        }
        
        String season = 'Summer' ; 
        
        switch on season {
            
            when 'Spring' {
                System.debug('season code is 1');
            }
			when 'Summer' {
                System.debug('season code is 2');
            }
			when 'Fall' {
                System.debug('season code is 3');
            }
			when 'Winter' {
                System.debug('season code is 4');
            }
            when else {
                System.debug('Invalid season was entered');
            }
			         
        
        }
        

        
    }
    

}