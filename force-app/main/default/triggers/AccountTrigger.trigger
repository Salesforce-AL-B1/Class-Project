trigger AccountTrigger on Account(
  before insert,
  after insert,
  before update,
  after update
) {
  System.debug('Message from Account Trigger');
  // How do we access the record that caused the trigger to run
  // USE Trigger.new
  // Trigger.new => is List of sObject (in this case Account) that caused this trigger to run
  // Trigger.new = List<Account>

  System.debug('How many record in this run ' + Trigger.new.size());

  // Loop through all the Account record name that caused this trigger to run
  for (Account each : Trigger.new) {
    System.debug('current account name ' + each.Name);
    System.debug('New value of State ' + each.BillingState);
  }

  // Trigger.old = List of Account with fields values prior to this update happen
  // So you can access old values of the fields
  // This can only be available for update event
  for (Account eachOld : Trigger.old) {
    // looping through old values
    System.debug('Old value of State ' + eachOld.BillingState);
  }

}
