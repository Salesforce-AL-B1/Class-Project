trigger PracticeTrigger on Lead(before insert) {
  for (Lead each : Trigger.new) {
    System.debug('Lead Last Name ' + each.LastName);
    each.Description = 'Update upon insert';
  }

}
