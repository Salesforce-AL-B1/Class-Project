public class Day5_Map_Loop_Practice {
    
    public static void run(){
        
        // create a map of fruit names and count 
        // providing the key value along with object creation 
       	Map<String, Integer> fruitMap = new Map<String, Integer> { 'Banana'=>3 , 'Apple'=>8 , 'Peach'=> 10  }; 
        System.debug('fruitMap ' +fruitMap );
        
        // get all the keys in the map and store it 
        // keySet() method return all the keys in Set<Your Key Data Type>
        
        //System.debug('All the keys ' + fruitMap.keySet() );
        Set<String> allKeys = fruitMap.keySet() ; 
        System.debug('All the keys using fruitMap.keySet() =>  ' + allKeys) ; 
                
        // get all the values in the map and store it 
        // values megthod will return all the values in List<your value data type here>
        //System.debug('All the values in the map ' + fruitMap.values() );
        List<Integer> allValues = fruitMap.values(); 
        System.debug('All the values using fruitMap.values() ' + allValues) ; 
        
        
        // Loop the keyset and print 
        for(String eachKey :  allKeys ){
            System.debug('key   :  ' + eachKey );
            // get the value according to the key
            System.debug('value :  ' +  
                         fruitMap.get(eachKey) ) ; 
        }
        
        
        
    }
    

}