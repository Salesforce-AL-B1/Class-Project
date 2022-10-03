import { LightningElement } from "lwc";
import { ShowToastEvent } from "lightning/platformShowToastEvent";
import BOOK_OBJECT from "@salesforce/schema/Book__c";
import NAME_FIELD from "@salesforce/schema/Book__c.Name";
import CHAPTER_FIELD from "@salesforce/schema/Book__c.ChapterCount__c";
import PRICE_FIELD from "@salesforce/schema/Book__c.Price__c";

export default class BookCreator extends LightningElement {
  objectApiName = BOOK_OBJECT;
  fields = [NAME_FIELD, CHAPTER_FIELD, PRICE_FIELD];

  handleSuccess(event) {
    const toastEvent = new ShowToastEvent({
      title: "Account created successfully",
      message: "Record ID: " + event.detail.id,
      variant: "success"
    });
    this.dispatchEvent(toastEvent);
  }
}
