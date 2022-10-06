//import getAllOpps from "@salesforce/apex/OppsController.getAllOpps";
import getAllOppsByStage from "@salesforce/apex/OppsController.getAllOppsByStage";
import { LightningElement, wire } from "lwc";

// display opps name , stage , amount

const COLUMNS = [
  { label: "Opp Name", fieldName: "Name", type: "text" },
  { label: "Amount", fieldName: "Amount", type: "currency" },
  { label: "Stage", fieldName: "StageName", type: "text" }
];

export default class OppsTable extends LightningElement {
  columns = COLUMNS;

  //@wire(getAllOpps)
  @wire(getAllOppsByStage, { stage: "Closed Won" })
  opps;
}
