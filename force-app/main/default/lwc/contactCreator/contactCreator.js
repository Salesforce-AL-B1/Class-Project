import { LightningElement , api } from 'lwc';
import CONTACT_OBJECT from '@salesforce/schema/Contact' ;
import FNAME_FIELD from '@salesforce/schema/Contact.FirstName' ;
import LNAME_FIELD from '@salesforce/schema/Contact.LastName' ;
import EMAIL_FIELD from '@salesforce/schema/Contact.Email' ;
import { ShowToastEvent } from "lightning/platformShowToastEvent";

export default class ContactCreator extends LightningElement {

    @api recordId ; 
    objectApiName = CONTACT_OBJECT ; 
    fields = [FNAME_FIELD, LNAME_FIELD, EMAIL_FIELD]

    handleSuccess(event) {
        const toastEvent = new ShowToastEvent({
          title: "Contact created successfully",
          message: "Record ID: " + event.detail.id,
          variant: "success"
        });
        this.dispatchEvent(toastEvent);
      }


}