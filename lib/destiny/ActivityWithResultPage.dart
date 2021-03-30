import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActivityWithResultPage extends StatefulWidget {
  @override
  _ActivityWithResultPage createState() {
    return _ActivityWithResultPage();
  }
}

class _ActivityWithResultPage extends State<ActivityWithResultPage> {
  int _choosed;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Activity with Result Pop"),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text("Pilih angka yang kamu suka"),
            Padding(padding: EdgeInsets.all(6.0)),
            ListTile(
              title: const Text("50"),
              // ignore: missing_required_param
              leading: Radio<int>(
                value: 50,
                groupValue: _choosed,
                onChanged: (int value) {
                  setState(() {
                    _choosed = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text("100"),
              // ignore: missing_required_param
              leading: Radio<int>(
                value: 100,
                groupValue: _choosed,
                onChanged: (int value) {
                  setState(() {
                    _choosed = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text("150"),
              // ignore: missing_required_param
              leading: Radio<int>(
                value: 150,
                groupValue: _choosed,
                onChanged: (int value) {
                  setState(() {
                    _choosed = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text("200"),
              // ignore: missing_required_param
              leading: Radio<int>(
                value: 200,
                groupValue: _choosed,
                onChanged: (int value) {
                  setState(() {
                    _choosed = value;
                  });
                },
              ),
            ),
            Padding(padding: EdgeInsets.all(6.0)),
            ElevatedButton(
                onPressed: () => Navigator.pop(context, _choosed.toString()),
                child: Text("Submit"))
          ],
        ),
      ),
    );
  }
}
