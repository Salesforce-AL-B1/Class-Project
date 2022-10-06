import findContacts from "@salesforce/apex/ContactController.findContacts";
import { LightningElement, wire } from "lwc";

export default class ContactsWithSearch extends LightningElement {
  // property to bind what user type into searchbox
  nameToSearch = "";
  // call apex method by passing what user typed as parameter
  @wire(findContacts, { searchKey: "$nameToSearch" })
  contacts;

  handleKeyChange(event) {
    // below line is all we need if we just want to call apex method any time key change
    // this.nameToSearch = event.target.value ;

    // however making too much apex request before user finish typing is not ideal

    // clear out current delay timeout
    window.clearTimeout(this.delayTimeout);
    // store the changed value
    const value = event.target.value;
    // only change the value of nameToSearch
    // if it's within the delay timeout of 300 ms
    // eslint-disable-next-line @lwc/lwc/no-async-operation
    this.delayTimeout = setTimeout(() => {
      this.nameToSearch = value;
    }, 300);
  }
}
