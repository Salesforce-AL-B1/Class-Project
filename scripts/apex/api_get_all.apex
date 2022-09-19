// API Post Get Put Delete Requests 

public class Spartan{
    public Integer id ; 
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
request.setEndpoint('http://54.236.150.168:8000/api/spartans');
request.setMethod('GET');

HttpResponse response = http.send(request); 
System.debug(response);
System.debug(response.getStatusCode() ) ; 
//System.debug(response.getBody() ) ; 

List<Spartan> spLst = (List<Spartan>) JSON.deserialize(response.getBody(), List<Spartan>.class) ;
System.debug(spLst) ;

request.setEndpoint('http://54.236.150.168:8000/api/spartans/'+ spLst[0].id);
request.setMethod('GET');

response = http.send(request); 
System.debug(response.getBody());
Spartan sp = (Spartan) JSON.deserialize(response.getBody(), Spartan.class) ;
System.debug(sp) ;


