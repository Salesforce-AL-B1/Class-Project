public class Day6_SOQL_in_code_demo {
    
    
    public static void run(){
        
        // SELECT Id, FirstName, LastName FROM Contact
        // run this query , store the result into List<Contact>
        
        List<Contact> allContacts = [SELECT Id, FirstName, LastName, Email FROM Contact]; 
        
        for( Contact each    : allContacts ){
            
            System.debug('Contact here ' +  each);
                
        }
        
    }
    

}