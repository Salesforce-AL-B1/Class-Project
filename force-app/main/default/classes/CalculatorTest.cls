// Good naming convention for test classes are
//  YourClassNameTest  YourTriggerTest
//  Test classes are not called from other classes
//  so it can be private

@isTest // This will mark this class as Test class
private class CalculatorTest {
  // in order to run test , we need to have test method
  // test methods are static void with no parameter
  // no access modifier needed (default access modifier is private in apex)
  // @isTest annotation will make the method test method
  // In order to assert the result , we can use assert , assertEquals, assertNotEqual from System class

  @isTest
  static void testAdd() {
    // perform addition by calling the method and save the result
    Integer actualResult = Calculator.add(10, 20);
    Integer expectedResult = 30;

    // Write an assertion to compare the expected result to actual result
    //
    //System.assertEquals(expectedResult, actualResult) ;
    // this version of assertEquals allow additional message
    System.assertEquals(
      expectedResult,
      actualResult,
      'Calculator add did not work'
    );
  }

  @isTest
  static void testSubtract() {
    Integer actualResult = Calculator.subtract(10, 5);
    Integer expectedResult = 5;

    System.assertEquals(expectedResult, actualResult);

    // or in one shot as below
    // System.assertEquals(5, Calculator.subtract(10, 5)) ;
  }

  @isTest
  static void testDivisionNon0() {
    Integer actualResult = Calculator.divide(10, 5);
    Integer expectedResult = 2;

    System.assertEquals(expectedResult, actualResult);
  }

  @isTest
  static void testDivisionSecondNumberZero() {
    Integer actualResult = Calculator.divide(10, 0);
    Integer expectedResult = 0;

    System.assertEquals(expectedResult, actualResult);
  }

  @isTest
  static void testPrivateMultiplyMethod() {
    Integer actualResult = Calculator.multiply(10, 9);

    System.assertEquals(90, actualResult);
  }
}
