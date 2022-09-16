public class AsyncPractice {
  @future
  public static void runItInTheFuture() {
    System.debug('Hello Future');
  }

  /**
   * Create a method that accept List of Lead Id
   * and update the description to : updated using future method
   */
  @future
  public static void updateLeadDescription(List<Id> leadIdLst) {
    // CAN NOT CALL A FUTURE METHOD INSIDE ANOTHE FUTURE METHOD
    // IF YOU WANT TO CHAIN USE QUEUEABLE
    //runItInTheFuture();

    // find all the lead that match the criteria from your org
    List<Lead> allLeads = [
      SELECT FirstName, LastName, Description
      FROM Lead
      WHERE Id IN :leadIdLst
    ];
    // update the description
    for (Lead each : allLeads) {
      each.description = 'updated using future method';
    }

    update allLeads;
  }
}

/**
 * // Get All the lead in your org that 
// have Test in the first name or last name 

List<Lead> testLeads = [SELECT Id From Lead
                       Where FirstName Like '%Test%'
                          OR LastName Like '%Test%'] ; 

List<Id> testIds = new List<Id>(); 

for(Lead each  :  testLeads ){
    testIds.add(  each.Id   ); 
}

AsyncPractice.updateLeadDescription(testIds); 
**/

