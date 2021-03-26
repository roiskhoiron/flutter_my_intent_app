import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './destiny/SecondPage.dart';

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

class MyHomePage extends StatefulWidget {
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
                            builder: (BuildContext context) => SecondPage())
                    ),
                    child: Text("Pindah Activity")),
                Padding(padding: EdgeInsets.all(6.0)),
                ElevatedButton(
                    onPressed: () {},
                    child: Text("Pindah Activity Dengan Data")),
                Padding(padding: EdgeInsets.all(6.0)),
                ElevatedButton(
                    onPressed: () {},
                    child: Text("Pindah Activity Dengan Object")),
                Padding(padding: EdgeInsets.all(6.0)),
                ElevatedButton(onPressed: () {}, child: Text("Dial Number")),
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
