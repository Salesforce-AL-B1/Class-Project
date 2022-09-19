public class Spartan_API_Delete {
  public static void deleteOneSpartan() {
    //DELETE http://54.236.150.168:8000/api/spartans/248

    Http http = new Http();

    HttpRequest request = new HttpRequest();
    request.setMethod('DELETE');
    request.setEndpoint('http://54.236.150.168:8000/api/spartans/248');

    HttpResponse response = http.send(request);

    System.debug('status code ' + response.getStatusCode());
  }
}
