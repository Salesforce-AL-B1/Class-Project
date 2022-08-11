public class Day6_sObject_CustomObject {
    /**
     * Go to object manager and create new Custom Object 
     * Name : Book  
     * Fields : chapterCount as number  ,  0 digit
     * 			price as number , 2 digit decimal
     * 			
     */ 
    public static void run(){
        
        Book__c b1 = new Book__c(); 
        b1.Name = 'Lord of the Rings 2' ; 
        b1.ChapterCount__c = 12 ; 
        b1.Price__c = 9.99 ; 
        
        //insert b1 ; 
        
     	Book__c b2 = new Book__c( Name= 'Apex Programming 2' , Price__c=19.99  ); 
        insert b2 ; 
        System.debug('After data inserted , ID is populated '  + b2.Id  ) ;  
        //System.debug('After data inserted , CreatedDate is populated '  + b2.createdDate  ) ;  
        
        
    }
    

}