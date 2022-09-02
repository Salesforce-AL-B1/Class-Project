@isTest
public class CaseTriggerTest {
  // How to run block of code before each and every test
  //  @testSetUp will mark this method as setup method that run before each and every test in this clas
  @testSetUp
  static void setup() {
    System.debug('-------- RUNNING BEFORE TEST --------------');
  }

  @isTest
  static void testNoCaseDescriptionShouldFillUpDescription() {
    //Prepare Data
    //Perform Action
    //
    Test.startTest(); //
    List<Case> myCases = CaseDataFactory.createCases(5, 'Test Subject', false);
    Test.stopTest(); // reset the governer limit here
    System.debug(myCases);
    System.assertEquals(5, myCases.size());

    // Get the Cases from Soql Query so we can see the most up to date field values after trigger run
    List<Case> updatedCases = [
      SELECT Description
      FROM Case
      WHERE Subject LIKE 'Test Subject%'
    ];

    // Assert the result
    System.assertEquals(5, updatedCases.size());
    // go through each Cases and make sure all of them has Description of 'For detail , see subject'
    for (Case each : updatedCases) {
      System.assertEquals('For detail , see subject', each.Description);
    }
  }

  @isTest
  static void testExistingCaseDescriptionShouldNotFillUpDescription() {
    // Prepare Test Data with Description and Insert
    List<Case> allCases = CaseDataFactory.createCases(
      6,
      'Important Subject',
      true
    );

    System.debug('all cases ' + allCases);

    // get updated data
    List<Case> updatedCases = [
      SELECT Description
      FROM Case
      WHERE Subject LIKE 'Important Subject%'
    ];

    // Go to each case and check the default desciption 'This is a description' did not change
    for (Case each : updatedCases) {
      System.assertEquals('This is a description', each.Description);
    }
  }

  @isTest
  static void testLoadingCsvStaticResources() {
    //static resource name : testDataForCase
    List<sObject> csvCases = Test.loadData(Case.sobjectType, 'testDataForCase');
    System.debug('csv Cases ' + csvCases);
    // now use above data to test before insert case trigger
    // if description already have value , it should not fill it up
    // with default value : 'For detail , see subject'

    for (sObject each : csvCases) {
      // downcast sObject to Case type or we will not have access to case fields
      Case eachCase = (Case) each;
      System.debug('case descriptopn : ' + eachCase.Description);
      // assert the Description is not filled up by default value
      System.assertNotEquals('For detail , see subject', eachCase.Description);
    }
  }
}
