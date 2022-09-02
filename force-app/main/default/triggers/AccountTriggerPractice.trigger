trigger AccountTriggerPractice on Account(
  before insert,
  after insert,
  before update
) {
  // To access the records that caused the trigger to fire, use context variables.
  // For example, Trigger.New contains all the records that were inserted in insert or update triggers.

  //System.debug('Print all records ' + Trigger.new  );
  System.debug('What event is running right now? ' + Trigger.OperationType);

  // loop to print the name only if it's a before event
  if (Trigger.isBefore) {
    for (Account each : Trigger.new) {
      System.debug('Account Name ' + each.name);
      // update the account description field right before it's saved to your org database
      each.Description = 'Updating is before event ';
      // Update Rating field to Hot if account AnnualRevenue > 400000 else make it Cold
      if (each.AnnualRevenue > 400000) {
        each.Rating = 'Hot';
      } else {
        each.Rating = 'Cold';
      }
    }
  }

  /**
    
    // checking event type
    
    System.debug('Is this a insert event?  ' +  Trigger.isInsert );
    System.debug('Is this a update event?  ' +  Trigger.isUpdate );
    System.debug('Is this a delete event?  ' +  Trigger.isDelete );
    
    // checking is before or is after
    System.debug('Is it before event ? ' + Trigger.isBefore );
    System.debug('Is it after event ? ' + Trigger.isAfter );
    
    // Trigger.newMap  will return Map<Id,Account> key as all records Id and value as Account object
    System.debug('Trigger.newMap : ' + Trigger.newMap);
    
    System.debug('Trigger.operationType ' + Trigger.operationType );
    
    */

}

/**
 * // Clean up your org Data 
    // Delete all the record that contains the word test 
    List<Account> junkData = [SELECT Id,Name from Account
                             WHERE Name LIKE '%Test%'];
    System.debug('Record count to be deleted ' + junkData.size() );
    //delete junkData ;  // give us error if related record exists
    // ignore ones that can not delete , delete the ones it cans
    Database.delete(junkData, false) ; 
**/
