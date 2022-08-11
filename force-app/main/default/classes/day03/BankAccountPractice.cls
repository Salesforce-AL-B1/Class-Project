// IN ORDER TO FORMAT YOUR CODE NICELY 
//  SELECT ALL LINES  SHIFT + TAB   
//  CREDIT : SERIFE
public class BankAccountPractice {
    
    public static void run1(){
        
        // this will call constructor with no argument 
        BankAccount b1 = new BankAccount() ; 
        b1.name = 'Jon Snow' ; 
        b1.accountNumber = 1234567890 ;
        b1.balance  = 15000000 ; 
        
        System.debug('Name of this account is ' + b1.name);
        b1.displayInfo(); 
        
        BankAccount b2 = new BankAccount() ;
        b2.name = 'Salesforce Guy'; 
        b2.accountNumber = 99999999 ; 
        b2.balance = 50000000 ; 
        
        b2.displayInfo() ; 
        
        
        BankAccount.whatDoesTheBankDo() ; 
        // this will call constructor with 3 arguments 
        BankAccount b3 = new BankAccount('Salesforce', 1000, 150000);
        b3.displayInfo() ; 
        
    }
    
}