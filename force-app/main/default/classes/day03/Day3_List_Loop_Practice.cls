public class Day3_List_Loop_Practice {
    
    
    public static void filterList(){
        
        Integer[] nums = new Integer[]{100,44,66,22,99,77,12,55,34,111,55,49} ; 
        //List<Integer> nums = new List<Integer> {100,44,66,22,99,77,12,55,34,111,55,49} ; 
        System.debug('Nums are ' + nums);
        
        // create a new List or Array 
        // store all the numbers more than 50 into the object
        List<Integer> numsMoreThanFifty = new List<Integer> () ; 
        
        // loop through every items inside nums 
        for(Integer each : nums){
            // the number at current iteration is more than 50 
            if( each > 50 ){
                //System.debug(each) ;
                // if meet the criteria add it to second list
                numsMoreThanFifty.add( each ); 
            }
            
        }
        /**
		// for loop version 
		for(Integer i=0 ; i < nums.size() ; i ++ ){
            // the number at current iteration is more than 50 
            if( nums[i] > 50 ){  // or nums.get(i)>50
                //System.debug(each) ;
                // if meet the criteria add it to second list
                numsMoreThanFifty.add( nums[i]  );  // or nums.get(i)>50
            }
            
        }
		**/
		        
        
        System.debug('Nums More Than Fifty ' + numsMoreThanFifty);
        
        
    }
    

}