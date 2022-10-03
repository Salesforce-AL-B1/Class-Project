import { LightningElement, api } from "lwc";
import { ShowToastEvent } from "lightning/platformShowToastEvent";

import ACCOUNT_OBJECT from "@salesforce/schema/Account";
import NAME_FIELD from "@salesforce/schema/Account.Name";
import REVENUE_FIELD from "@salesforce/schema/Account.AnnualRevenue";
import ACC_NUMBER_FIELD from "@salesforce/schema/Account.AccountNumber";
import INDUSTRY_FIELD from "@salesforce/schema/Account.Industry";
import RATING_FIELD from "@salesforce/schema/Account.Rating";
import PHONE_FIELD from "@salesforce/schema/Account.Phone";

export default class AccountCreator extends LightningElement {
  @api recordId;

  objectApiName = ACCOUNT_OBJECT;
  fields = [
    NAME_FIELD,
    PHONE_FIELD,
    REVENUE_FIELD,
    ACC_NUMBER_FIELD,
    INDUSTRY_FIELD,
    RATING_FIELD
  ];

  handleSuccess(event) {
    const toastEvent = new ShowToastEvent({
      title: "Account created successfully",
      message: "Record ID: " + event.detail.id,
      variant: "success"
    });
    this.dispatchEvent(toastEvent);
  }
}
