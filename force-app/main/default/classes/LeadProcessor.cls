public class LeadProcessor implements Database.Batchable<sObject>, Database.Stateful {
  // create a variable to store total record processed
  Integer totalRecordProcessed = 0;
  // create a variable to keep track of execution batch number :
  Integer currentBatchNum = 0;
  // Prepare your Data here only once
  public Database.QueryLocator start(Database.BatchableContext bc) {
    System.debug('Preparing Data : ');
    // collect the batches of records or objects to be passed to execute
    // Database.getQueryLocator method accept query as String
    // and return Database.QueryLocator object that expected to be returned from this method
    // so you can simply pass the query and return the result back
    return Database.getQueryLocator(
      'SELECT Id,FirstName,LastName,LeadSource  from Lead'
    );
  }

  // take action here for each batch of data that get injected into records list below
  public void execute(Database.BatchableContext bc, List<Lead> records) {
    // incremenet the batch number
    currentBatchNum++;

    // process each batch of records
    System.debug(
      'Batch number is : ' +
      currentBatchNum +
      ': The size in this batch is ' +
      records.size()
    );
    // add this size to total size
    totalRecordProcessed = totalRecordProcessed + records.size();

    // Go through each and every lead and set the LeadSource value to Dreamforce
    for (Lead each : records) {
      each.LeadSource = 'Dreamforce';
    }
    update records;
  }

  // this run once once all batches finish processing
  public void finish(Database.BatchableContext bc) {
    // execute any post-processing operations
    System.debug('ALL DONE!! Total Record Processed : ' + totalRecordProcessed);
    System.debug('Batch Id for execution is  ' + bc.getJobId());
    // write a query to get the final job result
    AsyncApexJob job = [
      SELECT Id, Status, JobItemsProcessed, TotalJobItems, NumberOfErrors
      FROM AsyncApexJob
      WHERE ID = :bc.getJobId()
    ];

    System.debug('job result ' + job);
    // optionally send out email using the Email Manager class we have
  }
}
