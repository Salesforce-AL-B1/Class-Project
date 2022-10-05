public with sharing class AccountController {
  @AuraEnabled(cacheable=true)
  public static List<Account> getAccounts() {
    return [
      SELECT Name, AnnualRevenue, Industry
      FROM Account
      WHERE AnnualRevenue != NULL
      WITH SECURITY_ENFORCED
      ORDER BY Name
    ];
  }

  @AuraEnabled(cacheable=true)
  public static Account getSingleAccount() {
    return [
      SELECT Name, AnnualRevenue, Industry
      FROM Account
      WITH SECURITY_ENFORCED
      ORDER BY Name
      LIMIT 1
    ];
  }
}
