import findContacts from "@salesforce/apex/ContactController.findContacts";
import { LightningElement, wire } from "lwc";

export default class ContactsWithSearch extends LightningElement {
  nameToSearch = "";

  @wire(findContacts, { searchKey: "$nameToSearch" })
  contacts;

  handleKeyChange(event) {
    window.clearTimeout(this.delayTimeout);

    const value = event.target.value;
    // only change the value of nameToSearch
    // if it's within the delay timeout of 300 ms
    // eslint-disable-next-line @lwc/lwc/no-async-operation
    this.delayTimeout = setTimeout(() => {
      this.nameToSearch = value;
    }, 300);
  }
}
