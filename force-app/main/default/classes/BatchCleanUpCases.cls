public class BatchCleanUpCases implements Database.Batchable<SObject>, Database.Stateful {
  public Database.QueryLocator start(Database.BatchableContext bc) {
    System.debug('Preparing Data ');
    // get all the cases created 10 before Today's date
    // and status is not closed
    String query =
      'SELECT CaseNumber, Subject, CreatedDate, IsClosed FROM Case ' +
      'WHERE CreatedDate < LAST_N_DAYS:10 AND IsClosed = false';

    return Database.getQueryLocator(query);
  }

  public void execute(Database.BatchableContext bc, List<Case> records) {
    System.debug('DOING THE DELETE HERE ');
    delete records;
  }

  public void finish(Database.BatchableContext bc) {
    System.debug('All done');
  }
}
