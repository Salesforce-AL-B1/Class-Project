import { LightningElement } from "lwc";

export default class DataBindingObjectArray extends LightningElement {
  // create a property for location
  //type object and has 2 keys for city and state
  location = {
    city: "LA",
    state: "California"
  };

  // create a method to handle the onchange event
  handleLocationChange(event) {
    console.log(event.target.value);
  }
}
