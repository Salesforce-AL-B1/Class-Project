public class Day8_ParentToChildQuery_InCode_Practice {
  public static void run() {
    for (Contact eachContact : [
      SELECT Id, FirstName, (SELECT Name FROM MyBooks__r)
      FROM Contact
    ]) {
      //System.debug('each Contact ' + eachContact);
      //System.debug('contact FirstName ' + eachContact.FirstName);
      // Saving the subquery result that represent child records into
      // List of Child record Type we access it using parent.RelationShipFieldName from query
      // if the list size is 0 , it means this contact does not have any book child record
      // if it's more than 0 it means there are Book child records in this contact
      List<Book__c> booksForThisContact = eachContact.MyBooks__r;

      if (booksForThisContact.size() > 0) {
        // print out the contact name
        // pr≈int out each and every book name in the list
        System.debug(
          'Contact first name ' +
          eachContact.FirstName +
          ' Count of Book child record ' +
          booksForThisContact.size()
        );

        // how to print out the name of each book in the list booksForThisContact
        for (Book__c eachBookForThisContact : booksForThisContact) {
          System.debug(
            '-------------- Book Name ' + eachBookForThisContact.Name
          );
        }
      }

      //System.debug('books For ThisContact ' + booksForThisContact);
    }
  }
}
