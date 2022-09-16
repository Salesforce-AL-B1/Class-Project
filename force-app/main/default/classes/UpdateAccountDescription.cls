public class UpdateAccountDescription implements Queueable {
  // provide a functionality to pass List of Account and Description you want to update
  List<Account> accLst;
  String updatedDescription;

  // create a constructor to set above two instance variable values
  public UpdateAccountDescription(
    List<Account> accLst,
    String updatedDescription
  ) {
    this.accLst = accLst;
    this.updatedDescription = updatedDescription;
  }

  public void execute(QueueableContext context) {
    System.debug('Hello word from Queuebale Execute Method');
    System.debug('context ' + context);

    for (Account each : accLst) {
      each.Description = updatedDescription;
    }
    update accLst;
  }
}
