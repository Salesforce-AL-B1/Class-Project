// API Post Get Put Delete Requests 

public class Spartan{
    public Integer Id ; 
    public String name;
    public String gender;
    public Long phone;
    
    public Spartan(String name, String gender, Long phone){
        this.name = name ; 
        this.gender = gender; 
        this.phone = phone; 
    }
}

public class PostResponse{
    public String success ; 
    public Spartan data ; 
}


Http http = new Http(); 
HttpRequest request = new HttpRequest(); 
request.setEndpoint('http://54.236.150.168:8000/api/spartans');
request.setMethod('POST');
request.setHeader('Content-Type','application/json');  
Spartan s1 = new Spartan('Hello','Male', 1231231231 ); 
String body = JSON.serialize(s1, true);
//System.debug('body ---' + body); 
request.setBody(body); 
//System.debug('body ---' + request.getBody() ); 

HttpResponse response = http.send(request); 
System.debug(response);
System.debug(response.getStatusCode() ) ; 
System.debug(response.getBody() ) ; 

//Map<String,Object> result = (Map<String,Object>) JSON.deserializeUntyped(response.getBody() ); 
//System.debug(result.get('success') );
//System.debug(result.get('data') );
//Object newSp =  (Spartan) JSON.deserializeStrict(( String.valueOf(result.get('data') ) , Spartan.class);
//System.debug('newSp -- '+ newSp);
//Map<String,Object> jsonStr =(Map<String,Object> ) result.get('data'); 
//System.debug('jsonStr : ' + jsonStr.get('id')); 

PostResponse result2 = (PostResponse) JSON.deserializeStrict(response.getBody() , PostResponse.class); 
System.debug('result ' + result2);

System.debug(result2.data.Id);
System.debug(result2.data.name);
System.debug(result2.data.phone);


/**
Contact con = [SELECT Id, LastName, AccountId FROM Contact LIMIT 1]; 
// Set additional field
con.FirstName = 'Joe'; 
String jsonstring = Json.serialize(con); 
System.debug(jsonstring); 
Contact con2 = (Contact) JSON.deserializeStrict(jsonString, Contact.class);
System.debug(con2); 


//Spartan s2 =  (Spartan) JSON.deserializeStrict(jsonStr , Spartan.class);
//System.debug('s2 -> ' + s2);
*/