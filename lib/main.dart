import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_my_intent_app/model/Users.dart';

import './destiny/ActivityWithDataPage.dart';
import './destiny/ActivityWithObjectPage.dart';
import './destiny/SecondPage.dart';
import './destiny/ActivityWithResultPage.dart';

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
  String _information = 'No Information Yet';

  Future<void> _makePhoneCall(String url) async {
    await launch(url);
  }

  void updateInformation(String information) {
    setState(() => _information = information);
  }

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
              children: <Widget>[
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
                          CupertinoPageRoute(
                              fullscreenDialog: true,
                              builder: (BuildContext context) =>
                                  ActivityWithObjectPage(widget.newUser)),
                        ),
                    child: Text("Pindah Activity Dengan Object")),
                Padding(padding: EdgeInsets.all(6.0)),
                ElevatedButton(
                    onPressed: () {
                      _makePhoneCall('tel:+62878283473');
                    },
                    child: Text("Dial Number")),
                Padding(padding: EdgeInsets.all(6.0)),
                ElevatedButton(
                    onPressed: () async {
                      final information = await Navigator.push(
                        context,
                        CupertinoPageRoute(
                            fullscreenDialog: true,
                            builder: (BuildContext context) => ActivityWithResultPage()),
                      );

                      updateInformation(information);
                    },
                    child: Text("Pindah Activity Untuk Result")),
                Padding(padding: EdgeInsets.all(6.0)),
                Text("Hasil $_information", style: TextStyle(fontSize: 20.0), textAlign: TextAlign.center,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
