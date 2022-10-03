import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import LEAD_OBJECT from '@salesforce/schema/Lead';
import FNAME_FIELD from '@salesforce/schema/Lead.FirstName';
import LNAME_FIELD from '@salesforce/schema/Lead.LastName';
import COMPANY_FIELD from '@salesforce/schema/Lead.Company';


export default class LeadCreator extends LightningElement {

    objectApiName = LEAD_OBJECT ; 
    fields  = [FNAME_FIELD, LNAME_FIELD, COMPANY_FIELD]; 

    handlesuccess(event){

        const toastEvent = new ShowToastEvent({
                                title : 'Lead Created',
                                message : 'New Record ID ' + event.detail.id,
                                variant : 'success'
                            }); 
        this.dispatchEvent(toastEvent); 
        console.log(event.detail); 
    }

}