public class Day2_ListAndArray {
    
    
    public static void run1(){
        
        // there is less boundry between array and list in apex 
        // we can use either of them at any time 
        
        Integer[] nums1 = new List<Integer> {10,20,30} ; 
        
        System.debug('nums1 ' + nums1);
        
        
        List<Integer> nums2 = new Integer[]{40,50,60} ; 
        
         System.debug('nums2 ' + nums2);
        
        // access individual elements in array or list 
        // you can use array or list name followed by [index goes here]
        // or just use get method followed by (index goes here)
        
        System.debug('first item using index with nums2[0]  ' +  nums2[0]  );
        System.debug('first item using nums2.get(0)  ' 		  +  nums2.get(0)  );
        
        Integer[] nums3 = new Integer[2] ; 
        nums3[0] = 100 ; 
        nums3[1] = 200 ; 
        // you can always call add method to add more items at the end , if your array reached pre-defined size and it will just work 
        nums3.add(300) ; 
        System.debug('nums3 ' + nums3) ; 
        
        
        
        
        
    }    
    
    
    public static void run2(){
        
        
        List<String> names =  new List<String>{'Gail', 'Larisa', 'Mehmet','Asena'}; 
        System.debug('names originally ' + names );
        // add (element)
        names.add('Erol') ; 
        System.debug('names after adding Erol ' + names );
        
        // add (index, element) insert element into certian position
        names.add(0, 'Serife') ; 
        System.debug('names after adding Serife at index 0 ' + names );
        
        // isEmpty  
        System.debug('if list is empty' + names.isEmpty() );
        // set (index, elemeng)  update element at certain position
        names.set(0,'Serife Ak' ) ; 
        System.debug('names after setting index 0 value to Serife Ak ' + names );
        
        // clear() 
        names.clear() ; 
        System.debug('if list is empty' + names.isEmpty() );
        
    }
    
    
    public static void run3(){
        
        Set<String> names =  new Set<String>{'Gail', 'Larisa', 'Mehmet','Asena','Asena'}; 
        System.debug('Size of this set ' + names.size() );
		System.debug('names originally ' + names);
        
        names.add('Asena'); 
        System.debug('Size of this set after adding dupicate ' + names.size() );
    	System.debug('is Gail in the Set ' + names.contains('Gail')   );   
    
    }
    

}