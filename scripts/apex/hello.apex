// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents


BatchCleanUpCases b = new BatchCleanUpCases(); 

Database.executeBatch(b , 10);


// How to schedule the Schedulable job 

System.schedule('Cleanup Cases 1st day of the month', 
                    '0 0 0 1 * ? *', 
                    new ScheduledCaseCleanUp() ); 