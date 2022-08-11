public class Day7_SOQL_DML_Practice {
    
    
    public static void run(){
        
        // SELECT Id, CaseNumber, Status, Subject FROM Case
        // store the result of above query into proper type and print all Subjects 
        List<Case> allCases = [SELECT Id, CaseNumber, Status, Subject FROM Case]; 
/**        
        for(Case each : allCases){
           System.debug('subject is ' + each.Subject); 
        }
*/
        /**
		// filter to display only not closed case (you can do it by modifying the SOQL or condition in the loop)
		for(Case each : allCases){
        	
            if(each.Status != 'Closed'){
            	System.debug('subject is ' + each.Subject); 
        	}
        }		
        **/
        
   // filter to  only not closed case and save it into new List
   // and update the field called Comment =>  Adding comment from Apex 
   // and update the field called Description =>  Adding Description from Apex 
   // 
   // then use that new list to issue  update DML statement 
   		List<Case> openCasesLst = new List<Case>(); 
		// loop through original case list => filter for not closed cases 
		// update the comment field and add it into new List 
        for(Case each  :  allCases){
            
            if(each.Status != 'Closed'){
                //each.Comments = 'a';
                each.Description = 'Adding Description from Apex';
                openCasesLst.add( each );
            }
            
        }
        System.debug('openCasesLst ' + openCasesLst);
        // use update DML command to update in your salesforce org
        update openCasesLst ; 
    }
    

}