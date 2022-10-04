import { LightningElement, wire } from 'lwc';
import { getRecord , getFieldValue} from 'lightning/uiRecordApi';
import ACCOUNT_NAME_FIELD from '@salesforce/schema/Account.Name';
import REVENUE_FIELD from '@salesforce/schema/Account.AnnualRevenue'; 


export default class WiredGetRecordProperty extends LightningElement {

    // make sure to put account record id in your own org 
    @wire(getRecord, {recordId: '0018V00002OV3TQQA1', fields:[ACCOUNT_NAME_FIELD, REVENUE_FIELD]})
    returnedaccount ; 

    get name(){
        return getFieldValue(this.returnedaccount.data ,ACCOUNT_NAME_FIELD  ); 
    }

    get revenue(){
        return getFieldValue(this.returnedaccount.data ,REVENUE_FIELD  ); 
    }



}