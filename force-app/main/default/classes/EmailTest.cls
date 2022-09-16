@isTest
public class EmailTest {
  @isTest
  static void test1() {
    EmailManager.sendMail(UserInfo.getUserEmail(), 'Hello', 'There');
  }
}
