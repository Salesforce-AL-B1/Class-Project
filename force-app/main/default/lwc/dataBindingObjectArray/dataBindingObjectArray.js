import { LightningElement, track } from "lwc";

export default class DataBindingObjectArray extends LightningElement {
 
  // create a property for location
  //type object and has 2 keys for city and state
  //To tell the framework to observe changes to the properties of an object, decorate the field with @track.
  @track // track decorator can be used to add interactivity to objects and array
  location = {
    city: "LA",
    state: "California"
  };

  // arrays can be used to store many items of same type
  // [ item1 , item2 , item3 ] ;
  // if you have any logic in your html that need to keep track of internal change
  @track // must be used just like we did above
  fruits = ["Apple", "Orange", "Banana"];

  // create a method to handle the onchange event
  handleLocationChange(event) {
    // event.target will return the element where the event is fired from
    // and you can access it's attribute like value , labels or any other attributes
    console.log(event.target.value);
    // print out the name attribute of the element that fired the event
    console.log(event.target.name);

    // Create a variable to store above value for element name , var , let , const
    let elementName = event.target.name;
    // == will check for value only and === will check for value and type
    if (elementName === "city") {
      this.location.city = event.target.value;
    } else if (elementName === "state") {
      this.location.state = event.target.value;
    }
  }
}
