public class FirstJob implements Queueable {
  public void execute(QueueableContext context) {
    System.debug(
      'Executing something heavy sometime in the future in first JOB '
    );
    // chain second Queueable in here
    SecondJob q2 = new SecondJob();
    // enqueueJob method is expecting anything that is Queueable , here the SecondJob instance
    System.enqueueJob(q2);
  }
}
