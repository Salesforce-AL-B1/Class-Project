import { LightningElement,wire } from 'lwc';
import { NavigationMixin } from 'lightning/navigation';
import getSingleAccount from '@salesforce/apex/AccountController.getSingleAccount';

export default class Navigation extends  NavigationMixin(LightningElement) {


    // call apex method getSingleAccount and create a button to navigate to that record 
    @wire(getSingleAccount)
    account; 


    navigateToAccountHome(){

        this[NavigationMixin.Navigate]({
            type: 'standard__objectPage',
            attributes: {
                objectApiName: 'Account',
                actionName: 'home'
            }
        });

    }

    navigateToNewAccountModal(){

        this[NavigationMixin.Navigate]({
            type: 'standard__objectPage',
            attributes: {
                objectApiName: 'Account',
                actionName: 'new'
            }
        });

    }


    navigateToMyAccountRecord(){

        this[NavigationMixin.Navigate]({
            type: 'standard__recordPage',
            attributes: {
                objectApiName: 'Account',
                actionName: 'view',
                recordId: this.account.data.Id
            }
        });

    }

    editMyCoolAccountRecord(){

        this[NavigationMixin.Navigate]({
            type: 'standard__recordPage',
            attributes: {
                objectApiName: 'Account',
                actionName: 'edit',
                recordId: this.account.data.Id
            }
        });

    }



}