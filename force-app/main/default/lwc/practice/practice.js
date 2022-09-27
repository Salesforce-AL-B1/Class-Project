import { LightningElement } from "lwc";

export default class Practice extends LightningElement {
  firstName = "Adam";
  lastName = "Jones";

  number1 = 10;
  number2 = 20;

  // getter method allow you to
  // process your property with any logic and return value
  // so it can be used inside the template
  get upperCasedFirstName() {
    return this.firstName.toUpperCase();
  }

  get uppercasedFullName() {
    return this.firstName.toUpperCase() + " " + this.lastName.toUpperCase();
  }

  get additionResult() {
    return this.number1 + this.number2;
  }
}
