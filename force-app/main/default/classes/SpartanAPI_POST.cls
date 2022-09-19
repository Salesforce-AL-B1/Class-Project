public class SpartanAPI_POST {
  public static void addOneSpartan() {
    /**
         * POST http://54.236.150.168:8000/api/spartans
         * Header  Content-Type application/json
         * BODY
         * {
              "name": "Monday API",
              "gender": "Male",
              "phone": 1234567231
            }
         * 
         */
    Http http = new Http();
    HttpRequest request = new HttpRequest();
    request.setMethod('POST');
    request.setEndpoint('http://54.236.150.168:8000/api/spartans');
    request.setHeader('Content-Type', 'application/json');

    String body = '{"name": "Monday API","gender": "Male","phone": 1234567231}';
    request.setBody(body);

    HttpResponse response = http.send(request);

    System.debug('status code ' + response.getStatusCode());
    System.debug('response body ' + response.getBody());
  }
}
