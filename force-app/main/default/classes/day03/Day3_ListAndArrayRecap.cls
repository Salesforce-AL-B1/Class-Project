public class Day3_ListAndArrayRecap {
    
    public static void practice1(){
        // List or Array  . ordered collection , allow duplicate 
        // list and array ,can be used interchangably 
        
        Integer[] scores = new Integer[2] ; 
        scores[0] = 100 ; 
        scores[1] = 90 ; 
        
        System.debug('scores ' + scores);
        
        // or in one shot 
        Integer[] scores2 = new Integer[]{100,90} ; 
            
            // access by index 
            System.debug('first item ' + scores2[0]) ;
        System.debug('first item ' + scores2.get(0) ) ;
        
        System.debug('scores2 ' + scores);
        
        
        //List
        
        List<Integer> numList = new List<Integer>() ; 
        
        // add  to append at the end of the list
        numList.add(10) ;
        numList.add(20) ;
        numList.add(30) ;   // 10,20,30
        System.debug('numList with 3 items ' + numList);
        
        
        // add at certain index   add(index, value) 
        numList.add(0, 1000) ; // insert 1000 at index 0  =>  1000, 10,20,30
        System.debug('numList after inserting 1000 at index 0 ' 
                     + numList);
        
        // set(index , newValue)  update the value at certain index 
        numList.set(3, 3000) ;  // =>  1000, 10,20,3000
        System.debug('numList after updating element ar index 3 ' 
                     + numList);
        
        // creating list by directly filling up the elements 
        List<Integer> numList2 = new List<Integer>{30,40,50} ; 
            
            // create a new List object called numList3 and copy everything from numList2
            
            List<Integer> numList3 = new List<Integer>( numList2 ) ; 
        System.debug('numList3 copied from numList2 ' + numList3 );
        System.debug('2nd item in the numList3 ' + numList3.get(1)  ); /// list get method syntax
        System.debug('2nd item in the numList3 ' + numList3 [1]  ); //  array [index] syntax
        
        
    }
    
}