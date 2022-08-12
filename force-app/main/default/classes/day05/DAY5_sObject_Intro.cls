public class Day5_sObject_Intro {
  public static void run() {
    // Account is sObject type that provided by salesforce and we can directly use it
    // It's the Account under object manager of your salesforce UI
    Account a1 = new Account();
    // in order to access the field value , we can use Object.Field_API_NAME
    a1.Name = 'From Apex';
    a1.AccountNumber = 'A1009877';
    // ONLY FOR SOBJECT
    // YOU CAN FILL UP THE FILED VALUE USING
    // API_NAME=THE_VALUE directly while you are creating object
    // This will not work for anything other than sObject types
    Account a2 = new Account(AnnualRevenue = 100000);

    System.debug('a1 ' + a1);
    System.debug('a2 ' + a2);

    // DML Operation (insert, update , upsert, delete , undelete )
    // can be performed on sObject instance to directly add, update , delete record
    // into your salesforce organization
    //insert a1 ;
    //insert a2 ;

    Lead p1 = new Lead(LastName = 'From Apex', Company = 'Trailhead');
    //insert p1 ;
    // create a list to store multiple Lead object
    List<Lead> myLeadLst = new List<Lead>();

    myLeadLst.add(p1);
    // adding lead object directly to Lead List
    myLeadLst.add(new Lead(LastName = 'lead 1', Company = 'Trailhead'));
    myLeadLst.add(new Lead(LastName = 'lead 2', Company = 'Trailhead'));
    myLeadLst.add(new Lead(LastName = 'lead 3', Company = 'Trailhead'));

    System.debug('myLeadLst ' + myLeadLst);
    // insert DML Command , accept 1 sObject or List<sObject> in this case List<Lead>
    //insert myLeadLst ;
  }
}
