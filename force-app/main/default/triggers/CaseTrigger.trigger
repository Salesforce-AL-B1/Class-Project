trigger CaseTrigger on Case(before insert) {
  System.debug('Event that triggered this : ' + Trigger.OperationType);

  /**
   *  Write a before insert trigger to fill up
   *  Description if it is empty
   *
   */
  if (Trigger.isBefore && Trigger.isInsert) {
    for (Case each : Trigger.New) {
      if (each.Description == null) {
        each.Description = 'For detail , see subject';
      }
    }
  }

}
