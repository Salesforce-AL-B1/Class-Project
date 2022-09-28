import { LightningElement } from "lwc";

export default class Practice extends LightningElement {
  firstName = "Adam";
  lastName = "Jones";

  number1 = 10;
  number2 = 20;
  // creating a property called dog ,
  // and assigning it's value to a object literal
  dog = {
    name: "Borsik",
    breed: "Husky",
    color: "brown"
  };

  // getter method allow you to
  // process your property with any logic and return value
  // so it can be used inside the template
  get upperCasedFirstName() {
    return this.firstName.toUpperCase();
  }

  get uppercasedFullName() {
    // var , let as variable type that can vary
    // const  as variable type that can not change
    // this how we can create local variable
    //let uFirst =  this.firstName.toUpperCase();
    //let uLast  =  this.lastName.toUpperCase();

    //return uFirst + ' ' + uLast ;
    // This is called template string enclosed inside backtick instead of single or double quuote
    // it can read your variables or expressions inside ${yourexperssion goes here}
    //return `Template String :  ${uFirst} ${uLast}` ;

    return `Result : ${this.firstName.toUpperCase()} ${this.lastName.toUpperCase()} `;

    //return this.firstName.toUpperCase() + " " + this.lastName.toUpperCase();
  }

  get additionResult() {
    // return this.number1 + this.number2
    //return 'The result was : ' + ( this.number1 + this.number2 ) ;
    return `The result was ${this.number1 + this.number2} `;
  }

  get dogInfo() {
    return `Dog info Templete String : 
            Dog name : ${this.dog.name}
            Dog breed : ${this.dog.breed}
            Dog color : ${this.dog.color}`;
  }
}
