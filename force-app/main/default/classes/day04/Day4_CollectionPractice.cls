public class Day4_CollectionPractice {
    
    
    public static void run(){
        
        List<Integer> nums = new List<Integer>{10,30,44,22,56,43,10} ; 
        
        // find sum of all the numbers in the list 
        Integer sum = 0 ; 
        
        for(Integer each  :  nums){
            // take the current sum and add it to the current number 
            sum = sum + each ; 
            /**
             * iter 1 :  sum = 0 + 10 => 10 
             * iter 2 :  sum = 10 + 30 => 40
             * iter 3 :  sum = 40 + 44 => 84 
             * iter 4 :  sum = 84 + 22 => 106 
             * iter 5 :  sum = 106 +56 => 162
             * iter 6 :  sum = 162 +43 => 205
             * iter 7 :  sum = 205+ 10 => 215
             */
        }
        System.debug('Sum of all these numbers are ' + sum);

    } 
    
    public static void run1(){
        
        // only get the sum of unique numbers ,  (there are 2  10 in below list ) 
        List<Integer> nums = new List<Integer>{10,30,44,22,56,43,10} ; 
        System.debug('nums list ' + nums);
        
        // create a new Set of Integer and copy all the elements from above list 
        Set<Integer> uniqueNums = new Set<Integer>( nums ); 
        System.debug('uniqueNums set ' + uniqueNums);
        
        Integer sum = 0 ; 
        for(Integer each  : uniqueNums ){
            //sum = sum + each ; 
            sum += each ; 
        }
        System.debug('sum of unique numbers are ' + sum);
        
        
        
    }
    

}