// Once you finished with the code save using File-> Save
// or Ctrl + S on windows and Cmd + S on mac 
public class LoopPractice {
    
    
    public static void runForLoop(){
        
        // count from 1 to 10 and print it out 
        
        for(Integer i=1 ; i<=10 ; i++  ){
            
            System.debug('Iteration ' + i);
            
        }
        
        for(Integer j = 10 ; j > 0 ; j--){
            
            System.debug('Coundown ' + j) ; 
            
        }

        
    }
    
    public static void runWhileloop(){
        
        Integer x = 1 ; 
        
        while( x<=10 ){
            
            System.debug('While loop iteration ' + x);
            x++ ; 
        }
        
        Integer y = 10 ; 
        
        while( y > 0){
            
            System.debug('While loop countdown ' + y);
            y-- ; 
            
        }
        
    }
    
    public static void runDoWhileLoop(){
        
        Integer x = 1 ; 
        
        do{
           
            System.debug('Do while Iteration ' + x );
            x++ ; 
            
        }while( x <= 10) ; 
        
        
        Integer y= 10; 
        
        do{
            
            System.debug('Count down ' + y);
            y-- ; 
            
        }while( y>0) ; 
        
        
    }
    
    
    public static void runLoopWithCondition(){
        
        // count from 2-50 , only print even numbers 
        // There is no mod math operator like java using % , there is only + - * /
        // but there is Math helper class that we can use for every Math related operation with built-in methods 
        // mod static method from Math helper class accept 2 numebrs and return remainder after division 
        System.debug('Math.mod(10, 2) ' +  Math.mod(10, 2) ); 
        
        System.debug('Math.mod(10, 4) ' +  Math.mod(10, 4) );
        
        for(Integer i= 2 ; i <= 50 ; i++){
            
            if(  Math.mod(i , 2) == 0 ){
                System.debug('Even number ' + i);
            }
            
        }
        
        
    }
    

}