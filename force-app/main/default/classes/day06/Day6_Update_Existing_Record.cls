public class Day6_Update_Existing_Record {
    
    public static void run(){
        
        // get the first guy with no firstname and update the first name to NewName
        //  
        
        //SELECT Id, FirstName, LastName from Contact Where FirstName = null LIMIT 1
        //List<Contact>
        Contact c1 = [SELECT Id, FirstName, LastName from Contact Where FirstName = null LIMIT 1] ; 
        System.debug('First guy with no First Name ' + c1);
		// updating the first name 
        c1.FirstName = 'New Name' ; 
        // passing entire Contact object to update DML statement 
        //update c1 ; 
        //System.debug('c1 after update ' + c1);
        
        
        //SELECT Id, FirstName, LastName from Contact WHERE LastName = 'TestUpdate'
        List<Contact> updateLst = [SELECT Id, FirstName, LastName from Contact WHERE LastName = 'TestUpdate'] ; 

    
        for(Contact each : updateLst){
            each.FirstName = 'Awesome New Name' ; 
        }
        
        // update DML command to update list of all contacts 
        update updateLst; 
		
    }

}