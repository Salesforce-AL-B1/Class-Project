public class ScheduleMonthlyUpdate implements Schedulable {
  public void execute(SchedulableContext sc) {
    // get the details of schedule
    System.debug('Hello World ');
    System.debug('sc ' + sc.getTriggerId());
    CronTrigger ct = [
      SELECT TimesTriggered, NextFireTime, CronJobDetail.Name
      FROM CronTrigger
      WHERE Id = :sc.getTriggerId()
    ];

    System.debug('ct next fire time ' + ct.NextFireTime);
    // now you can add any logic to take some personilizaed action
    // for example if the NextFireTime fall into 7/4 do not run below code
    // if (ct.NextFireTime month part is 7 and day part is 4){
    // Take some special action
    // }else {
    // Do the regular action
    // }
  }
}
