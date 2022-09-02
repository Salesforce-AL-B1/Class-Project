@isTest
private class TaskUtil_Test {
  /**
   * getTaskPriority method accept leadState as String and return taskPriority as String
   *
   *  scenarios
   * 	   1. leadState is blank (empty String or null )  return null
   *     2. leadState is not blank and length is more than 2  return null
   *
   * 	   3. leadState is not blank and length is not more than 2
   * 			1. if leadState = CA return High
   * 			2. if not 			  return Normal
   *
   */
  @isTest
  static void testBlankLeadStateReturnNull() {
    String leadState = '';
    String actualResult = TaskUtil.getTaskPriority(leadState);
    String expectedResult = null;
    // assert the result
    System.assertEquals(expectedResult, actualResult);

    // or in one shot
    // System.assertEquals(null,  TaskUtil.getTaskPriority('') );
  }

  @isTest
  static void testMoreThan2CharsLeadStateReturnNull() {
    String leadState = 'Virginia';
    String actualResult = TaskUtil.getTaskPriority(leadState);
    String expectedResult = null;
    // assert the result
    System.assertEquals(expectedResult, actualResult);

    // or in one shot
    // System.assertEquals(null,  TaskUtil.getTaskPriority('Virginia') );
  }

  @isTest
  static void testLeadStateCAReturnHigh() {
    String leadState = 'CA';
    String actualResult = TaskUtil.getTaskPriority(leadState);
    String expectedResult = 'High';
    // assert the result
    System.assertEquals(expectedResult, actualResult);

    // or in one shot
    // System.assertEquals('High',  TaskUtil.getTaskPriority('CA') );
  }

  @isTest
  static void testLeadStateNotCAReturnNormal() {
    // when we are here we need to make sure lead state is not null, not CA and not more than 2
    String leadState = 'VA';
    String actualResult = TaskUtil.getTaskPriority(leadState);
    String expectedResult = 'Normal';
    // assert the result
    System.assertEquals(expectedResult, actualResult);

    // or in one shot
    // System.assertEquals('Normal',  TaskUtil.getTaskPriority('VA') );
  }
}
