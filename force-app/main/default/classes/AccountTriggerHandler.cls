public class AccountTriggerHandler {
  /**
   * Create a static void method called preventDeleteAccountWithContatcs
   * We used 2 Context Variable Trigger.Old => List<Account> param
   * 							  Trigger.Oldmap=> Map<Id, Account> param
   *  The only reason we used Trigger.Old was to pass it into SOQL Query  WHERE ID In : Trigger.old
   *  We can get those Id using Trigger.oldMap.keySet() so we did not need 2 parameters
   *  It can be done simply using one Parameter
   */

  public static void preventDeleteAccountWithContatcs(
    Map<Id, Account> mapOfIdAccount
  ) {
    Set<Id> idOfAllAccountsEnteredTrigger = mapOfIdAccount.keySet();
    // get all the account entered the trigger
    // and all the contacts using Parent to Child query
    List<Account> allAccs = [
      SELECT Id, Name, (SELECT Id, FirstName FROM Contacts)
      FROM Account
      WHERE Id IN :idOfAllAccountsEnteredTrigger
    ];
    // if the requirement changed to : CAN NOT DELETE IF THE ACCOUNT HAS CONTACT WITH PHONE NUMBER
    // Then we can simply change the query without changing the rest of the code
    //List<Account> allAccs = [Select Id, Name, (Select FirstName, MobilePhone From Contacts
    //                                           where MobilePhone!=null )
    //                        From Account Where Id IN :Trigger.old ];

    for (Account each : allAccs) {
      // contacts for this account
      List<Contact> relatedContacts = each.Contacts;

      if (relatedContacts.size() > 0) {
        // we are looping allAccs not Trigger.old
        // addError can only be used within the record stored in Trigger Context Variable
        //each.addError('Can not delete Account with Contacts '); //error
        // instead we can use Trigger.oldMap.get(each.Id) to get the record then addError
        Account accInContext = mapOfIdAccount.get(each.Id);
        accInContext.addError('Can not delete Account with Contacts ');
        //// or in one shot
        //Trigger.oldMap.get(each.Id).addError('Can not delete Account with Contacts ');
      }
    }

    /** SOQL Inside loop , reconsider your approach 
        for(Account each  : Trigger.Old){
           // get the contacts belong to current account in the loop 
			 List<Contact> relatedContacts = [SELECT Id FROM Contact
                                             Where AccountId = :each.Id ]; 
            // check if contact count is more than 0 
            // if so show error
            if(relatedContacts.size()> 0 ){
                each.addError('CAN NOT DELETE ACCOUNT WITH CONTATCS');
                System.debug('DO NOT DELETE');
            }
            
        }
		**/
  }

  /**
   * Create a static void method called preventDeleteAccountWithContatcs
   * We used 2 Context Variable Trigger.New => List<Account> param
   * 							  Trigger.Oldmap=> Map<Id, Account> param
   * It should update Child Contacts Address Before Account Update
   */
  public static void updateChildContactsAddressBeforeAccountUpdate(
    List<Account> accLst,
    Map<Id, Account> mapOfIdAccount
  ) {
    // Trigger.New will contain List of Account that entered the trigger
    // no matter the Account shipping street has changed or not
    // but we only want to take action on account that
    // has shipping address update, so we need to filter it out
    // and provide the IDs or those account into below query
    // instead of Trigger.new , List<Id> or Set<Id> of matching account
    Set<Id> accIdWithAddressChange = new Set<Id>();

    for (Account eachNew : accLst) {
      // get old version of the record
      Account eachOld = mapOfIdAccount.get(eachNew.Id);
      // check if shippingstreet has changed or not
      // if so add the Id to the Set
      if (eachNew.ShippingStreet != eachOld.ShippingStreet) {
        accIdWithAddressChange.add(eachNew.Id);
      }
    }

    // Get all the contacts that belong to Accounts that entered this trigger
    // Contact: FirstName, MailingStreet
    // Account: Id , Name, ShippingStreet
    // This query will return all the contact child record of
    // the accounts that entered the trigger
    // Update : We only want those contacts if parent Account Shipping street has changed
    List<Contact> relatedContacts = [
      SELECT
        FirstName,
        MailingStreet,
        AccountId,
        Account.Name,
        Account.ShippingStreet
      FROM Contact
      WHERE AccountId IN :accIdWithAddressChange
    ]; //Trigger.New ] ;

    // go through each and every contact , update the MailingStreet with Account ShippingStreet
    for (Contact eachContact : relatedContacts) {
      System.debug('Update is being made');
      eachContact.MailingStreet = eachContact.Account.ShippingStreet;
      //update eachContact ; BIG NO  !!! DML INSIDE LOOP? NO WAY!!!!
    }
    // perform DML only if the list is not empty
    if (relatedContacts.size() > 0) {
      // relatedContacts.isEmpty()
      update relatedContacts;
    }
  }

  /**
   * Create a static void method called preventDeleteAccountWithContatcs
   * We used 2 Context Variable Trigger.New => List<Account> param
   * 							  Trigger.Oldmap=> Map<Id, Account> param
   *
   *  Update Shipping address of Account if Billing Address has changed
   *
   */
  public static void updateShippingAddressIfBillingAddressChange(
    List<Account> accLst,
    Map<Id, Account> mapOfIdAccount
  ) {
    for (Account eachNew : accLst) {
      // Only update Shipping street if Billing street was updated
      // If  billing street prior to update
      // is not same as billing street right now
      // it means it was updated
      // technically eachNew.BillingStreet != eachOld.BillingStreet
      // update Shipping street with Billing street
      Account eachOld = mapOfIdAccount.get(eachNew.Id);
      // challenge yourself to only update all below fields
      // only if the billing side has change

      if (eachNew.BillingStreet != eachOld.BillingStreet) {
        eachNew.ShippingStreet = eachNew.BillingStreet;
      }
      if (eachNew.BillingCity != eachOld.BillingCity) {
        eachNew.ShippingCity = eachNew.BillingCity;
      }
      if (eachNew.BillingState != eachOld.BillingState) {
        eachNew.ShippingState = eachNew.BillingState;
      }
      if (eachNew.BillingCountry != eachOld.BillingCountry) {
        eachNew.ShippingCountry = eachNew.BillingCountry;
      }
      if (eachNew.BillingPostalCode != eachOld.BillingPostalCode) {
        eachNew.ShippingPostalCode = eachNew.BillingPostalCode;
      }
    }
  }
}

/**
    // BELOW CODE IS DEFINITION OF BAD CODE IN APEX
    // BECAUSE SOQL INSIDE LOOP , DML INSIDE LOOP 
    if(Trigger.isAfter && Trigger.isUpdate){
        
        for(Account eachAcc : Trigger.New){
            // writing SOQL Inside loop is not a good idea
            // we have 100 SOQL limit 
            List<Contact> relatedContacts 
                =  [SELECT ID, FirstName, Account.Name, AccountId
					 FROM Contact 
					 WHERE AccountId = :eachAcc.Id
				   ];
            System.debug('Account name : ' + eachAcc.Name);
            System.debug('----Contact count :' + relatedContacts.size() );
            // Loop the contact and do DML   -- BIG RED FLAG !!!
        }
        
        
    }
    **/

