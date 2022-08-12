public class Day8_Using_SOQL_in_ForEachLoop_Directly {
  public static void run() {
    //[SELECT Id, Name, Amount from Opportunity]
    // instead of saving the result of query into the List
    // we can directly provide the query that generate that List in for each loop
    for (Opportunity each : [SELECT Id, Name, Amount FROM Opportunity]) {
      System.debug('Opportunity Name ' + each.Name);
      System.debug('Opportunity Amount ' + each.Amount);
    }
  }
}
