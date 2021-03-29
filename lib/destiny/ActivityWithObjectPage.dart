import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_my_intent_app/model/Users.dart';

class ActivityWithObjectPage extends StatefulWidget {
  Users users;

  ActivityWithObjectPage(this.users);

  @override
  _ActivityWithObjectPage createState() {
    return _ActivityWithObjectPage();
  }
}

class _ActivityWithObjectPage extends State<ActivityWithObjectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Activity With Data Receiver"),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text("Nama : ${widget.users.nama} \nUsia : ${widget.users.usia}", style: TextStyle(fontWeight: FontWeight.bold),)
              ],
            )
          ],
        ),
      )
    );
  }
}
