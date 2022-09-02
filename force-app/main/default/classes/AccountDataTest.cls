@isTest
public class AccountDataTest {
  //@isTest
  static void testImportCsvDataIntoTest() {
    /**
         * Test.loadData accept 2 parameters : 
         *   parameter 1 : the sObject type ==>
         * 			 if it's account it will be Account.sobjectType 
						if it is contact it will be Contact.sobjectType 
						if it is Book__c it will be Book__c.sobjectType 
			It return List<sObject> you need to do conversion yourself in the code 
         */
    List<sObject> allAccounts = Test.loadData(
      Account.sobjectType,
      'testAccounts'
    );

    System.debug('allAccounts :  ' + allAccounts.size());

    // get first element in the list
    // since allAccounts[0] is sObject (supertype)
    // we need to cast it to Account as below to compile
    // All Apples are fruit , all fruit not necessarily apple , it could be orange so casting needed
    Account firstAcc = (Account) allAccounts[0];
    System.debug('Account Name is ' + firstAcc.Name);

    for (sObject each : allAccounts) {
      // cast sObject type to Account child type so we can access account fields
      Account eachAccount = (Account) each;
      System.debug('Account Name ' + eachAccount.Name);
    }
  }

  // what iF WE REALLY NEEDED PRODUCTION DATA THAT EXISTS IN THE ORG
  @isTest(seeAllData=true)
  static void testReadProduction() {
    List<Account> allAccount = [SELECT Name FROM Account];
    for (Account acc : allAccount) {
      System.debug('Accout Name ' + acc.Name);
    }
  }
}
