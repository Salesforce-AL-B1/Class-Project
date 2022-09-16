public class Car {
  // access modifier :  public , protected,  private (default is private) , global
  private String make;
  //private String model;
  public String model { get; set; }
  // https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_classes_properties.htm
  // if you want a field to be readonly you can only provide getter and it will be readonly anywhere including same class
  // public String readOnlyColor {get;}
  // if you want a field to be writeonly you can only provide setter and it will be writeonly anywhere including same class
  // public String writeOnlyTire {set;}

  //private Integer year;
  // year field
  public Integer year {
    get {
      System.debug('running getter method for year field | property');
      return year;
    }
    set {
      System.debug('running setter method for year field | property');
      year = value;
    }
  }

  // constructor to set the instance field values
  public Car(String make, String model, Integer year) {
    this.make = make;
    this.model = model;
    this.year = year;
  }
  // getters and setters to access fields
  public String getMake() {
    return this.make;
  }
  public void setMake(String make) {
    this.make = make;
  }
}
/**
 * // year is being set by setter 
// so you will see setter is running for year
Car c = new Car('Honda','Civic', 2022);

//System.debug(c.make);
//System.debug(c.getMake() ); 
// we are accessing model so getting is running and below is printing 
System.debug(c.model);
// accessing year -> getter is running and below is printing 
System.debug('year ' + c.year);
// setting the year setter block is running 
c.year = 2050 ; 
// reading the year getter block is running and below is printing
System.debug('updated year ' + c.year);
**/
