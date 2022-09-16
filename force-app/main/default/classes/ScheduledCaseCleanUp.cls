// this class is mean to provide ability to run our batch case clean up
// in give schedule either from UI or from the code
public class ScheduledCaseCleanUp implements Schedulable {
  public void execute(SchedulableContext sc) {
    // run your batch clean up Cases batchable job to clean up 100 data at a time

    Database.executeBatch(new BatchCleanUpCases(), 100);
  }
}
