public class Day3_List_LoopPractice_String {

    
    public static void runList(){
        
        
        // create list of String with elements 
        List<String> fruits =  new List<String>{
                                                'Apple','Banana','Orange','Melon',
                                                'Mango','Blueberry','Rasberry',
                                                'Cherries','Passionfruit','Kiwi',
                                                 'Pear','Peach','Pineapple','Apricot'
                                            }; 
        
        // loop throught the list and print all in uppercase 
        //   print character count for all of them 
        //   check if it contains letter a or A 
         for(String eachFruit : fruits  ){
         	
             //System.debug('eachFruit.toUpperCase() : ' + eachFruit.toUpperCase() );
             //System.debug(eachFruit + ' Character count ' + eachFruit.length() );
         	 System.debug(eachFruit + ' has letter a or A => ' 
                          	+ eachFruit.containsIgnoreCase('A') );
             
         }
        
		        
        // store the lenth of each element into new List<Integer>
        List<Integer> lengthList = new List<Integer>(); 
        
        for( String eachFruit : fruits  ){
            
            lengthList.add(   eachFruit.length()   ); 
            
        }
        System.debug('lengthList ' + lengthList);
        
        // store the elements if it contains a or A in new List<String>
        List<String> aList = new List<String> () ; 
        
         for( String eachFruit : fruits  ){
             
             if( eachFruit.containsIgnoreCase('a')   ){
                 aList.add( eachFruit  );
             }

         }            
         System.debug('aList ' + aList);
    
    
    
    }
        
        
        
        
    
    
    public static void run1(){
        
        String s1 = 'Hello World' ; 
        
        // String methods 
        //   length()  // get the char count of a String 
        System.debug('Length of s1 String is ' +  s1.length() );
        
        // equals(str)  ,  equalsIgnoreCase(str)
        System.debug(' equals method '  + s1.equals('Hello World')    ) ; 
        System.debug(' equalsIgnoreCase method '  +  s1.equalsIgnoreCase('HELLO WORLD'));
        
        // toUpperCase toLowerCase 
        System.debug(' s1.toUpperCase() ' +  s1.toUpperCase() ); 
        System.debug(' s1.toLowerCase() ' +  s1.toLowerCase() );

		//s1.contains(str) => 
		System.debug(' s1.contains(lo) ' + s1.contains( 'lo' )); // true
        System.debug(' s1.contains(java)' + s1.contains('java')); // false
        //s1.containsIgnoreCase(searchStr)
        System.debug(' s1.containsIgnoreCase(WOR) ' 
                     	+ s1.containsIgnoreCase('WOR')   ); // true
        
        //s1.startsWith(str)
        //s1.startsWithIgnoreCase(prefix)
        //s1.endsWith(str)
        //s1.endsWithIgnoreCase(suffix)
    }
    
}