// this class exsist to represent the Post request response json
/*
{
    "success": "A Spartan is Born!",      bodyObj.success
    "data": {
        "id": 252,                         bodyObj.data.id 
        "name": "Monday API", 				bodyObj.data.name 
        "gender": "Male", 					bodyObj.data.gender 
        "phone": 1234567231					bodyObj.data.phone 
    }
}
 */

public class PostResponse {
  String success;
  Spartan data;
}
// How would we create Object of PostResponse type manually
//PostResponse pr = new PostResponse();
//pr.success 	= 'spartan is born';
//pr.data 	=  new Spartan('Apex POJP', 'Female', 1231231236);
