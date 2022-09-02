trigger AccountsTrigger on Account(before update, after update, before delete) {
  // After account is updated
  // update the contact mailing address to account shipping address
  // How to access child records in Parent trigger ? => SOQL

  System.debug(
    'Event that Triggered this execution :  ' + Trigger.OperationType
  );

  /**
   * Prevent account deletion if there is a child contact
   * Event : before delete
   * Logic : write a soql query to get account and the contacts belong to the account
   * Loop through the Accont that entered the trigger
   *
   *   check the size of contatcs, if more than 0 , show error
   */
  if (Trigger.isBefore && Trigger.isDelete) {
    AccountTriggerHandler.preventDeleteAccountWithContatcs(Trigger.oldMap);
  }

  if (Trigger.isAfter && Trigger.isUpdate) {
    AccountTriggerHandler.updateChildContactsAddressBeforeAccountUpdate(
      Trigger.New,
      Trigger.OldMap
    );
  }

  if (Trigger.isBefore && Trigger.isUpdate) {
    AccountTriggerHandler.updateShippingAddressIfBillingAddressChange(
      Trigger.New,
      Trigger.OldMap
    );
  }

}
