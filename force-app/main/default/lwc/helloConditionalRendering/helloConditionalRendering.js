import { LightningElement } from "lwc";

export default class HelloConditionalRendering extends LightningElement {
  areDetailsVisible = false;
  // Use this property to keep track of salary lightning input field
  // create a handler method to keep track of this field
  salary = 0;
  isMoreThan100K = false;

  handleChange(event) {
    console.log("checkbox value " + event.target.checked);
    this.areDetailsVisible = event.target.checked;
  }

  handleSalaryChange(event) {
    this.salary = event.target.value;
    console.log("You have entered " + event.target.value);

    if (this.salary > 100000) {
      this.isMoreThan100K = true;
    } else {
      this.isMoreThan100K = false;
    }
    console.log("Is it more than 100K " + this.isMoreThan100K);
  }
}
