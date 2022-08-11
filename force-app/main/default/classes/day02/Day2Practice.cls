// always save your code once you are done 
// Command + S on mac , Ctr + S on windows 
// Shortcut for Execute Anon window is Ctr+E or Command +E 
// Shortcut for Executing last command is Ctr+Alt+E on windows or Command+Options+E on mac 
// 
public class Day2Practice {

    public static void run1(){
        
        System.debug('Running awesome code 1');
        
        String grade = 'DE' ; 
        
        switch on grade {
            
            when 'A' {
                System.debug('You got A');
            }
            when 'B' {
                System.debug('You got B');
            }
            // you can add multiple value if you want to take same action on these possible values 
            when 'C','D','E' {
                System.debug('Work little harder');
            }
            when else{
                System.debug('You got sth else');
            }
            
        }
        
    }
    
    public static void run2(){
        
        System.debug('Running awesome code 2');
        
        // Collections in Apex
        // Array : Ordered. , can be easily used with list 
        String[] names = new String[]{'Gail', 'Larisa', 'Mehmet','Asena'}; 
        System.debug('names array ' + names);
        // List : ordered , allow duplicate 
        List<String> namesList = 
             new List<String>{'Gail', 'Larisa', 'Mehmet','Asena'}; 
        System.debug('namesList  ' + namesList);
        // Set  : no order , no duplicate 
        
        Set<String> nameSet =  new Set<String>{'Gail', 'Larisa','Larisa', 'Mehmet','Mehmet','Asena'};  
        System.debug('nameSet  ' + nameSet); 
        
        // Map  : Collection of key value pair 
        
        
         
        
        
        
        
    }
    
    public static void runArrayLoop(){
        								
        String[] names = new String[]{'Gail', 'Larisa', 'Mehmet','Asena'}; 
        // in order to access individual items we use 0 based index 
        // names[0] ==> Gail
        
        System.debug('Size of this array is ' + names.size() );
        
        for(Integer i = 0 ;  i< names.size() ; i++ ){
            
            System.debug('element at this position ' + names[i]   );
            
        }
        
        for( String eachName : names ){
            System.debug('item here value ' + eachName);
        }

    }
    
}