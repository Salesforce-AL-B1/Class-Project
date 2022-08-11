public class ListAndArrayPractice {
    
    
    public static void runArrayCode(){
        
        
        Integer[] numbers = new Integer[3];
        numbers[0] = 10 ; 
        numbers[1] = 20 ; 
        numbers[2] = 30 ;
        //numbers[3] = 40 ; out of bound 
        
        
        System.debug('Numbers are ' + numbers);
        
        // for each loop : 
        
        for(Integer eachNum:  numbers ){
            System.debug('The number is ' + eachNum);
        }
        
        // you can declare and create array object with all items inside directly as below 
        Integer[] numbers2 = new Integer[]{10,20,30,40,50,60,70};
        System.debug('numbers2 values are ' + numbers2 ) ; 
        
        
        
        
    }
    
    
    public static void runListCode(){
        
        // declaring and initializing a list object 
        // in apex there is no separate implementation for collection types
        // List , Set , Map contains implementation itself 
        List<Integer> numbers = new List<Integer>(); 
        // You can use class name. to get the list of available methods
        // then replace the classname with your variable name 
        // for example List.AllMethodsHere->numbers.whatYourWantHere
        numbers.add(10) ; 
        numbers.add(20) ; 
        numbers.add(30) ; 
        numbers.add(40) ; 
        System.debug('numbers list has ' + numbers);
        
        
        for(Integer eachNum  : numbers){
            System.debug('each num is ' + eachNum);
        }
        
        // this is the way to add all items you want in one shot 
        List<Integer> numLst = new List<Integer>{10,20,30,40,50,60} ; 
        System.debug('NumLst values ' + numLst)    ; 
        
        
    }
    

}