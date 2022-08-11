public class Day5_ListOfStudentRecap {
    
    
    public static void run(){
        
        //Integer i = null ; 
        //Boolean x = null ;  // every data type in apex is nullable , you can assign null 
        
        // create list of student object and store 2 students in it 
        List<Student> studentLst = new List<Student>(); 
        
        //studentLst.add('Hello');  WRONG 
        studentLst.add(   new Student('Ekrem' , 18, 100)    ); 
        studentLst.add(   new Student('Ziyoda' , null, 100)     ) ; 
        
        System.debug('studentLst ' + studentLst);
        
        for(Student each  : studentLst ){
            
            System.debug('Student name ' + each.name);
            System.debug('Student grade ' + each.grade);
            
        }
        
        
    }
    

}