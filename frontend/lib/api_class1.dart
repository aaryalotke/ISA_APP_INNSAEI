import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:isa/models/upcomingEvent_model.dart';

class api {
  //gallery api
  Future<String> getGalleryList(String token) async {
    final client = http.Client();

    // var uri = Uri.parse("http://127.0.0.1:8000/app/api/users/Gallery_2/");
     var uri = Uri.parse("http://10.0.2.2:8000/app/api/users/Gallery_2/");

    Map<String, String> headers = {
      "Content-type": "application/json",
      "Authorization": "Bearer $token"
    };
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

    // var uri = Uri.parse("http://127.0.0.1:8000/app/api/users/Developers/");
    var uri = Uri.parse("http://10.0.2.2:8000/app/api/users/Developers/");

    Map<String, String> headers = {
      "Content-type": "application/json",
      "Authorization": "Bearer $token"
    };
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

    // var uri = Uri.parse("http://127.0.0.1:8000/app/api/users/Council/");
    var uri = Uri.parse("http://10.0.2.2:8000/app/api/users/Council/");

    Map<String, String> headers = {
      "Content-type": "application/json",
      "Authorization": "Bearer $token"
    };
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

    // var uri = Uri.parse("http://127.0.0.1:8000/app/api/users/profile/");
    var uri = Uri.parse("http://10.0.2.2:8000/app/api/users/profile/");

    Map<String, String> headers = {
      "Content-type": "application/json",
      "Authorization": "Bearer $token"
    };
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

    // var uri = Uri.parse("http://127.0.0.1:8000/app/api/users/editorial/");
    var uri = Uri.parse("http://10.0.2.2:8000/app/api/users/editorial/");

    Map<String, String> headers = {
      "Content-type": "application/json",
      "Authorization": "Bearer $token"
    };
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


  Future<String> getUpcomingEvent(String token) async {
    final response = await http.get(
      //for chrome
      // Uri.parse('http://127.0.0.1:8000/app/api/users/UpcomingWorkshop/'),
      Uri.parse('http://10.0.2.2:8000/app/api/users/UpcomingWorkshop/'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': "Bearer $token",
      },
    );

    if (response.statusCode == 200 ||
        response.statusCode == 201 ||
        response.statusCode == 202 ||
        response.statusCode == 203 ||
        response.statusCode == 204) {
      print('upcoming event recieved');
      final event = "[" + response.body + "]";
      return event;
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      print(response.body);

      print('errorrrrr');
      throw Exception('Failed to return event.');
    }
  }

  //inventory api
  Future<String> getInventoryList(String token) async {
    final client = http.Client();

    var uri = Uri.parse("http://10.0.2.2:8000/app/api/users/Product/");
    // "http://127.0.0.1:8000/app/api/users/Product/");

    Map<String, String> headers = {
      "Content-type": "application/json",
      "Authorization": "Bearer $token"
    };
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

  Future<String> registerNonmember(String username, String firstName, String lastName, String email) async {
    final response = await http.post(
      Uri.parse("http://10.0.2.2:8000/app/api/users/login/"),
      // "http://127.0.0.1:8000/app/api/users/login/"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(
          <String, String>{'Username': username, 'First name' : firstName, 'Last name' : lastName, 'Email address' : email}),
    );

    if (response.statusCode == 200) {
      
      // If the server did return a 201 CREATED response,
      // then parse the JSON.
      print('OTP gaya!');
      print('Response ye aaya - ' + response.body);
      
      // var i = 300;
      // String access = '';
      // for (i = 253; i <= 480; i++) {
      //   access = access + response.body[i];
      // }
      // ;
      // print(access);
      // email_members(access);
      var jsonData = jsonDecode(response.body); // trial
      print(jsonData["access"]);
      String access = jsonData["access"];
      String email = jsonData["username"];

      return response.body;
      // return User.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      print(response.body);
      print('errorrrrr');
      throw Exception('Failed to send email.');
    }
  }
}

class api2 {
  //developers api
  Future<String> getDevelopersList(String token) async {
    final client = http.Client();

    // var uri = Uri.parse("http://127.0.0.1:8000/app/api/users/Developers/");
    var uri = Uri.parse("http://10.0.2.2:8000/app/api/users/Developers/");

    Map<String, String> headers = {
      "Content-type": "application/json",
      "Authorization": "Bearer $token"
    };
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
