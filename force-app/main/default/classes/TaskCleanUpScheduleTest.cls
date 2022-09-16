@isTest
public class TaskCleanUpScheduleTest {
  @isTest
  static void testTaskCleanupSchedule() {
    // Arrange
    List<Task> allTasks = TaskDataFactory.generateTasks(30);

    // Act
    Test.startTest();

    String cronExp = '0 0 0 1 OCT ? 2025'; // Octorber 1 2025
    TaskCleanUpSchedule t = new TaskCleanUpSchedule();
    // schedule method set a schedule and return the job id for keeping track of the details
    String jobId = System.schedule('Test Task Cleanup', cronExp, t);
    // Write a SOQL Query to get the scheduled Job detail into CronTrigger Object
    // to get more information about Next Fire time and so on

    CronTrigger ct = [
      SELECT Id, TimesTriggered, NextFireTime
      FROM CronTrigger
      WHERE Id = :jobId
    ];
    // Assert this has not run yet by checking TimesTriggered is 0

    System.assertEquals(0, ct.TimesTriggered);
    // Now assert the NextFireTime => 2025 OCT 1st 00:00:00
    DateTime expectedFireTime = DateTime.newInstance(2025, 10, 1);
    System.assertEquals(expectedFireTime, ct.NextFireTime);

    Test.stopTest();
  }
}
