// This is a class meant for being template for creating student objects
/** Student 
	// attributes :
			name 
			age
			grade
	// behavior
			coding      ==>  yourname + coding 
			showGrade   ==>> print out the grade value 
			isEligableForVoting  ==>  return true if over 18 
			changeGrade ==> accept new grade as number and assign to grade variable 
*/
// 
public class Student {
    
    // instance variable (non static variable)
    // used for defining attributes properties of objects
    // instance variables or instance field - same thing
    public String name ; 
    public Integer age; 
    public Integer grade; 
    
    // no arg constructor
    public Student(){
        
    }
    // 3 args constructor
    // used to set the value of instance variables while object is being created
    			// ('Seckin' , 43, 99 )
    public Student(String name, Integer age, Integer grade){
         // this keyword represent current instance of the object 
         // we used this.name to make sure we are pointing to the attribute of the object not the name value passed from outside
         // outside of the class we used s1.name or s2.name to access the instance fields name
         // inside the student template class, we use this keyword
         this.name = name ; 
         this.age  = age ; 
         this.grade = grade ; 
    }
    
    /**
     * An instance method (non-static) does not return any value -> void
     * print out the name of the person followed by ' is coding'
     */
    public void coding(){
        System.debug( name + ' is coding' );
    }
    
    /**
     * An instance method (non-static) does not return any value -> void
     * print out the name of the person 
     * followed by ' grade is ' and the grade value 
     */
    public void showGrade(){
        System.debug( name + ' grade is ' + grade);
    }
    /**
     * An instance method (non-static) 
     * return boolean result after checking the age is more than 21 or not
     * when the method is called from outside , the result can be saved into variables or directly used as boolean expression
     */
    public Boolean isEligableForVoting(){
        
        Boolean result =  age>21 ; 
        return result ; 
        // return age>21 ; 
    }
    
    
    
    /**
     * A instance method that does not return value
     * accept an Integer as parameter 
     * set the value of grade to new value 
     */
    public void changeGrade(Integer newGrade){
        this.grade = newGrade ; 
    }

}

/**
 *  This is how we used it 
	Student s1 = new Student('Seckin' , 43, 99 );
    System.debug( 's1 name is ' +  s1.name) ;  // Seckin
    s1.coding() ;  // Seckin is coding 
    s1.showGrade(); // grade is 99
    System.debug('Eligable for voting ' + s1.isEligableForVoting() );  
    s1.changeGrade(150) ; 
    s1.showGrade(); // grade is 150
    
    Student s2 = new Student('Zuleyha' , 21, 100 );
    System.debug( 's2 name is ' +  s2.name) ;  // Zuleyha
    s2.coding() ;  // Zuleyha is coding 
    s2.showGrade(); // grade is 100
    System.debug('Eligable for voting ' + s2.isEligableForVoting() );  
    s2.changeGrade(200) ; 
    s2.showGrade(); // grade is 200

 */