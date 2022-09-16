public class SecondJob implements Queueable {
  public void execute(QueueableContext context) {
    System.debug(
      'Executing something heavy sometime in the future in second JOB '
    );
  }
}
