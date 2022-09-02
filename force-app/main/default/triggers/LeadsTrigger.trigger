trigger LeadsTrigger on Lead(before insert, before update) {
  System.debug(
    'Event that Triggered this execution :  ' + Trigger.OperationType
  );

  /**
        * Write a Trigger to 
        Normalize Lead First Name Last Name in Title Case format whenever Lead is inserted or updated 
        Adam Jones = > ADAM JONES =>
        
        If the requirement was to make it title case we can do below
        FirstName.toLowerCase().capilitalize(); // works for one word first name and last name
        */

  if (Trigger.isBefore && (Trigger.isInsert || Trigger.isUpdate)) {
    // Trigger.new => List<Lead>
    // below method expect List<Lead> so we can just pass Trigger.New to below method
    LeadHandler.nameCleanupBeforeInsertUpdate(Trigger.New);
  }

  /**
   * Scenario : Everytime comany name change , add old Company name value into Description field
   *
   */
  if (Trigger.isBefore && Trigger.isUpdate) {
    LeadHandler.addOldCompanyToDescriptionBeforeUpdate(
      Trigger.New,
      Trigger.oldMap
    );
  }

}

/**   
    // below code was for map practice


// Map<KeyDataType, ValueData Type> store key value pair 
// Trigger.newMap = > Map<Id, Lead> Id of the leads entered the trigger 
//              and Lead records with those Ids with new field values
// Trigger.oldMap = > Map<Id, Lead> Id of the leads entered the trigger 
//              and Lead records with those Ids with old field values

System.debug('Trigger.NewMap ' +  Trigger.NewMap );
// How iterate over a Map object : Map<Id,Lead>
// Iterate over the keys and use the key to get the value
// How to get all the keys in the map = keySet method on Map object

// Loop through all new version of Lead entered the trigger
// print out the updated company name 
// provide the key (Id of lead) to get method for Trigger.oldMap object 
// to get old version of same Lead object 
// Print them out 
for(Lead eachNew   : Trigger.New){

System.debug('New Company Value ' + eachNew.Company);
Lead eachOld = Trigger.OldMap.get(eachNew.Id);
System.debug('Old Company Value ' + eachOld.Company);

}



Set<Id> allKeys = Trigger.newMap.keySet(); 
System.debug('all Keys ' + allKeys);
// Iterate over | Loop Set object to access each element 
for(Id eachId  : allKeys  ){
System.debug('each lead record Id : ' + eachId);
// Get the value using key => MapObject.get(key) => value
// What is the Value data type in this map
// Key is Id , Value is Lead
// You provide the key to get the value 
// Since you value is Lead , you get Lead Object 
Lead updatedLead =  Trigger.newMap.get(eachId);
System.debug('new comapany value ' + updatedLead.Company );
Lead oldLead     =  Trigger.oldMap.get(eachId) ; 
System.debug('old company value '  + oldLead.Company );
}


System.debug('Trigger.oldMap ' +  Trigger.oldMap );
**/
