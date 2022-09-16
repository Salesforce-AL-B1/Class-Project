@isTest // just adding it to avoid being counted as production code or being required to write a test for it
public class TaskDataFactory {
  public static List<Task> generateTasks(Integer count) {
    List<Task> allTasks = new List<Task>();

    for (Integer i = 1; i <= count; i++) {
      Task t = new Task();
      t.Subject = 'TO BE DELETED ' + i;
      t.Status = 'Not Started';
      t.ActivityDate = Date.newInstance(2022, 8, 1);
      t.Priority = 'Normal';
      allTasks.add(t);
    }
    insert allTasks;

    return allTasks;
  }
}
