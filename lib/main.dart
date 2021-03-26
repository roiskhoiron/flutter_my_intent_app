import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                ElevatedButton(onPressed: () {}, child: Text("Pindah Activity")),
                ElevatedButton(onPressed: () {}, child: Text("Pindah Activity Dengan Data")),
                ElevatedButton(onPressed: () {}, child: Text("Pindah Activity Dengan Object")),
                ElevatedButton(onPressed: () {}, child: Text("Dial Number")),
                ElevatedButton(onPressed: () {}, child: Text("Pindah Activity Untuk Result")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
