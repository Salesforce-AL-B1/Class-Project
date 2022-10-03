import { LightningElement, api } from "lwc";
import NAME_FIELD from "@salesforce/schema/Lead.Name";
import COMPANY_FIELD from "@salesforce/schema/Lead.Company";
import PHONE_FILED from "@salesforce/schema/Lead.Phone";

export default class LeadWidget extends LightningElement {
  nameField = NAME_FIELD; // assigning the Name value from the record itself
  companyField = COMPANY_FIELD; // assigning the Company value from the record itself
  phoneField = PHONE_FILED;

  @api recordId;
  @api objectApiName;
}
