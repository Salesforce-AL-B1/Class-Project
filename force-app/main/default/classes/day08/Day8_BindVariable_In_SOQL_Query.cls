public class Day8_BindVariable_In_SOQL_Query {
  public static void run() {
    Long num = 300000000;

    // you can make your SOQL Query dynamic by passing variable and add : right before it
    // SOQL will recognize that as variable

    List<Account> bigAccounts = [
      SELECT ID, Name, AnnualRevenue
      FROM Account
      WHERE AnnualRevenue > :num
    ];

    System.debug('bigAccounts size ' + bigAccounts.size());

    // create an Account sObject instance with Name , AnnualRevenue field
    Account a1 = new Account(
      Name = 'bind Variable Practice',
      AnnualRevenue = 1000000000
    );
    // insert it into Database using DML Command
    insert a1;
    // Save the Id into proper variable type
    ID newAccountId = a1.Id;
    System.debug('Id of newly generated Account is ' + newAccountId);
    // create a soql query to search by using the ID from the newly created data

    Account fromQuery = [
      SELECT Id, Name, AnnualRevenue
      FROM Account
      WHERE Id = :newAccountId
    ];
    System.debug('Account from the query ' + fromQuery);
  }
}
