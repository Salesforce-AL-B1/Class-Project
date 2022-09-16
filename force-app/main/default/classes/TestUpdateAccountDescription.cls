@isTest
public class TestUpdateAccountDescription {
  @isTest
  static void test1() {
    // Arrange
    List<Account> accs = new List<Account>();

    // create 100 test accounts
    for (Integer i = 1; i <= 100; i++) {
      Account a = new Account(Name = 'Test ' + i);
      accs.add(a);
    }
    insert accs;

    String updatedDescription = 'Running sometime in the future in separate process';

    // Act
    Queueable q1 = new UpdateAccountDescription(accs, updatedDescription);

    Test.startTest();
    System.enqueueJob(q1); // this will trigger execute method to run
    Test.stopTest();
    // Assert

    List<Account> updatedAccs = [
      SELECT Description
      FROM Account
      WHERE Name LIKE 'Test %'
    ]; // or Id in :accs
    for (Account each : updatedAccs) {
      System.assertEquals(
        'Running sometime in the future in separate process',
        each.Description
      );
    }
  }
}
