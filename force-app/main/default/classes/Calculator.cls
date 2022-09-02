// This calculator class has add , subtract functionality

public class Calculator {
  public static Integer add(Integer num1, Integer num2) {
    Integer result = num1 + num2;
    return result;
  }

  public static Integer subtract(Integer num1, Integer num2) {
    Integer result = num1 - num2;
    return result;
  }

  @testVisible // this annotation will allow the method still be private but accessible in test so we can have full test coverage
  private static Integer multiply(Integer num1, Integer num2) {
    return num1 * num2;
  }

  public static Integer divide(Integer num1, Integer num2) {
    // if num2 is 0  just make the whole result 0
    // else return the division result as whole number
    if (num2 == 0) {
      return 0;
    } else {
      return num1 / num2;
    }
  }
}
