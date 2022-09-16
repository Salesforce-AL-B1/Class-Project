@isTest
public class BatchCleanupOlderTaskTest {
  @isTest
  static void testTaskCleanUp() {
    // Arrange
    List<Task> allTasks = TaskDataFactory.generateTasks(100);

    // Act
    Test.startTest();

    // assert the data right now is 100 before delete
    System.assertEquals(100, allTasks.size());

    BatchCleanupOlderTask b = new BatchCleanupOlderTask();
    Database.executeBatch(b, 100);
    Test.stopTest();

    // write a query to get the data and expect the size is 0
    //List<Task> queriedTask = [Select ];
    List<Task> queriedTask = [
      SELECT Id
      FROM Task
      WHERE Subject LIKE 'TO BE DELETED%'
    ];
    System.assertEquals(0, queriedTask.size());
  }
}
