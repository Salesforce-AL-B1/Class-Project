public class ObjectToJson_Serialization {
  public static void spartanToJson() {
    Spartan sp1 = new Spartan();
    //sp1.id = 100;
    sp1.name = 'Apex 101';
    sp1.gender = 'Male';
    sp1.phone = 1231231239;

    // convert this to json String
    //      String sp1Str = JSON.serialize(sp1); 		//{"Id": null , phone":1231231239,"name":"Apex 101","gender":"Male"}
    //      providing second parameter as true will exclude any field with null value from serialization
    String sp1Str = JSON.serialize(sp1, true); //{"phone":1231231239,"name":"Apex 101","gender":"Male"}

    //      String sp1Str = JSON.serializePretty(sp1);

    System.debug('sp1 json String ' + sp1Str);
  }

  public static void addOneSpartan() {
    //(String name, String gender, Long phone){

    Http http = new Http();
    HttpRequest request = new HttpRequest();
    request.setMethod('POST');
    request.setEndpoint('http://54.236.150.168:8000/api/spartans');
    request.setHeader('Content-Type', 'application/json');
    // create object of Spartan type (excluding id value)
    Spartan sp = new Spartan('Apex POJP', 'Female', 1231231236);
    // serialzing Spartan object to Json String without Id
    String body = JSON.serialize(sp, false);
    // providing the body as String
    request.setBody(body);

    HttpResponse response = http.send(request);

    System.debug('status code ' + response.getStatusCode());
    System.debug('response body ' + response.getBody());

    String jsonString = response.getBody();

    PostResponse bodyObj = (PostResponse) JSON.deserialize(
      jsonString,
      PostResponse.class
    );
    System.debug('bodyObj ' + bodyObj);
  }
}
