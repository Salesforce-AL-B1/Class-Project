import { LightningElement, track } from "lwc";

export default class DataBindingObjectArray extends LightningElement {
  // create a property for location
  //type object and has 2 keys for city and state

  @track // track decorator can be used to add interactivity to objects and array
  location = {
    city: "LA",
    state: "California"
  };

  // create a method to handle the onchange event
  handleLocationChange(event) {
    // event.target will return the element where the event is fired from
    // and you can access it's attribute like value , labels or any other attributes
    console.log(event.target.value);
    // print out the name attribute of the element that fired the event
    console.log(event.target.name);

    // Create a variavle to store above value for element name , var , let , const
    let elementName = event.target.name;
    // == will check for value only and === will check for value and type
    if (elementName === "city") {
      this.location.city = event.target.value;
    } else if (elementName === "state") {
      this.location.state = event.target.value;
    }
  }
}
