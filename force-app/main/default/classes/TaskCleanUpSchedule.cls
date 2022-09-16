public class TaskCleanUpSchedule implements Schedulable {
  public void execute(SchedulableContext sc) {
    // call your batch clean up batch job here

    BatchCleanupOlderTask b1 = new BatchCleanupOlderTask();
    Database.executeBatch(b1, 30);
  }
}
