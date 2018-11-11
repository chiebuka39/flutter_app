import 'package:flutter/material.dart';
import 'users.dart';
import 'user.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


Future<Users> fetchPost() async {
  final response =
  await http.get('https://api.github.com/search/users?q=language:java+location:lagos');

  if (response.statusCode == 200) {
    // If the call to the server was successful, parse the JSON
    //print(response.body);
    return Users.fromJson(json.decode(response.body));
  } else {
    // If that call was not successful, throw an error.
    throw Exception('Failed to load post');
  }
}

class Fetch extends StatefulWidget{


  @override
  State<StatefulWidget> createState() => new _FetchState();

}

class _FetchState extends State<Fetch>{
  Future<Users> users;
  List<User> mUsers;


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Fetch Data Example'),
      ),
      body: Center(
        child: FutureBuilder<Users>(
          future: fetchPost(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context,i) {
                    return new Text("Row: ${snapshot.data.users[i].login}");
                  }
              );
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }

            // By default, show a loading spinner
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }

}