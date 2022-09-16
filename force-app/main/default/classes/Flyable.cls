// interface is an abstact type and it can not be instantiacted
// it meant to be implemented
// interface has methods with no body
// methods inside interfaces automatically abstract
public interface Flyable {
  // define a void method called fly
  // it's autotically absract and has no body end with ;
  void fly();

  // add method to return boolean called isFlying
  Boolean isFlying();
}
