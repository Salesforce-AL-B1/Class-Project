public class Day3_DateTime_Practice {
    
    
    public static void practice(){
        
        
        // Year, month , day , hour , minute , seconds 
        DateTime dt1 = DateTime.newInstance(2022, 8, 4, 14,35,45) ; 
        System.debug('dt1 ' + dt1);

        // This will give you the DateTime in GMT 
        DateTime dt0 = DateTime.now() ; 
        System.debug('Now : ' + dt0);
        
        // time method return the time according to your user timezone setting 
        System.debug('dt0.time() Local Time ' + dt0.time() ) ; 
        // timeGmt method return the time in GMT (Greenwich) timezone 
        System.debug('dt0.timeGmt() GMT Time'  + dt0.timeGmt() ) ; 
        
        
    }
    

    public static void timePractice(){
        
        Time t1 = Time.newInstance(3, 15, 30, 10) ;
        System.debug('t1 ' + t1);
        // how to find current local time 
        // there is no now() method in time class 
        // however there is now() method in DateTime Class and time() method will return current Time
        // in users locale setting 
        
        Time currentTime = DateTime.now().time() ; 
        System.debug('current time in users timezone '  + currentTime);
        
        
        Time fiveHoursFromNow = currentTime.addHours(5) ; 
        System.debug('5 hours from now ' + fiveHoursFromNow);
        
        
    }
    
}