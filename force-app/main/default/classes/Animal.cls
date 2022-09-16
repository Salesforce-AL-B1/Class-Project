// IN ORDER FOR A CLASS TO BE A SUPER(PARENT) CLASS
// IT MUST BE DEFINED WITH THE KEYWORD Virtual
public virtual class Animal {
  public String name;
  // it will make it accessible only in same class + sub classes
  protected String breed;

  public Animal() {
    System.debug('Animal No arg constructor ');
  }

  public Animal(String name) {
    this.name = name;
  }

  // create a method that print : AnimalName is making noise
  public void makeNoise() {
    System.debug(this.name + ' is making noise');
  }
  // in order for child class override parent class method ,
  // this method must be marked as Virtual
  public virtual void eat() {
    System.debug('animal eat');
  }
}
