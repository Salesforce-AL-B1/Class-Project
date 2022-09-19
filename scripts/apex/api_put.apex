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


Http http = new Http(); 
HttpRequest request = new HttpRequest(); 
request.setEndpoint('http://54.236.150.168:8000/api/spartans/3');
request.setMethod('PUT');
request.setHeader('Content-Type','application/json');  
Spartan s1 = new Spartan('Hello Update','Male', 1231231231 ); 
String body = JSON.serialize(s1, true);
//System.debug('body ---' + body); 
request.setBody(body); 
System.debug('body ---' + request.getBody() ); 

HttpResponse response = http.send(request); 
System.debug(response);
System.debug(response.getStatusCode() ) ; 
System.debug(response.getBody() ) ; 
