public class Day9_DML_With_DatabaseUtilityClass {
  public static void run() {
    // Apex provide a utility class called Database
    // where you can call all DML operations you did previouly with extra parameters allOrNone

    //Contact c1 = new Contact(FirstName='TestFirstName1' , LastName= 'TestLastName1') ;
    List<Contact> contactLst = new List<Contact>();
    // create 5 record , name should incrememnt  1-5

    for (Integer i = 1; i <= 5; i++) {
      contactLst.add(
        new Contact(
          FirstName = 'Test-FirstName-' + i,
          LastName = 'Test-LastName-' + i
        )
      );
    }
    // add one more Contact to the list with required field missing
    // last name field is required for Contact Record and it's missing here
    contactLst.add(new Contact(FirstName = 'TestFirstName'));
    // this will throw exception and none of those 5 valid contact will be inserted
    //insert contactLst ;

    //Database.insert(List<SObject> sobjects, allOrNothing)
    //Database.insert(contactLst, false) ;  // this will insert anything that worked, ignore anything that did not work

    //insert contactLst ==> Database.insert(contactLst, true) ;
    //
    // If you want to get more information about the result
    // you can save above statement result into a type called
    // Database.SaveResult
    // Since we tried to insert 6 record , we get 6 results
    // and it can be stored into list or array
    // it will look as below
    // comment out first insert statement if you want to run this

    Database.SaveResult[] results = Database.insert(contactLst, false);
    System.debug('results ' + results);

    for (Database.SaveResult eachResult : results) {
      System.debug(eachResult);
      System.debug('Success ? : ' + eachResult.isSuccess());
    }
  }
}
