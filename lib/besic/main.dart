
import 'package:database_sqf/besic/unit/databasehelper.dart';
import 'package:database_sqf/besic/unit/user.dart';
import 'package:flutter/material.dart';


List _users;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();// stack selve
  var db = new DatabaseHelper();

  //Add user
  int saveUser= await db.saveUser(new User("qussai", "123"));
  print("User: $saveUser");

  //Get  a user
  _users =await db.getAllUsers();
  for (var i = 0; i < _users.length; i++) {
    User user=User.map(_users[i]);
    print("users : ${user.username}");
  }
  //Retrieving a user
 

  runApp(new MaterialApp(
    title: "Database",
    home: new Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Database"),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),
       body: new ListView.builder(
           itemCount: _users.length,
           itemBuilder: (_, int position) {
              return new Card(
                 color: Colors.white,
                 elevation: 2.0,
                 child: new ListTile(
                   leading: new CircleAvatar(
                      child:  Text("${User.fromMap(_users[position]).username.substring(0, 1)}"),
                   ),
                    title: new Text("User: ${User.fromMap(_users[position]).username}"),
                   subtitle: new Text("Id: ${User.fromMap(_users[position]).id}"),

                   onTap: () => debugPrint("${User.fromMap(_users[position]).password}"),
                 ),
              );


           }),
    );
  }
}
