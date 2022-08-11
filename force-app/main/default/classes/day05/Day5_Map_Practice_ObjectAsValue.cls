public class Day5_Map_Practice_ObjectAsValue {

    public static void run(){
        
        // store student id A number and Student Object into Map object 
        // Key   :  Integer 
        // Value :  Student 
        Map<Integer, Student> studentMap = new Map<Integer, Student>(); 
        
        Student s1 = new Student('Student1', 28, 90);
        
        // adding key value pair , providing value by passing variable 
        studentMap.put(101,  s1); 
        // providing key and value directly in put method 
        studentMap.put(102,  new Student('Adam', 43, 85)    ) ; 
        
        System.debug('my student Map ' + studentMap );
        
        // How do I get the value with key 102 and store it in the variable 
         Student value102 =  studentMap.get(102) ; 
         System.debug('value at 102 is ' + value102);
        
        // Store the group number , and All Students in your group into Map Object 
        // Key  : GroupNumber  as Integer
        // Value: All Students as List<Student> or Student[]
        // Continue from here to create Map object and add some key value pairs 
        // print them out 
        
    }
    
    
    
}