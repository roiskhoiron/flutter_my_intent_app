import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActivityWithDataPage extends StatefulWidget {
  String nama;
  int usia;

  ActivityWithDataPage(this.nama, this.usia);

  @override
  _ActivityWithDataPage createState() {
    return _ActivityWithDataPage();
  }
}

class _ActivityWithDataPage extends State<ActivityWithDataPage> {
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
                Text("Nama : ${widget.nama} \nUsia : ${widget.usia}", style: TextStyle(fontWeight: FontWeight.bold),)
              ],
            )
          ],
        ),
      )
    );
  }
  
}
