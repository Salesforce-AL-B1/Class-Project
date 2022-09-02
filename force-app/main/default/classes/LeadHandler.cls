public class LeadHandler {
  // Create a static void method
  // 	: nameCleanupBeforeInsertUpdate
  // 		that accept List<Lead>
  // And Make lead first last name Title case
  //
  public static void nameCleanupBeforeInsertUpdate(List<Lead> leadLst) {
    System.debug('Count of Lead entered the trigger ' + leadLst.size());

    for (Lead each : leadLst) {
      each.FirstName = each.FirstName?.toUpperCase();
      each.LastName = each.LastName.toUpperCase();
      System.debug(each);
    }
  }

  /**
   * Create a static method that
   * 	accept a List<Lead> (we will pass Trigger.new when calling the method)
   *  accept a Map<Id, Lead> (we will pass Trigger.oldMap when calling the method )
   */

  public static void addOldCompanyToDescriptionBeforeUpdate(
    List<Lead> leadLst,
    Map<Id, Lead> mapOfIdLead
  ) {
    for (Lead eachNew : leadLst) {
      Lead eachOld = mapOfIdLead.get(eachNew.Id);
      //if the company name change then do the update
      if (eachOld.Company != eachNew.Company) {
        eachNew.Description = 'Old Value is ' + eachOld.Company;
      }
    }
  }
}
