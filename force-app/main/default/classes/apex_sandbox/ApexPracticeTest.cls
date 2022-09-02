@isTest
public class ApexPracticeTest {
  @isTest
  static void testIndustryIsTechnologyRevenueMoreThan800K() {
    Account a1 = new Account();
    a1.AnnualRevenue = 850000;
    a1.Industry = 'Technology';
    Boolean actualResult = ApexPractice.isKeyAccount(a1);
    System.assertEquals(
      true,
      actualResult,
      'When Industry is Technology and Revenue is more than 800k, not returning true'
    );
  }

  @isTest
  static void testIndustryBanking() {
    // Banking: 600,000
    Account a = new Account(Name = 'Test');
    a.Industry = 'Banking';
    a.AnnualRevenue = 900000;

    //System.assert( ApexPractice.isKeyAccount(a) , 'Error : Banking more than 600K revenue is Not Key Account'  ) ;
    System.assertEquals(
      true,
      ApexPractice.isKeyAccount(a),
      'Error : Banking more than 600K revenue is Not Key Account'
    );

    // test if the revenue is exactly 600000 return true
    a.AnnualRevenue = 600000;
    System.assertEquals(
      true,
      ApexPractice.isKeyAccount(a),
      'Error : Banking more than 600K revenue is Not Key Account'
    );

    // test if the revenue is less than 600000 return false
    a.AnnualRevenue = 1000;
    System.assertEquals(
      false,
      ApexPractice.isKeyAccount(a),
      'Error : Banking more than 600K revenue is Not Key Account'
    );
  }
}
