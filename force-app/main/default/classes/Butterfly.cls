public class Butterfly implements Flyable {
  public void fly() {
    System.debug('Butterfly take off using 2 wing to fly');
  }

  public Boolean isFlying() {
    System.debug('Butterfly is flying ');
    return true;
  }
}
