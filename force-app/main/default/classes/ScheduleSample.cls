// in order to allow scheduling to run certain code
// we can implement schedulable inetrface with one abstract method excecute
public class ScheduleSample implements Schedulable {
  public void execute(SchedulableContext ctx) {
    System.debug('Hello World from Schedule');
  }
}
