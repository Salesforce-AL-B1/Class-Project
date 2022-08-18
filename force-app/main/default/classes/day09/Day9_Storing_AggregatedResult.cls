public class Day9_Storing_AggregatedResult {
  public static void run() {
    /**
     *SELECT COUNT(Name)  FROM Lead
     */
    // we can not store result of SOQL Query that contains aggregate function
    // into List<sobject> ,
    // it has to be List<AggregateResult> or AggregateResult[]

    AggregateResult[] results = [SELECT COUNT(Name) FROM Lead];
    System.debug('result is ' + results);
    // if alias is not provided aggregate function in result will have have a name
    // with expr0 for first one. expr1 for next one and so one
    //|DEBUG|result is (AggregateResult:{expr0=27})

    System.debug('The Count is ' + results[0].get('expr0'));

    // leadCount is alias for COUNT(Name) so it can be used in later step
    AggregateResult[] results1 = [SELECT COUNT(Name) LeadCount FROM Lead];
    System.debug('result1 is ' + results1);
    //|DEBUG|result is (AggregateResult:{LeadCount=27})
    //
    // access first item in the AggregateResult[] array and print LeadCount column
    // the way to access AggregateResult field is same as
    // the way we access map using get(provide the column name)
    System.debug(
      'First item in array : lead count value ' + results1[0].get('LeadCount')
    ); // 27
  }
}
