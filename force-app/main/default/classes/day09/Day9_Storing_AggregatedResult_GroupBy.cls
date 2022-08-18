public class Day9_Storing_AggregatedResult_GroupBy {
  public static void run() {
    /**
     * Anytime we have Aggregate functions like COUNT, MAX, MIN , AVG, SUM
     * The result of query need to be stored into a Type called AggregateResult list or array
     * In order to access each row , we use loop to iterate over them
     * In order to access each column, we use get method on AggregateResult object
     *  yourVariable.get(your fieldName or column name)
     *  If no alias was provided for aggregate function in SELECT
     *  It will automatically get aliase as expr0 for first one expr1 for second and so on
     *  If aliase is provided then we can use alias to access the value as
     *  yourVariable.get(your alias for aggregate function in SELECT)
     */

    // SELECT StageName, SUM(Amount) FROM Opportunity Group By StageName
    AggregateResult[] results = [
      SELECT StageName, SUM(Amount) Total_Amount
      FROM Opportunity
      GROUP BY StageName
    ];
    //List<AggregateResult> results = [SELECT StageName, SUM(Amount) FROM Opportunity Group By StageName];
    //
    for (AggregateResult eachRow : results) {
      //System.debug('each Row ' + eachRow);
      // now use the get method with field name to access individual items
      System.debug(
        'Stage name is ' +
        eachRow.get('StageName') +
        ' Total Amount is ' +
        eachRow.get('Total_Amount')
      );
    }
  }
}
