import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crud_firebase/services/auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class FORM extends StatefulWidget {
  FORM({Key? key}) : super(key: key);

  @override
  _FORMState createState() => _FORMState();
}

class _FORMState extends State<FORM> {
  TextEditingController name = TextEditingController();
  TextEditingController marks = TextEditingController();
  TextEditingController rollno = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: name,
            decoration: InputDecoration(hintText: "Enter Name"),
          ),
          TextField(
            controller: marks,
            decoration: InputDecoration(hintText: "Enter Marks"),
          ),
          TextField(
            controller: rollno,
            decoration: InputDecoration(hintText: "Enter Roll.No"),
          ),
          RaisedButton(
              child: Text("Submit"),
              onPressed: () async {
                await submit(
                    name.text, int.parse(marks.text), int.parse(rollno.text));
              }),
          RaisedButton(
              child: Text("Delete Data"),
              onPressed: () {
                FirebaseFirestore.instance
                    .collection('student')
                    .doc('tm7mVQHclxmsBJ3Le5fJ')
                    .delete();
              }),
          RaisedButton(
              child: Text("Update"),
              onPressed: () {
                FirebaseFirestore.instance
                    .collection('student')
                    .doc('ADfbP8qIS1qbdgeKu4E8')
                    .update({'Name': 'Shiwani Ruhi'});
              })
        ],
      ),
    );
  }
}
