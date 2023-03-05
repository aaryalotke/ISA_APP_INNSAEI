import 'package:http/http.dart' as http;

class api{

 //gallery api
  Future<String> getGalleryList(String token) async {
    final client = http.Client();

    var uri = Uri.parse(
        "http://127.0.0.1:8000/app/api/users/Gallery_2/");

    Map<String, String> headers = {"Content-type": "application/json", "Authorization" : "Bearer $token"};
    http.Response response = await client.get(uri, headers: headers);
    if (response.statusCode == 200) {
      print("Success");
      return response.body;
    } else {
      print("Error");
      return response.body;
    }
  }

  //developers api
  Future<String> getDevelopersList(String token) async {
    final client = http.Client();

    var uri = Uri.parse(
        "http://127.0.0.1:8000/app/api/users/Developers/");

    Map<String, String> headers = {"Content-type": "application/json", "Authorization" : "Bearer $token"};
    http.Response response = await client.get(uri, headers: headers);
    if (response.statusCode == 200) {
      print("Success");
      final our = "[" + response.body + "]";
      print(our);

      return our;
    } else {
      print("Error");
      return response.body;
    }
  }

  //Council api
  Future<String> getCouncilList(String token) async {
    final client = http.Client();

    var uri = Uri.parse(
        "http://127.0.0.1:8000/app/api/users/Council/");

    Map<String, String> headers = {"Content-type": "application/json", "Authorization" : "Bearer $token"};
    http.Response response = await client.get(uri, headers: headers);
    if (response.statusCode == 200) {
      print("Success");
      final our = "[" + response.body + "]";
      print(our);

      return our;
    } else {
      print("Error");
      return response.body;
    }
  }


  //profile api
  Future<String> getProfile_MemList(String token) async {
    final client = http.Client();

    var uri = Uri.parse(
        "http://127.0.0.1:8000/app/api/users/profile/");

    Map<String, String> headers = {"Content-type": "application/json", "Authorization" : "Bearer $token"};
    http.Response response = await client.get(uri, headers: headers);
    if (response.statusCode == 200) {
      print("Success");
      final our = "[" + response.body + "]";
      print(our);

      return our;
    } else {
      print("Error in profilee");
      return response.body;
    }
  }

  //editorial api
  Future<String> getEditorialList(String token) async {
    final client = http.Client();

    var uri = Uri.parse(
        "http://127.0.0.1:8000/app/api/users/editorial/");

    Map<String, String> headers = {"Content-type": "application/json", "Authorization" : "Bearer $token"};
    http.Response response = await client.get(uri, headers: headers);
    if (response.statusCode == 200) {
      print("Success");
      final our = "[" + response.body + "]";
      print(our);

      return our;
    } else {
      print("Error");
      return response.body;
    }
  }

   



}

class api2{

  //developers api
  Future<String> getDevelopersList(String token) async {
    final client = http.Client();

    var uri = Uri.parse(
        "http://127.0.0.1:8000/app/api/users/Developers/");

    Map<String, String> headers = {"Content-type": "application/json", "Authorization" : "Bearer $token"};
    http.Response response = await client.get(uri, headers: headers);
    if (response.statusCode == 200) {
      print("Success");
      print(response.body);
      return response.body;
    } else {
      print("Error");
        print(response.body);
      return response.body;
    }
  }

}