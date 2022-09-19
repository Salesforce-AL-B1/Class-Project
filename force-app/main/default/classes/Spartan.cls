/**
 * This is a class created to represent the structure of JSON
 * so we can use JSON.deserialize method and provide the type 
 * to convert Json String into Spartan Object
 * {
	 "id": 4,
	 "name": "Paige",
	 "gender": "Female",
	 "phone": 3786741487
	}      
   ==>  new Spartan( 4, Paige , female,  3786741487  ); 
 */
public class Spartan {
  public Integer id;
  public String name;
  public String gender;
  public Long phone;

  public Spartan() {
  }

  public Spartan(String name, String gender, Long phone) {
    this.name = name;
    this.gender = gender;
    this.phone = phone;
  }
}
