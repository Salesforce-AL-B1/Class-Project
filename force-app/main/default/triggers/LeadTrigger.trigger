trigger LeadTrigger on Lead(after insert) {
  // write a logic to add description after record is saved
  System.debug('What event triggered this? ' + Trigger.OperationType);

  // Query the data using SOQL
  // using Id in :Trigger.new will filter entire Lead according to
  // only what triggered this to run
  // AND THIS IS NOT READ ONLY , YOU CAN DO ANYTHING WITH IT
  // IN AFTER X EVENT , THIS IS THE ONLY WAY TO MAKE MODIFICATION TO CURRENT RECORD
  // THAT TRIGGERED THE TRIGGER TO RUN
  List<Lead> theLeads = [
    SELECT Id, Name, Description
    FROM Lead
    WHERE Id IN :Trigger.new
  ];

  System.debug('the counr is ' + theLeads.size());

  for (Lead each : theLeads) {
    each.Description = 'zzz';
  }
  // ISSUE DML STATEMENT TO ACTUALLY SAVE THIS
  update theLeads;

  // ALL BELOW CODE WILL NOT WORK SINCE ANYTHING WE GOT FROM Trigger.new is readonly
  // in after events , need to use SOQL like above to get the writable List<Lead>

  /**    
    List<Lead> updatedLeads = new List<Lead>( Trigger.new ); 
    
    for(Lead each : updatedLeads ){
        each.Description = 'zzz' ; 
    }
    
    update updatedLeads ; 
   **/
  /**
    for(Lead each  : Trigger.new){
        
        //each.Description = 'after lead is added - after save' ;
        Lead copiedLead = new Lead(); 
             copiedLead.Id = each.Id ; 
             copiedLead.LastName = each.LastName ; 
             copiedLead.Company = each.Company ; 
             copiedLead.Description = 'after lead is added - after save'; 
        
        updatedLeads.add(each); 
        
    }
    **/
  //update updatedLeads;

}
