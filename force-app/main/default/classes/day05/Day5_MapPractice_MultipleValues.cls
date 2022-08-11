public class Day5_MapPractice_MultipleValues {
    
    public static void run(){
        
        // create a Map to store group number and member names 
        // Key : Integer ,  Value : String[] or List<String>
        
        Map<Integer, String[] > groupMap = new  Map<Integer, String[] >(); 
        // or we can do list<String> for value 
        // or do this : Map<Integer, List<String> > groupMap = new  Map<Integer, List<String> >(); 
        
        // optionally create variable to store all first group names 
        String[] firstGroupNames = new String[]{'Serdar','Menekse','Gulbahar'}; 
            
        groupMap.put(1,    firstGroupNames        ); 
        groupMap.put(2,   new String[]{'Elif', 'Marina', 'Emre'}   ) ; 
        groupMap.put(3,   new String[]{'Java', 'Apex', 'Dev Console'}   ) ; 
        groupMap.put(4,   new String[]{'Akbar','Arife','Arben','Muhtar', 'Asiya'}   ) ; 
        // list and array in Java work exactly the same you can use either or or another 
        groupMap.put(5,   new List<String>{'This is','Same as ','Above'}   ) ; 
        
        System.debug('groupMap ' + groupMap);
        
        // Loop through each entry in the map display key : and value in separate line 
        
        // use keySet method to get all the keys and loop through the keys , 
        // use each key to get corresponding value
        Set<Integer> allKeys = groupMap.keySet(); 
        for(Integer eachKey  :  allKeys ){
            System.debug('key :  ' + eachKey);
            // in order to get the value using key we use get method 
            System.debug('value :' + groupMap.get(eachKey)    );
        }
        
        
        
        
        
    }
    

}