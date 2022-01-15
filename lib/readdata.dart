import 'package:crud_firebase/result.dart';
import 'package:crud_firebase/services/auth.dart';
import 'package:flutter/material.dart';

class ReadData extends StatefulWidget {
  ReadData({Key? key}) : super(key: key);

  @override
  _ReadDataState createState() => _ReadDataState();
}

class _ReadDataState extends State<ReadData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
            child: Text("Get Data"),
            onPressed: () async {
              Map<String, dynamic> MAP = await getData();
              Navigator.push(
                  context, MaterialPageRoute(builder: (builder) => Result(map: MAP,)));
            }),
      ),
    );
  }
}
