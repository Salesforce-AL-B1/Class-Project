public class Day6_MapRecap {
    
    
    public static void run(){
        
        // create a map to represent a phone book 
        // key : name 	  String
        // value : phone  Long 
        // Add  5 entry to the map 
        // print your map 
        // Get one of the item using the key 
        // Check one of your item using containKey method 
        // remove one of the phone number 
        // Loop your Map to show key and value together 
        // 
        // in another loop 
        // only show the phone numbers if the name start with a 
        
        //Map<String, Long> phoneBook =  new Map<String, Long>(); 
        Map<String, Long> phoneBook 
            = new Map<String, Long> {'John'=>123123777 , 'Tylor'=> 123123444, 'Adam'=> 123123555}; 
        
        phoneBook.put('Owen', 123456777);
		phoneBook.put('Mark', 123456789);         
        phoneBook.put('Mark', 999999999);     // this will override above     
       
        System.debug('phonebook ' + phoneBook );
        
        // check if Owen exist using containsKey method
        System.debug('If Owen exist in the map ' + phoneBook.containsKey('Owen') );
        
        // get Adam's phone number 
        System.debug('Adam phone number is ' + phoneBook.get('Adam') );
        
        // remove Adam's entry from the map using remove(key)
        phoneBook.remove('Adam');
        System.debug('If Adam exist in the map after deleting ' + phoneBook.containsKey('Adam') );
        
        // keySet() method to get all the keys in Set<key data type>
        Set<String> allKeys = phoneBook.keySet(); 
        System.debug('all keys in the map ' + allKeys);
        
        // values() method to get all the values in List<your value data type>
        List<Long> allValues = phoneBook.values(); 
        System.debug('all values in the map ' + allValues);
        
        // Loop your Map to show key and value together 
        for(String eachKey  : allKeys){  // for(String eachKey  : phoneBook.keySet() ){
            
            System.debug('Key : '+ eachKey  + ' | value : '
                         + phoneBook.get(eachKey)   );
            
        }
        
        
        // in another loop 
        // only show the phone numbers if the name contains o Or O
        // we can use String containsIgnoreCase Method to check if it contaisn o 
        for( String eachKey : allKeys ){
            
            if( eachKey.containsIgnoreCase('o')      ){
                System.debug('phone : ' +   phoneBook.get(eachKey)      );
            }
            
        }
        
    }

}