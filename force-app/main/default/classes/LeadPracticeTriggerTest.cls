@isTest
public class LeadPracticeTriggerTest {
  @TestSetup
  static void makeData() {
    System.debug('------ CREATING DATA --------');
  }

  @isTest
  static void testLeadDescriptionIsUpdatedUponInsertion() {
    Lead myLead = new Lead(LastName = 'Test', Company = 'LOTR');
    Test.startTest();
    insert myLead;
    Test.stopTest();

    Lead savedLead = [SELECT Description FROM Lead WHERE Id = :myLead.Id];
    System.assertEquals('aa', savedLead.Description);
  }
}
