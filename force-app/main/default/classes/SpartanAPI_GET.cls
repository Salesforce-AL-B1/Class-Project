public class SpartanAPI_GET {
  @future(
    callout=true
  ) // this will mark this method as futiure method that contains api call
  public static void getOneSpartan() {
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
    HttpResponse response = http.send(request);
    // use HttpResponse object methods to get the details about the response

    // getStatusCode  => integer
    System.debug('Status code ' + response.getStatusCode());
    // getBody  => json as String
    System.debug('Response body ' + response.getBody());
  }

  @future(callout=true)
  public static void getAllSpartans() {
    //GET http://54.236.150.168:8000/api/spartans
    Http h = new Http();
    // create HttpRequest
    HttpRequest req = new HttpRequest();
    req.setEndpoint('http://54.236.150.168:8000/api/spartans');
    req.setMethod('GET');
    // Get HttpResponse by sending the request
    HttpResponse res = h.send(req);

    System.debug('status code ' + res.getStatusCode());
    System.debug('response body ' + res.getBody());
  }

  @future(callout=true)
  public static void searchSpartans() {
    //GET  http://54.236.150.168:8000/api/spartans/search?nameContains=Monday&gender=Male
    Http h = new Http();
    // create HttpRequest
    HttpRequest req = new HttpRequest();
    req.setEndpoint(
      'http://54.236.150.168:8000/api/spartans/search?nameContains=Monday&gender=Male'
    );
    req.setMethod('GET');
    // Get HttpResponse by sending the request
    HttpResponse res = h.send(req);

    System.debug('status code ' + res.getStatusCode());
    System.debug('response body ' + res.getBody());
  }
}
