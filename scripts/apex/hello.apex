// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

string tempvar = 'Enter_your_name_here';
System.debug('Hello World!');
System.debug('My name is ' + tempvar);

// Id recordTypeId = Schema.SObjectType.OBJECT_NAME.getRecordTypeInfosByDeveloperName()
//                       .get('RECORD_TYPE_DEVELOPER_NAME').getRecordTypeId();

// Opportunity op = new Opportunity(Name='Hello', StageName='Prospecting',CloseDate= Date.today(), 
// RecordTypeId= [SELECT Name, RecordType.DeveloperName FROM Opportunity Where RecordType.DeveloperName='B2C Record'][0].DeveloperName );
// insert op ; 