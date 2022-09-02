@isTest
public class OppsDataFactory {
  public static List<Opportunity> createOpportunities(Integer count) {
    List<Opportunity> allOpps = new List<Opportunity>();

    for (Integer i = 1; i <= count; i++) {
      Opportunity op = new Opportunity();
      op.Name = 'Test Opportunity ' + i;
      op.StageName = 'Prospecting';
      op.CloseDate = Date.today().addDays(30);

      allOpps.add(op);
    }

    return allOpps;
  }
}
