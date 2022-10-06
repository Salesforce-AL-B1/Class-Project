public with sharing class OppsController {
  @AuraEnabled(cacheable=true)
  public static List<Opportunity> getAllOpps() {
    return [
      SELECT Id, Name, Amount, StageName
      FROM Opportunity
      WITH SECURITY_ENFORCED
      ORDER BY Amount DESC NULLS LAST
      LIMIT 10
    ];
  }

  @AuraEnabled(cacheable=true)
  public static List<Opportunity> getAllOppsByStage(String stage) {
    return [
      SELECT Id, Name, Amount, StageName
      FROM Opportunity
      WHERE StageName = :stage
      WITH SECURITY_ENFORCED
      ORDER BY Amount DESC NULLS LAST
      LIMIT 10
    ];
  }
}
