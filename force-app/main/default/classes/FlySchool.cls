public class FlySchool {
  // create a static void method that accept 1 parameter
  // the paremeter should be able to accept either Airplane object or Butterfly object
  // or anything that IS-A Flyable
  // and inside method simply print the object and call it's fly method

  public static void performFly(Flyable flyingThing) {
    System.debug(flyingThing);
    flyingThing.fly();
  }

  public static Flyable getFlyableThing() {
    return new Eagle();
  }

  public static void printSObject(sObject o) {
    System.debug('o ' + o);
  }
}

/**
 * 
FlySchool.printSObject(  new Account(Name='Test Account')  ); 

FlySchool.printSObject(  new Lead(LastName='Test Lead', Company='ZZZ' )  ); 

FlySchool.printSObject(  new Contact(LastName='Test Lead' )  ); 



//FlySchool.performFly( new ButterFly()  ); 

Butterfly b = new Butterfly() ; 
FlySchool.performFly( b ); 


Airplane f1 = new Airplane(); 
FlySchool.performFly( f1 ); 

Eagle e = new Eagle(); 
FlySchool.performFly(  e  ); 
Airplane f1 = new Airplane(); 
f1.fly(); 
f1.isFlying() ; 

Flyable f2 = new Airplane(); 
f2.fly();
f3.isFlying() ; 

Butterfly f3 = new Butterfly(); 
f3.fly(); 
f3.isFlying() ; 

Flyable f4 = new Butterfly(); 
f4.fly();
f4.isFlying() ; 
**/

