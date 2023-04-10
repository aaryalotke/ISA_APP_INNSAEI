import 'package:http/http.dart' as http;
import 'custom_exception.dart';

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
      print(">> (GET_GALLERY_LIST) Response received.");
      return response.body;
    } else {
      print(">> (GET_GALLERY_LIST) Exception occurred.");
      throw CustomException(message: "Couldn't fetch the photos from server.");
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
      print(">> (GET_DEVELOPERS_LIST) Response received.");
      final our = "[" + response.body + "]";
      return our;
    } else {
      print(">> (GET_DEVELOPERS_LIST) Exception occurred.");
      throw CustomException(
          message: "Couldn't fetch the developers list from server.");
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
      print(">> (GET_COUNCIL_LIST) Response received.");
      final our = "[" + response.body + "]";
      return our;
    } else {
      print(">> (GET_COUNCIL_LIST) Exception occurred.");
      throw CustomException(
          message: "Couldn't fetch the council members from server.");
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
      print(">> (GET_PROFILE) Response received.");
      final our = "[" + response.body + "]";
      return our;
    } else {
      print(">> (GET_PROFILE) Exception occurred.");
      throw CustomException(message: "Couldn't fetch your profile.");
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
      print(">> (GET_EDITORIAL_LIST) Response received.");
      final our = "[" + response.body + "]";
      return our;
    } else {
      print(">> (GET_EDITORIAL_LIST) Exception occurred.");
      throw CustomException(
          message: "Couldn't fetch the editorials from server.");
    }
  }

  Future<String> getUpcomingEvent(String token) async {
    final response = await http.get(
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
      print(">> (GET_UPCOMING_EVENT) Response received.");
      final event = "[" + response.body + "]";
      return event;
    } else {
      print(">> (GET_UPCOMING_EVENT) Exception occurred.");
      throw CustomException(message: 'Failed to return event.');
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
      print(">> (GET_INVENTORY_EVENT) Response received.");
      final our = "[" + response.body + "]";
      return our;
    } else {
      print(">> (GET_INVENTORY_EVENT) Exception occurred.");
      throw CustomException(
          message: "Couldn't fetch the inventory from server.");
    }
  }
//certi api
  Future<String> getCertiList(String token) async {
    final client = http.Client();

    var uri = Uri.parse("http://10.0.2.2:8000/app/api/users/certificateList/");
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
      print(">> (GET_DEVELOPERS_LIST) Response received.");
      return response.body;
    } else {
      print(">> (GET_DEVELOPERS_LIST) Exception occurred.");
      throw CustomException(
          message: "Couldn't fetch the developer list from server.");
    }
  }
}
