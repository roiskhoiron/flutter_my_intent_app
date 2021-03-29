import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_my_intent_app/model/Users.dart';

import './destiny/ActivityWithDataPage.dart';
import './destiny/ActivityWithObjectPage.dart';
import './destiny/SecondPage.dart';

const _phoneNumber = 'tel:+62 823 3462 6351';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: MyHomePage(),
    );
  }
}

// ignore: must_be_immutable
class MyHomePage extends StatefulWidget {
  Users newUser = Users(24, "Rois Khoiron");

  @override
  _MyHomePageState createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyIntentApp"),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                    onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (BuildContext context) => SecondPage())),
                    child: Text("Pindah Activity")),
                Padding(padding: EdgeInsets.all(6.0)),
                ElevatedButton(
                    onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  ActivityWithDataPage("Rois Khoiron", 22)),
                        ),
                    child: Text("Pindah Activity Dengan Data")),
                Padding(padding: EdgeInsets.all(6.0)),
                ElevatedButton(
                    onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  ActivityWithObjectPage(widget.newUser)),
                        ),
                    child: Text("Pindah Activity Dengan Object")),
                Padding(padding: EdgeInsets.all(6.0)),
                ElevatedButton(
                    onPressed: () => _launchDial,
                    child: Text("Dial Number")),
                Padding(padding: EdgeInsets.all(6.0)),
                ElevatedButton(
                    onPressed: () {},
                    child: Text("Pindah Activity Untuk Result")),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Future<void> _launchDial() async =>
    await canLaunch(_phoneNumber) ? await launch(_phoneNumber) : print('Could not Dial $_phoneNumber');
