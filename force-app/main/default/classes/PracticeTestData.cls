@isTest
public class PracticeTestData {
  @isTest
  static void testUtilCall() {
    List<Account> accsWithOpps = TestDataFactory.createAccountsWithOpps(3, 2);

    system.debug('size of list accsWithOpps ' + accsWithOpps.size());
    system.debug('All list ' + accsWithOpps);

    System.assertEquals(3, accsWithOpps.size());

    for (Account each : accsWithOpps) {
      System.debug('Each ' + each.Name);
      System.debug('Each Id ' + each.Id);
    }

    // Get All opportunities for First Account in the list

    List<Opportunity> childOpps = [
      SELECT Id, Name, StageName, Amount
      FROM Opportunity
      WHERE AccountId = :accsWithOpps[0].Id
    ];

    System.debug('childOpps count ' + childOpps.size());
  }

  @isTest
  static void testUtilCall2() {
    List<Account> accsWithOpps = TestDataFactory.createAccountsWithOpps(3, 2);

    //List<Opportunity> childOpps =  [SELECT Id,Name,StageName,Amount FROM Opportunity
    //                                Where AccountId = :accsWithOpps[0].Id   ];
    // We want to get all the opportunity that belong to above accounts
    // by providing all the accountId . instead of the first one

    // How to convert List<Sobject> into Map<Id, SObject>
    Map<Id, Account> idAccountMap = new Map<Id, Account>(accsWithOpps);
    System.debug('idAccountMap : ' + idAccountMap);
    System.debug('All Keys (Ids) : ' + idAccountMap.keySet());

    Set<Id> allIds = idAccountMap.keySet();

    List<Opportunity> AllChildOpps = [
      SELECT Id, Name, StageName, Amount
      FROM Opportunity
      WHERE AccountId IN :allIds
    ];

    System.assertEquals(6, AllChildOpps.size());
  }
}
