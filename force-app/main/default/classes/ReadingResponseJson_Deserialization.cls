/**
 * Deserialization is the process of turning
 * text(in this case json) into Programming object is known as deserialization
 */
public class ReadingResponseJson_Deserialization {
  public static void getOneSpartanData() {
    Http http = new Http();
    HttpRequest request = new HttpRequest();
    request.setEndpoint('http://54.236.150.168:8000/api/spartans/4');
    request.setMethod('GET');
    HttpResponse response = http.send(request);
    /**
         * {
                "id": 4,
                "name": "Paige",
                "gender": "Female",
                "phone": 3786741487
            }
		*/
    String jsonBody = response.getBody();
    // try to read the response json fields  deserializeUntyped
    // It will take jsonString and return object and it can be downcasted to
    // Map<String,Object>
    Map<String, Object> bodyMap = (Map<String, Object>) JSON.deserializeUntyped(
      jsonBody
    );
    System.debug('Id is ' + bodyMap.get('id'));
    System.debug('name is ' + bodyMap.get('name'));
    System.debug('gender is ' + bodyMap.get('gender'));
    System.debug('phone is ' + bodyMap.get('phone'));
    //4 as object because this is Map of String and object , value data type is object
    Integer myId = (Integer) bodyMap.get('id');
    System.debug('myId ' + myId);

    // upcasting from Integer to Object type , casting happen implicitly (automatically)
    Object o = 20;
    // return type for get here is Object
    // Downcasting from Object to Integer type ==? required !!! or wont compile
    Integer a1 = (Integer) bodyMap.get('id');
  }

  public static void getOneSpartanDataPOJO() {
    Http http = new Http();
    HttpRequest request = new HttpRequest();
    request.setEndpoint('http://54.236.150.168:8000/api/spartans/4');
    request.setMethod('GET');
    HttpResponse response = http.send(request);
    /**
         * {
                "id": 4,
                "name": "Paige",
                "gender": "Female",
                "phone": 3786741487
            }
		*/
    String jsonBody = response.getBody();
    // JSON.deserialize(jsonStr, yourTypeHere)

    Spartan body = (Spartan) JSON.deserialize(jsonBody, Spartan.class);
    System.debug('Spartan Object Body ' + body);
    System.debug('Id  ' + body.id);
    System.debug('name  ' + body.name);
    System.debug('phone  ' + body.phone);
    System.debug('gender  ' + body.gender);
  }

  public static void getAllSpartanSaveToSpartanList() {
    Http http = new Http();
    HttpRequest request = new HttpRequest();
    request.setEndpoint('http://54.236.150.168:8000/api/spartans');
    request.setMethod('GET');
    HttpResponse response = http.send(request);
    /**
        /**
         * [
         *   {
                "id": 4,
                "name": "Paige",
                "gender": "Female",
                "phone": 3786741487
             },{
                "id": 5,
                "name": "apex",
                "gender": "Female",
                "phone": 3786741487
             } ....
            ]
		*/
    String jsonBody = response.getBody();

    List<Spartan> allSpartans = (List<Spartan>) JSON.deserialize(
      jsonBody,
      List<Spartan>.class
    );
    System.debug('List size is ' + allSpartans.size());
    System.debug('List is ' + allSpartans);
    // print out all the names ;

    for (Spartan each : allSpartans) {
      System.debug('each name : ' + each.name);
    }

    // For practice -->  store only unique names
  }
}
