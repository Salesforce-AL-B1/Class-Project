public class Lion extends Animal {
  public Integer clawCount;
  // name and breed coming from parent
  // create a constructor to set all fields value

  public Lion() {
    System.debug('Lion no arg constructor');
  }

  public Lion(String name, String breed, Integer clawCount) {
    this.name = name;
    this.breed = breed;
    this.clawCount = clawCount;
  }

  // override eat method
  public override void eat() {
    System.debug('Breed is ' + this.breed);
    System.debug('Lion is eating ');
  }
}
