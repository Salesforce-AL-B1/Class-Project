public class Day7_Upsert_InsertOrUpdate {

    public static void run(){
        
        //upsert DML command is used to 
        //update if the record exists and insert if record does not exists 
        
        // Get a list of open cases Id, Subject, Status, Description 
        List<Case> openCases = [SELECT Id, Subject, Status, Description FROM Case WHERE Status != 'Closed']; 
        System.debug('openCases ' + openCases.size() );
        // Create 1 Case object from scratch with subject , status , Origin 
        Case c1 = new Case(Subject='Upsert Example Case' , Status='New' ,Origin='Phone' ); 
        // Add this object to above list 
       	openCases.add(c1) ; 
        
        // update description of all item in the list to Upserting 
        for(Case each : openCases){
           each.Description = 'Upsert Example' ; 
        }		

       // issue upsert command by passing entire list 
        upsert openCases ; 
        
    }
    
    
}