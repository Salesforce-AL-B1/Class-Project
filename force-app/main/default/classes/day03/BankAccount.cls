/*
In programming , Class is an blueprint for object 
We want to create BankAccount to represent BankAccount object 
 instance fields : 
   name as String 
   accountNumber as Integer
   balance as Double 
 instance methods : 
	displayInfo 
		accept no param , return nothing 
	    print out every detail of account name , account number , balance 
	getBalance 
		accept no param , return balance as is 
	deposit
		accept a Double , increase the balance 
	withdraw
		accept a Double , decrease the balance 
		optionally , make sure it's not overdraft , can not withdraw the money you dont have
  
*/
public class BankAccount {
    // instance variable  -> non-static variable 
    // used to define properties of objects
    // we created 3 instance variable for BankAccount
    // Any bank account created from this class(blue print)
	// 	will have those 3 properties 
    // need an object to be accessed
    public String name ; 
    public Integer accountNumber ; 
    public Double balance ; 
    
    
    // Constructor is a special method that has same name as class
    // has no return type and it will run when the object is being created 
    // it will be called automatically when object is bing created 
    public BankAccount(){
        System.debug('New Bank Account is being created , no arg cosntructor');
    }
    // we can have more than one constructor that accept different parameneters 
    /**
     * This consturctor meant to accept 3 value and set the value of 
     * instance variables name , accountNumber and balance to provided value
     */
    public BankAccount(String nameValue, Integer accountNumValue, Double balanceValue ){
        
        name 			= nameValue ; 
        accountNumber 	= accountNumValue ; 
        balance 		= balanceValue ; 
    }
    
    
    
    // instance method , need an object to be called
    public void displayInfo(){
        
        System.debug('Name is ' + name 
              + ' AccountNumber is ' + accountNumber
              + ' Balance is ' + balance);
        
    }
    
    public static void whatDoesTheBankDo(){
        System.debug('BANK IS FOR DEALING WITH MONEY');
    }
    
    
    
    

}