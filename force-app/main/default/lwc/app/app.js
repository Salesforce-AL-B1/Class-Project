import { LightningElement } from "lwc";

export default class App extends LightningElement {
  bike = {
    name: "Electra X4",
    description: "A sweet bike built for comfort.",
    category: "Mountain",
    material: "Steel",
    price: "$2,700",
    pictureUrl:
      "https://s3-us-west-1.amazonaws.com/sfdc-demo/ebikes/electrax4.jpg"
  };
  // simulate page load with forced 3 seconds wait
  ready = false;
  // This is a lifecycle hook method that run right before the component added to html dom
  // we are using it here to add 3 second wait time before it's added to html dom
  connectedCallback() {
    setTimeout(() => {
      this.ready = true;
    }, 3000);
  }
}
