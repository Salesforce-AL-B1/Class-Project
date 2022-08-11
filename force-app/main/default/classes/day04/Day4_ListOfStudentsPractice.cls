public class Day4_ListOfStudentsPractice {
    
    
    public static void run(){
        
       Student s1 =  new Student('Student 1' , 10 ,  110) ; 
       Student s2 =  new Student('Student 2' , 20 ,  120) ; 
       Student s3 =  new Student('Student 3' , 30 ,  131) ; 
       Student s4 =  new Student('Student 4' , 40 ,  140) ; 
       Student s5 =  new Student('Student 5' , 50 ,  177) ; 
        
       List<Student> studentLst1 = new List<Student>{s1,s2,s3,s4,s5 }; 
       
       System.debug('studentLst1 ' + studentLst1);
        
       // loop through each item and print them out 
        for(Student each  : studentLst1){
            System.debug('each student ' + each);
        }

       // find out sum of all grade  , storing in Decimal so we can get average later with decimal , because Integer/Ingeger is Integer
		Decimal sum = 0 ; 
        for(Student each : studentLst1){
            
            sum = sum + each.grade ; 
            
        }
        System.debug('Sum of All Student Grades : ' + sum) ; 
        
        
       // find out average grade
       Decimal average = sum / studentLst1.size(); 
       System.debug('average ' + average );


        
    /**
        List<Student> studentLst2 = new List<Student>{
                                        	new Student('Student 1' , 10 ,  110),
                                            new Student('Student 2' , 20 ,  120),
                                            new Student('Student 3' , 30 ,  130),
                                            new Student('Student 4' , 40 ,  140),
                                            new Student('Student 5' , 50 ,  150) 
                                      }; 
        
            

        List<Student> studentLst3 = new List<Student>(); 
        
        studentLst3.add(   new Student('Student 1' , 10 ,  110)      ); 
        studentLst3.add(   new Student('Student 2' , 20 ,  120)      ); 
        studentLst3.add(   new Student('Student 3' , 30 ,  130)      ); 
        studentLst3.add(   new Student('Student 4' , 40 ,  140)      ); 
        studentLst3.add(   new Student('Student 5' , 50 ,  150)      ); 

*/    
        
        
        
    }
    

}