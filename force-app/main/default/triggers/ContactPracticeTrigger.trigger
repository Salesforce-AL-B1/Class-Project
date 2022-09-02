trigger ContactPracticeTrigger on Contact(before update) {
  // In your before update code ,
  // try to access account parent record if the contact has parent account record

  if (Trigger.isBefore && Trigger.isUpdate) {
    List<Contact> allContacts = [
      SELECT ID, FirstName, Account.Name, AccountId
      FROM Contact
      WHERE Id IN :Trigger.New
    ];

    for (Contact each : allContacts) {
      System.debug('First name ' + each.FirstName);
      System.debug('account id ' + each.AccountId);
      System.debug('account name ' + each.Account.Name);
    }
  }

}
