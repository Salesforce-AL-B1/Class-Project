public class Day8_RelationshipQuery_InCode_Practice {
  public static void run() {
    List<Book__c> allBooks = [
      SELECT Id, Name, Contact__r.FirstName
      FROM Book__c
    ];

    for (Book__c eachBook : allBooks) {
      //System.debug('each book ' + eachBook);
      System.debug('Each book Name ' + eachBook.Name);
      System.debug(
        'Each book Contact FirstName ' + eachBook.Contact__r.FirstName
      );
    }
  }
}
