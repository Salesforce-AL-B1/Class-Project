public class BatchCleanupOlderTask implements Database.Batchable<sOBject>, Database.stateful {
  Integer batchNum = 0;
  Integer totalRecord = 0;

  public Database.QueryLocator start(Database.BatchableContext bc) {
    Date oneMonthBefore = Date.today().addMonths(-1);
    // we will choose to use the overloaded version of the method that accept List<sObject> so we can directly pass [SOQL with bind variable]
    System.debug('Preparing Data ');
    return Database.getQueryLocator(
      [SELECT Id FROM Task WHERE ActivityDate < :oneMonthBefore]
    );
  }

  public void execute(Database.BatchableContext bc, List<Task> records) {
    batchNum++;
    totalRecord = totalRecord + records.size();

    System.debug(
      'Batch Number : ' +
      batchNum +
      '|  record processed in this batch ' +
      records.size()
    );

    // delete the all the data that came in in this batch
    System.debug('About to delete count of data ' + records.size());
    delete records;
  }

  public void finish(Database.BatchableContext bc) {
    System.debug('All done with total record of ' + totalRecord);
    // this is how we can get the status of the job and errors if any
    AsyncApexJob job = [
      SELECT Id, Status, JobItemsProcessed, TotalJobItems, NumberOfErrors
      FROM AsyncApexJob
      WHERE ID = :bc.getJobId()
    ];

    System.debug('job detail ' + job);
  }
}
