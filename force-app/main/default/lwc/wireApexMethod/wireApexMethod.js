import getSingleAccount from "@salesforce/apex/AccountController.getSingleAccount";
import { LightningElement, wire } from "lwc";
import { getSObjectValue } from "@salesforce/apex";
//import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import ACCOUNT_NAME_FIELD from "@salesforce/schema/Account.Name";
import REVENUE_FIELD from "@salesforce/schema/Account.AnnualRevenue";

export default class WireApexMethod extends LightningElement {
  account;

  @wire(getSingleAccount)
  wiredAccount({ data, error }) {
    if (data) {
      this.account = data;
      this.error = undefined;
    } else if (error) {
      this.account = undefined;
      this.error = error;
    }
  }

  // getSObjectValue will accept two parameter ,
  // the record and field name you want to extract
  get name() {
    return getSObjectValue(this.account, ACCOUNT_NAME_FIELD);
  }

  get revenue() {
    return getSObjectValue(this.account, REVENUE_FIELD);
  }
}
