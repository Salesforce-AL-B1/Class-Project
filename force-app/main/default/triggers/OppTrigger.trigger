// 7 events this trigger code will run
/*  before insert
    before update
    before delete
    after insert
    after update
    after delete
    after undelete
*/
trigger OppTrigger on Opportunity(
  before insert,
  after insert,
  before update,
  after update,
  before delete,
  after delete,
  after undelete
) {
  // Context Variable  Trigger.OperationType
  System.debug('What event triggered this to run ? ' + Trigger.OperationType);
  System.debug('How many record entered this trigger run? ' + Trigger.size);

  // Context Varibale Trigger.new = > list of Opportunity that entered the trigger
  // Context variable Trigger.isBefore Trigger.isInsert

  // How to access old values in update event
  // Eveytime opportunity amount is updated m print out old value and value
  // This can be done in both before and after update , we happened to just pick up after update here
  // do not try to update same record in after update block to enter accidental infinite loop
  if (Trigger.isAfter && Trigger.isUpdate) {
    // Trigger.new hold all the new values for sObject entered the execution
    // Trigger.old hold all the old|prior values for sObject entered the execution before update happen
    // Trigger.oldMap hold all Id,Sobject pair with the old|prior values for sObject entered the execution before update happen
    for (Opportunity eachNew : Trigger.new) {
      System.debug('New Amount is ' + eachNew.Amount);
      // recordId will never change no matter what field was update
      // so updated record and old record prior to update will have same ID
      // In order to get sObject with old values by Id
      // we can use Trigger.oldMap => Id , sObject with old field value
      Opportunity eachOld = Trigger.oldMap.get(eachNew.Id);
      System.debug('Old Amount is ' + eachOld.Amount);
    }
  }

  // Send out an email after the record is deleted
  // Use utility class you added and the method sendEmail with 3 params
  // EmailManager.sendEmail('YouEmail@gmail.com','YourSubject','Email body here');
  if (Trigger.isAfter && Trigger.isDelete) {
    for (Opportunity each : Trigger.old) {
      // send email
      String subject = 'Record with name ' + each.Name + ' was deleted';
      String body =
        'Stage was ' +
        each.StageName +
        ' Amount was ' +
        each.Amount;
      // call the method to send email
      //EmailManager.sendMail('yourmail@gmail.com', subject, body) ;
      // UserInfo utility class is used to access currently logged in user record info
      // for example this will return currently loggedin user email :
      // UserInfo.getUserEmail()
      // for more available methods UserInfo. and observe all the options

      EmailManager.sendMail(UserInfo.getUserEmail(), subject, body);
    }
  }

  // Create a task to review undeleted opportunities (restored from recycle bin)
  if (Trigger.isAfter && Trigger.isUndelete) {
    System.debug('After UnDelete action is being taken ');
    // Only Trigger.new is available for accessing records in undelete event
    // Create a List of task to add 1 task for each record entered this trigger
    List<Task> tasksToBeAdded = new List<Task>();

    for (Opportunity each : Trigger.New) {
      Task t = new Task();
      t.Subject = 'check on restored opps';
      t.ActivityDate = System.today(); //Date.Today();
      t.WhatId = each.Id;
      // add it to the list
      tasksToBeAdded.add(t);
    }
    //  insert tasks in bulk
    insert tasksToBeAdded;
  }

  // Show error message if Opp with Closed Won Status is being deleted
  // This should be done in Before Delete event
  // Trigger.new is not available in Delete event
  // So we need to use Trigger.old to access the record that entered the execution
  if (Trigger.isBefore && Trigger.isDelete) {
    System.debug('Before Delete action is being taken ');

    for (Opportunity each : Trigger.old) {
      //System.debug('Deleting opp ' +  each.Name);
      // if it's in Closed Won Status = show error , can not delete closed won opps
      if (each.StageName == 'Closed Won') {
        each.addError('Can not delete closed won opportunities');
      }
    }
  }

  // when record is updated , if there is Tracking Number for this opp record
  // Delivery Status field must not be null ,
  // if it is show error message => Must have Delivery Status if tracking number exists
  if (Trigger.isBefore && Trigger.isUpdate) {
    System.debug('Before Update action is being taken ');
    for (Opportunity each : Trigger.new) {
      //each.DeliveryInstallationStatus__c
      //each.TrackingNumber__c
      if (
        each.TrackingNumber__c != null &&
        each.DeliveryInstallationStatus__c == null
      ) {
        System.debug('Must have Delivery Status if tracking number exists ');
        // add error method from sObject can display error upon failed save operation
        each.addError('Must have Delivery Status if tracking number exists');
      }
    }
  }

  // when new record is created, create a new task that associated with this opportunity
  if (Trigger.isAfter && Trigger.isInsert) {
    System.debug('After Insert action is being taken ');

    // Create a List of Task to store the task records to be inserted
    List<Task> listOfAllTasks = new List<Task>();

    for (Opportunity each : Trigger.new) {
      Task t = new Task();
      t.Subject = 'Follow up on this new opp Record';
      t.ActivityDate = Date.today();
      t.WhatId = each.Id;
      // add this task to the list
      listOfAllTasks.add(t);
      //insert t ;  // RED FLAG , DML INSIDE LOOP
    }
    // add the task in bulk instead of one by one inside loop as best practice
    insert listOfAllTasks;
  }

  // when new record is created if the amount field is empty  fill it up with 1000
  if (Trigger.isBefore && Trigger.isInsert) {
    System.debug('Before Insert action is being taken ');
    // Trigger Loop  = >  for(Your_SObjectType each : Trigger.new){}
    for (Opportunity each : Trigger.new) {
      if (each.Amount == null) {
        // This update does not need DML Operation
        // because BEFORE INSERT => SAVE => AFTER INSERT
        each.Amount = 1000;
      }
    }
  }

}
