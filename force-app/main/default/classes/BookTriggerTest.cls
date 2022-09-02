@isTest
public class BookTriggerTest {
  @isTest
  static void testPriceIsChangedTo5UponInsertionWhenEmpty() {
    Book__c b1 = new Book__c(Name = 'LOTR');

    Test.startTest();
    insert b1;
    Test.stopTest();

    Book__c savedB1 = [SELECT Price__c FROM Book__c];
    System.assertEquals(5, savedB1.Price__c);
  }
}
