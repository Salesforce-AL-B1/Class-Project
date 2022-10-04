import { LightningElement, api, wire } from 'lwc';
import { getRecord } from 'lightning/uiRecordApi';
import ACCOUNT_NAME_FIELD from '@salesforce/schema/Account.Name';
import REVENUE_FIELD from '@salesforce/schema/Account.AnnualRevenue'; 

export default class WireGetRecord extends LightningElement {
    // recordId meant to be injected from record page 
    @api recordId;
    // a property we use to store returned record data 
    data;
    name; 
    revenue; 
    // a property we use to store if any error returned 
    error;
    // using @wire to call getRecord method by provoding 2 parameters
    // and make the result available to the method below 
    @wire(getRecord, { recordId: '$recordId', fields: [ACCOUNT_NAME_FIELD,REVENUE_FIELD] })
    // {data, error} will contain the result of above method class 
    wiredAccount({data, error}) {
        console.log('Execute logic each time a new value is provisioned');
        console.log(data)
        // if data is not undefined or null 
        if (data) {
            this.data = data;  // setting the property value with actual value
            this.name = this.data.fields.Name.value ; 
            this.revenue = this.data.fields.AnnualRevenue.value ; 
            
            this.error = undefined; // setting error to undefined since this branch will not have error
        } else if (error) {
            this.error = error; // setting the error value with actual value
            this.data = undefined; // no data is return so setting it to undefined
        }
    }
}