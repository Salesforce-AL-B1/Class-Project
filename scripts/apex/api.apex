// SEND REQUEST TO GET ONE SPARTAN ENDPOINT 
// GET http://54.236.150.168:8000/api/spartans/1

// Create HTTP Object that can send HttpRequest to get HttpResponse
Http http = new Http(); 

// Create HttpRequest object to provide details about your request 
HttpRequest request = new HttpRequest(); 
// use setEndpoint to provide the request url 
request.setEndpoint('http://54.236.150.168:8000/api/spartans/4'); 
// use setEndpoint to provide the http verb|method
request.setMethod('GET');

// send this request using http Object send method and 
// save the response into HttpReponse
HttpResponse response = http.send(request) ; 
// use HttpResponse object methods to get the details about the response 

// getStatusCode  => integer
System.debug('Status code '  + response.getStatusCode() );
// getBody  => json as String
System.debug('Response body ' + response.getBody() );

// Convert the Json object in String format from response to Map<String,Object>
// by using Helper class called JSON and it's method called deserializeUntyped 

Map<String,Object> bodyMap =  
    		(Map<String,Object>) JSON.deserializeUntyped( response.getBody()  ) ; 

System.debug('bodyMap ' + bodyMap);
System.debug('Name value is ' + bodyMap.get('name')    );
System.debug('Gender value is ' + bodyMap.get('gender')    );
System.debug('Phone value is ' + bodyMap.get('phone')    );
