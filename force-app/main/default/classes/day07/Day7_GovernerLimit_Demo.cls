public class Day7_GovernerLimit_Demo {
    
    
    public static void run(){
       
        
        // 101 iteration 
        //for(Integer i=1 ; i<=101 ; i++){
            // Governer Limit for SOQL Query is 100 and this will generate error
            //List<Contact> lst = [SELECT Id from Contact]; 
        //}
        
        for(Integer i=1 ; i<=151 ; i++){
            // Governer Limit for DML Statement is 150 and this will generate error
            Contact c1 = new Contact(LastName='Go Over Limit');
            insert c1 ; 
       }
        
        
    }
    

}