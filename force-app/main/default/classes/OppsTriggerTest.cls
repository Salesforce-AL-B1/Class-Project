@isTest
private class OppsTriggerTest {
  @isTest
  static void testNullAmountGetUpdatedTo1000UponInsertion() {
    // Prepare test data  , from utility
    List<Opportunity> allOpps = OppsDataFactory.createOpportunities(6);

    // take action : insert (wrapped it up to reset governor limit)
    Test.startTest();
    insert allOpps;
    Test.stopTest();

    // assert all amount is 1000
    // write a soql query to get all above data that got inserted so we can get updated data after trigger run
    List<Opportunity> updatedOpps = [
      SELECT Name, Amount
      FROM Opportunity
      WHERE Id IN :allOpps
    ];
    // here SOQL will automatically get the ID of the records in the list and return

    //System.debug('size of updatedOpps ' + updatedOpps.size() );
    // you can directly use SOQL query on the right of for each loop instead of using variable if you do not need it anywhere else
    //for(Opportunity each :  [SELECT Name, Amount FROM Opportunity WHERE Id IN :allOpps ])  {
    for (Opportunity each : updatedOpps) {
      System.assertEquals(1000, each.Amount);
    }
  }
}
