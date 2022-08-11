public class Day6_Delete_Existing_Record {

    public static void run(){
    
       List<Contact> lstToDelete = [SELECT Id, FirstName, LastName from Contact WHERE LastName = 'TestUpdate'] ; 
  
       delete lstToDelete ; 
        
    }
    
}