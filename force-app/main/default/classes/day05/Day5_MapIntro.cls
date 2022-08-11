public class Day5_MapIntro {
    
    public static void run(){
        
        // Map is a data type that store key value pair
        // so unlike List and Set , 
        // we will need to provide key data type and value data type
        
        // declaring Map variable and initializing it's value 
        Map<Integer, String> employeeMap = new Map<Integer, String>(); 
        
        //add item to the Map object  : put(key, value)
        employeeMap.put(100 , 'Omer' ) ; 
        employeeMap.put(101 , 'Aysel' ) ; 
        employeeMap.put(102 , 'Akbar' ) ;
        // Map can not have duplicate key, below line will override the value
        employeeMap.put(102 , 'Fatma' ) ; 
        // key is always unique , no restruction on value 
        
        System.debug('employeeMap ' + employeeMap);
        
        // getting the size of a map 
        System.debug('employeeMap entry count : ' +  employeeMap.size() );
        
        // check whether a key already exists in the map 
        Boolean is100There =  employeeMap.containsKey(100);  
        System.debug('is key 100 exists ? ' + is100There );
        
        // get the value using the key :  get(key goes here) and return value 
        System.debug('The value for key 100 is ' +  employeeMap.get(100) );
        // store the mapped value for key 102 into a variable
        String value102 =  employeeMap.get(102);
        System.debug('The value for key 102 is ' +  value102 );
        
        // remove(key) => remove entire entry(key value pair)
        employeeMap.remove(102);
        System.debug('After removing key 102 ' + employeeMap) ;
        System.debug('Get 102 after removing ' + employeeMap.get(102)  ); //null
        
        // access the value of a key that does not exist => null 
        System.debug('Get value of key 1000 that does not exists ' 
                     	+ employeeMap.get(1000));
        
        
    }
    
    
    /**
     *https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_map.htm#apex_System_Map_values

            Map Methods
            The following are methods for Map. All are instance methods.
            
            clear()
            Removes all of the key-value mappings from the map.
            
            clone()
            Makes a duplicate copy of the map.
            
            containsKey(key)
            Returns true if the map contains a mapping for the specified key.
            
            deepClone()
            Makes a duplicate copy of a map, including sObject records if this is a map with sObject record values.
            
            equals(map2)
            Compares this map with the specified map and returns true if both maps are equal; otherwise, returns false.
            
            get(key)
            Returns the value to which the specified key is mapped, or null if the map contains no value for this key.
            
            getSObjectType()
            Returns the token of the sObject type that makes up the map values.
            
            hashCode()
            Returns the hashcode corresponding to this map.
            
            isEmpty()
            Returns true if the map has zero key-value pairs.
            
            keySet()
            Returns a set that contains all of the keys in the map.
            
            put(key, value)
            Associates the specified value with the specified key in the map.
            
            putAll(fromMap)
            Copies all of the mappings from the specified map to the original map.
            
            putAll(sobjectArray)
            Adds the list of sObject records to a map declared as Map<ID, sObject> or Map<String, sObject>.
            
            remove(key)
            Removes the mapping for the specified key from the map, if present, and returns the corresponding value.
            
            size()
            Returns the number of key-value pairs in the map.
            
            toString()
            Returns the string representation of the map.
            
            values()
            Returns a list that contains all the values in the map. 
         */
    

}