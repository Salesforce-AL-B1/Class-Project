public class Day7_ParentToChild_Query_In_code {
    
    public static void run(){
        
        List<Account> accLst = [Select Id, Name, (Select FirstName, LastName from Contacts) From Account] ; 
        System.debug('accLst ' + accLst);
        
        for(Account each  : accLst ){
            System.debug('each Account Name ' + each);
        }
        
        
        /**
        for(Account eachAccount  : accLst ){
            System.debug('each Account Name ' + eachAccount.Name);
			System.debug('all contacts under this account ' + eachAccount.Contacts );
        // 	//get first contact's FirstName
        // 	//each.Contacts[0].firstName
        // get all contatcs details with loop 
            for(Contact eachContact: eachAccount.Contacts){
                System.debug('----each contact First Name ' + eachContact.FirstName);
				System.debug('----Each contact Last Name '  + eachContact.LastName );
            }        
        }
        **/
    }
    
    
}