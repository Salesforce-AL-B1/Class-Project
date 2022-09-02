trigger myTrigger on Book__c(before insert, before update) {
  System.debug('Hello book is added or updated');

}
