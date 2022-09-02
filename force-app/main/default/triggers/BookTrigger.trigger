trigger BookTrigger on Book__c(before insert) {
  System.debug('Event for this run ' + Trigger.OperationType);

  // any new book created if price is null , make it 5
  if (Trigger.isBefore && Trigger.isInsert) {
    for (Book__c each : Trigger.new) {
      if (each.Price__c == null) {
        each.Price__c = 5;
      }
    }
  }

}
