//import getAllOpps from "@salesforce/apex/OppsController.getAllOpps";
import getAllOppsByStage from "@salesforce/apex/OppsController.getAllOppsByStage";
import { LightningElement, wire } from "lwc";
import {NavigationMixin} from 'lightning/navigation';

// display opps name , stage , amount

const actions = [
    {label: 'View' , name : 'view'} ,
    {label: 'Edit' , name : 'edit'} 
    
];


const COLUMNS = [
  { label: "Opp Name", fieldName: "Name", type: "text" },
  { label: "Amount", fieldName: "Amount", type: "currency" },
  { label: "Stage", fieldName: "StageName", type: "text" },
  { type: "action"  , 
    typeAttributes : {rowActions:  actions } 
  }
];

export default class OppsTable extends NavigationMixin(LightningElement) {
  columns = COLUMNS;

  //@wire(getAllOpps)
  @wire(getAllOppsByStage, { stage: "Closed Won" })
  opps;


  handleRowLevelAction(event){

      // print out action name 
      // print out the record row where the button is clicked 
      const buttonName = event.detail.action.name ;
      //console.log(buttonName);
      //const recordId   =  event.detail.row.Id ;

      this[NavigationMixin.Navigate]({
        type: 'standard__recordPage',
        attributes: {
            objectApiName: 'Account',
            actionName: buttonName,
            recordId:  event.detail.row.Id
        }
      });


  }


}
