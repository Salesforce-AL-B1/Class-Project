public class Day2_ListOfBankAccount {
    
    // our objective is to create multiple bank account objects 
    // and store it into List<BankAccount> and do operations in bulk
    // 
    
    public static void runCode(){
        
        //BankAccount[] bankAccounts = new BankAccount[5] ; 
        //Creating a List object to store BankAccount object per element
        List<BankAccount> bankAccounts = new List<BankAccount>() ; 
        
        // Creating 5 BankAccount objects and store it into variables        
        BankAccount b1 = new BankAccount('Account 1' , 10001 , 110000); 
        BankAccount b2 = new BankAccount('Account 2' , 10002 , 120000); 
        BankAccount b3 = new BankAccount('Account 3' , 10003 , 130000); 
        BankAccount b4 = new BankAccount('Account 4' , 10004 , 140000); 
        BankAccount b5 = new BankAccount('Account 5' , 10005 , 150000); 
        
        // Adding the BankAccount objects into the list using add method 
        bankAccounts.add(b1); 
        bankAccounts.add(b2); 
        bankAccounts.add(b3); 
        bankAccounts.add(b4); 
        bankAccounts.add(b5); 
        // optionally you can directly create object and add to the list without using variable as below 
        bankAccounts.add(   new BankAccount('Account 6' , 10006 , 160000)  ); 
        
        //System.debug('bankAccounts list ' + bankAccounts );
        
        // iterate over each item in the list 
        // List<BankAccount> bankAccounts
        // each item in the list is BankAccount
        for(BankAccount each   : bankAccounts   ){
            
            System.debug('Each Bank Account ' + each.name);
            
        }
        
        
        
    }
    
    // or do it in short as below 
    public static void runCode2(){

        //Creating a List object to store BankAccount object per element
        List<BankAccount> bankAccounts = new List<BankAccount>() ; 
        
        // Creating 5 BankAccount objects
        // Adding the BankAccount objects into the list using add method 
        bankAccounts.add(	new BankAccount('Account 1' , 10001 , 110000) ); 
        bankAccounts.add(	new BankAccount('Account 2' , 10002 , 120000) ); 
        bankAccounts.add(	new BankAccount('Account 3' , 10003 , 130000) ); 
        bankAccounts.add(	new BankAccount('Account 4' , 10004 , 140000) ); 
        bankAccounts.add(	new BankAccount('Account 5' , 10005 , 150000) ); 
        bankAccounts.add(   new BankAccount('Account 6' , 10006 , 160000)  ); 
        
        //System.debug('bankAccounts list ' + bankAccounts );
        // iterate over each item in the list 
        // List<BankAccount> bankAccounts
        // each item in the list is BankAccount
        for(BankAccount each   : bankAccounts   ){
            
            System.debug('Each Bank Account ' + each.name);
            
        }
        
        
        
    }
    
    
    
}