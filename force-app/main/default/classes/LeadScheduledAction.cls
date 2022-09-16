/**
 * We want be able schedule the batchable LeadProcessor
 * to run any time that we want
 * to process leads
 * Remember , if you already scheduled the job , you cannot modify this class
 * either delete your schedule from the UI
 * or just create new class with new logic
 */
public class LeadScheduledAction implements Schedulable {
  // when the scheduled time come , whatever is inside this method will get executed
  // in this particular case ,
  // we are executing the leadprocessor batch action with batch size of 10
  public void execute(SchedulableContext sc) {
    System.debug('Processing leads ');
    // batch process lead here using batchable LeadProcessor
    LeadProcessor lp = new LeadProcessor();
    Database.executeBatch(lp, 10);
  }
}
