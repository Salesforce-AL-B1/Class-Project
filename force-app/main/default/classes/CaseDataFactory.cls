@isTest // no test will be written here , we are using to not to have to have code coverage of not to count towards total number
public class CaseDataFactory {
  /**
   *  Parameter 1 : count of Cases you want to create as Integer
   *  Paremeter 2 : Subject  as String (eventually it will be Subject 1 Subject Subject 3 according to count of data you have )
   *  Create a method to create List<Case> with some common fields  (excluding description)
   *
   */

  public static List<Case> createCases(
    Integer count,
    String subjectStr,
    Boolean addDecription
  ) {
    List<Case> allCases = new List<Case>();

    for (Integer i = 1; i <= count; i++) {
      Case c = new Case();
      c.Subject = subjectStr + ' ' + i; //
      c.Status = 'New';
      c.Origin = 'Phone';
      if (addDecription == true) {
        c.Description = 'This is a description';
      }

      allCases.add(c);
    }
    // you can check the size of the list first before inserting
    if (allCases.size() > 0) {
      insert allCases;
    }
    return allCases;
  }
}
