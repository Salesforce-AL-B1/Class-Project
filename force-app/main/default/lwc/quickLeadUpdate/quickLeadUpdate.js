import { LightningElement, api } from "lwc";
import PHONE_FIELD from "@salesforce/schema/Lead.Phone";
import SOURCE_FIELD from "@salesforce/schema/Lead.LeadSource";

export default class QuickLeadUpdate extends LightningElement {
  phoneField = PHONE_FIELD;
  sourceField = SOURCE_FIELD;

  @api recordId;
  @api objectApiName;
}
