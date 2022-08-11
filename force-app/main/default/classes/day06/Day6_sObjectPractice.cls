public class Day6_sObjectPractice {
    
    
    public static void run(){
        
        // create Contact sObject instance and insert into Your salesforce 
        
        Contact c = new Contact(); 
        c.FirstName = 'Apex';
        c.LastName = 'Test Last' ; 
        
        Contact c1 = new Contact(FirstName= 'Contact2' , LastName = 'Test Last2');
        // This is a DML statmenet to insert into salesforce database 
        //insert c1 ; 
        
        List<Contact> contactLst = new List<Contact>(); 
        contactLst.add(   new Contact(FirstName= 'Test First1' , LastName = 'Test Last1')          ); 
        contactLst.add(   new Contact(FirstName= 'Test First2' , LastName = 'Test Last2')          );    
        contactLst.add(   new Contact(FirstName= 'Test First3' , LastName = 'Test Last3')          );         
        
        // It's always better to add multiple items in one shot using isert 
        // because in one execution you can have up to 150 DML statement 
        // anything more than that will cause failure due to governer limit
        insert contactLst ; 
        
        
        
    }

}