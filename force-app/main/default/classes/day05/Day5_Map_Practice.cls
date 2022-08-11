public class Day5_Map_Practice {

    public static void run(){
        
        // create a map that store product name and price 
        
        Map<String, Double> productMap = new Map<String, Double>(); 
        productMap.put('Banana', 1.99) ; 
        productMap.put('Apple', 5.99) ; 
        productMap.put('Peach', 3.99 ) ; 
        
        // key is string in this map , and it's case sensitive 
        // if you you add anothe entry  apple 3.99 = > it will add new item 
        productMap.put('apple', 3.99) ; 
        System.debug('productMap ' + productMap);
        productMap.remove('apple');
        System.debug('productMap ' + productMap);
        System.debug('Apple price is : ' +  productMap.get('Apple')  );
        
        
        // create a map of fruit names and count 
        // providing the key value along with object creation 
       	Map<String, Integer> fruitMap = new Map<String, Integer> { 'Banana'=>3 , 'Apple'=>8 , 'Peach'=> 10  }; 
        System.debug('fruitMap ' +fruitMap );
        
        // create a map of Integer , Integer to store employeeId and Weekly Salary
        Map<Integer,Integer> salaryMap = new Map<Integer,Integer> {101=>3000 , 102=>4000, 103=>1000 };
        System.debug('salaryMap ' + salaryMap);

        
    }
    
    
}