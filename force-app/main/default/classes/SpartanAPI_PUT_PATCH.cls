public class SpartanAPI_PUT_PATCH {
  public static void fullUpdateOneSpartan() {
    /**
         * PUT http://54.236.150.168:8000/api/spartans/236
         * Header  Content-Type application/json
         * BODY
         * {
              "name": "Monday Updated",
              "gender": "Male",
              "phone": 1234567231
            }
         * 
         */
    Http http = new Http();
    HttpRequest request = new HttpRequest();
    request.setMethod('PUT');
    request.setEndpoint('http://54.236.150.168:8000/api/spartans/236');
    request.setHeader('Content-Type', 'application/json');

    String body = '{"name": "Monday Updated","gender": "Male","phone": 1234567231}';
    request.setBody(body);

    HttpResponse response = http.send(request);

    System.debug('status code ' + response.getStatusCode());
    //System.debug('response body ' + response.getBody() );
  }

  public static void partialUpdate() {
    /**
         * PATCH http://54.236.150.168:8000/api/spartans/235
         * Header  Content-Type application/json
         * BODY
         * {
              "phone": 1239874560
            }
         * 
         */
    Http http = new Http();
    HttpRequest request = new HttpRequest();
    request.setMethod('PATCH');
    request.setEndpoint('http://54.236.150.168:8000/api/spartans/236');
    request.setHeader('Content-Type', 'application/json');

    String body = '{"phone": 1239874560}';
    request.setBody(body);

    HttpResponse response = http.send(request);

    System.debug('status code ' + response.getStatusCode());
  }
}
