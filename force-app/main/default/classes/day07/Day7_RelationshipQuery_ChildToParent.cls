public class Day7_RelationshipQuery_ChildToParent {
    
    public static void run(){
        
        List<Contact> contactLst = [SELECT Id, Name, Account.Name From Contact] ; 
        System.debug('contactLst ' + contactLst);
        
        for(Contact each: contactLst){
            
            System.debug('Contact Name : ' + each.Name);
            System.debug('Account Name : ' + each.Account.Name);
            
        }
        
        
        
        // Create and Insert an Account , save the Id
        Account a1 = new Account(Name='Test Account');
        //insert a1 ; 
        System.debug('Id of newly created account is ' + a1.Id );
        // Create a contact under above account 
        Contact c1 = new Contact(FirstName='Test1' , LastName ='Last1') ;
        // Set parent Account Id to the Id of account created above 
        c1.AccountId =  a1.Id ;
        //insert c1 ; 
        
        
        
    }
    

}