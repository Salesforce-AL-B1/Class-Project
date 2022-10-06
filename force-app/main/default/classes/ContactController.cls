public with sharing class ContactController {
  // create a method that return the contacts result
  // by partial name search
  // make it available for LWC component
  @AuraEnabled(cacheable=true)
  public static List<Contact> findContacts(String searchKey) {
    String key = '%' + searchKey + '%';
    return [
      SELECT Id, Name, Title, Phone, Email
      FROM Contact
      WHERE Name LIKE :key
      WITH SECURITY_ENFORCED
      LIMIT 10
    ];
  }
}
