import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  Result({Key? key, required this.map}) : super(key: key);
  Map<String, dynamic>? map;
  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(widget.map!['Name']),
          Text(widget.map!['Marks'].toString()),
          Text(widget.map!['Roll No'].toString()),
        ],
      ),
    );
  }
}
