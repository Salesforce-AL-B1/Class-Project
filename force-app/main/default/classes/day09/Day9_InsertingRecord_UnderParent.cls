public class Day9_InsertingRecord_UnderParent {
  public static void run() {
    // Create an Test Account record
    Account a1 = new Account(Name = 'Test Account');
    // insert this account record
    insert a1;
    System.debug('Id of this account record is ' + a1.Id);
    // Add a case record under above account
    Case c1 = new Case(
      Subject = 'Creating under Test Account',
      AccountId = a1.Id
    );
    insert c1;
  }

  public static void run1() {
    // get the account record with the name Test Account and store it in Account variable
    Account a1 = [
      SELECT Id, Name
      FROM Account
      WHERE Name = 'Test Account'
      LIMIT 1
    ];

    Case c1 = new Case(Subject = 'Case under Test Account', AccountId = a1.Id);
    insert c1;
  }
}
