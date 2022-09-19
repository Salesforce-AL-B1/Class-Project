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

public class SearchResponse{

    public List<Spartan> content ; 
    public Integer totalElement ; 
}


Http http = new Http(); 
HttpRequest request = new HttpRequest(); 
request.setEndpoint('http://54.236.150.168:8000/api/spartans/search?nameContains=ne&gender=Male');
request.setMethod('GET');

HttpResponse response = http.send(request); 
System.debug(response);
System.debug(response.getStatusCode() ) ; 
System.debug(response.getBody() ) ; 

SearchResponse sr = (SearchResponse) JSON.deserialize(response.getBody() , SearchResponse.class );
System.debug(sr); 

System.debug(sr.content); 
System.debug(sr.totalElement);

//List<Spartan> spLst = (List<Spartan>) JSON.deserialize(response.getBody(), List<Spartan>.class) ;
//System.debug(spLst) ;

