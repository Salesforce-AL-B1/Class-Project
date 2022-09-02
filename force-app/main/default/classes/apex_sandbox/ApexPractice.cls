public class ApexPractice {
  //https://www.apexsandbox.io/problem/60
  /**
     * Banking: 600,000
        Technology: 800,000
        Retail: 2,000,000
        All others: 500,000
     */
  public static Boolean isKeyAccount(Account a) {
    //code here
    System.debug('Hello world');

    if (a.Industry == 'Banking') {
      return a.AnnualRevenue >= 600000;
    } else if (a.Industry == 'Technology') {
      return a.AnnualRevenue >= 800000;
    } else if (a.Industry == 'Retail') {
      return a.AnnualRevenue >= 2000000;
    } else {
      // NOW THIS ONLY MEANS INDUSTRY IS NOT  Banking Technology
      return a.AnnualRevenue >= 500000;
    }
  }
}
