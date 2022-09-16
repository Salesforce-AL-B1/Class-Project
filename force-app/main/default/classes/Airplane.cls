// a class extends only one class
// a class can implements multiple interface
// if a class implements a interface
// it must override all the abstract methods from the interface
public class Airplane implements Flyable {
  // this is overriding the method coming from Flyable
  public void fly() {
    System.debug('Airplane Implementing Flyable fly functionality');
  }

  public Boolean isFlying() {
    System.debug('is it flying ?');
    return true;
  }
}
