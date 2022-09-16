@isTest
public class LeadProcessorTest {
  @isTest
  static void testLeadSourceUpdate() {
    // Arrange
    List<Lead> allLeads = new List<Lead>();
    for (Integer i = 1; i <= 200; i++) {
      allLeads.add(new Lead(LastName = 'Test ' + i, Company = 'Apex LLC'));
    }
    insert allLeads;

    // Act
    Test.startTest();
    LeadProcessor lp = new LeadProcessor();
    Id batchId = Database.executeBatch(lp, 200);
    Test.stopTest();

    // Assert
    List<Lead> updatedLead = [
      SELECT LeadSource
      FROM Lead
      WHERE LeadSource = 'Dreamforce'
    ];
    // since we added 200 data without lead source
    // and the processor updated all leadsource to Dreamforce
    // we should have size of 200 record from above list
    System.assertEquals(200, updatedLead.size());
  }
}
