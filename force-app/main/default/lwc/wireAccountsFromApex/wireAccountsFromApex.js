import getAccounts from "@salesforce/apex/AccountController.getAccounts";
import { LightningElement, wire } from "lwc";

export default class WireAccountsFromApex extends LightningElement {
  @wire(getAccounts)
  accounts;
}
