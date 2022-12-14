import { LightningElement } from "lwc";

// export default make it available for outside
export default class HelloComponent extends LightningElement {
  // this is property of the class
  // can be referred in HTML file by using {propertyName} syntax
  // no variable declaration needed like var , let , consts
  greeting = "World";

  lastName = "LWC DAY 1";

  // this is a function
  changeHandler(event) {
    // this can pick up the value entered by the user into text box
    this.greeting = event.target.value;
    // print out in browser console
    console.log("change detected " + event.target.value);
    console.log("element label " + event.target.label);
  }

  lastNameHandler(event) {
    this.lastName = event.target.value;
  }
}
