public class Bird extends Animal {
  // public String name ;  // coming from parent
  public boolean canFly; // sub class or child class can define additional fields that parent does not have

  public Bird() {
    // in any constructor
    // first line of code is implicitly making a call to super class no arg constructor
    System.debug('Bird no arg constructor');
  }

  public Bird(String name, Boolean canFly) {
    this.name = name;
    this.canFly = canFly;
  }

  //public void makeNoise(){
  //    System.debug(  this.name +  ' is making noise');
  //}
  // In order to override a parent method marked as Virtual
  // Child class method must be defined using keyword override
  public override void eat() {
    System.debug('Bird eat');
  }
}
