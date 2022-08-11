public class Day3_Date_Practice {
    
    public static void practice1(){
        
        // Date class and methods 
        // 
        // Create new Data object using 
        // static method newInstance(year, month, day)
        Date d1 = Date.newInstance(2022, 10, 7) ;
        System.debug('d1 ' + d1);
        
        // This will only work if your local date setting 
        // is  Month/Day/Year format
        Date d0 = Date.parse('12/27/2009');
        System.debug('Parsing Date ' + d0);
        
        
        // Create new Data object using today() method
        // Get today's date and store it into Date variable 
        Date d2 = Date.today() ; 
        System.debug('Today\'s Date is ' + d2);
        
        // addDays(days you wanna add) 
        // print out 7 days from now 
        // addMonths(days you wanna add)
        // addYears(years you wanna add) 
        
        Date d3 = d2.addDays(7) ; 
        System.debug('7 days from now is d3 : ' + d3);
        
        // there is no minusDays method you can pass negative number to go back in dates 
        Date d4 = d2.addDays(-7) ; 
        System.debug('7 days before Today is d4 : ' + d4);
        
        
        // Check how many days between d1 and Today's Date
        // daysBetween(secondDate)

		Integer dayCount = d1.daysBetween( d2  ) ; 
        System.debug('Days between Octorber 7 2022 and Today is ' + dayCount);
        // similary for calculating month
        //  monthsBetween(secondDate)
        
        // go ahead and calculate , how many days has passed from your birthday till now 
        
        // calculate how many days left till next year 
        // Find out the date for next year  2023, 1, 1
        // Find out Today's date  Date.Today()
        // Use daysBetween method to calculate how many days between these two date
        // 
        Date newYearDate = Date.newInstance(2023, 1, 1) ; 
        Integer daysTillNewYear =  newYearDate.daysBetween(   Date.today()   ) ; 
        System.debug('daysTillNewYear ' + daysTillNewYear );
        
        
        // How do we dynamically create new year's date that work anytime we run the code 
        // New year ==> current year + 1    2022 + 1 => 2023
        // How do we get This year = >  Date.Today() 
        // How do we get the year   
        // 	call year() method to get year portion of the date 
        // 	call month() method to get month portion of the date 
        // 	call day() method to get day portion of the date 
        
        Integer nextYear =  Date.today().year() + 1 ;  // or d2.year()+ 1  
        Date dynamicNewYearDate =  Date.newInstance( nextYear , 1, 1) ; 
        System.debug('dynamicNewYearDate ' + dynamicNewYearDate);
        
        // format() method to see friendly format of the Date object 
        
        System.debug('Little more readable new year date format ' +  dynamicNewYearDate.format() ) ;  // 1/1/2023
        
        
    }
    
    
    

}