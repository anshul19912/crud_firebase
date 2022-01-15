import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

//---  to data data of only 1 document
class ResultStream extends StatefulWidget {
  ResultStream({Key? key}) : super(key: key);

  @override
  _ResultStreamState createState() => _ResultStreamState();
}

class _ResultStreamState extends State<ResultStream> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection('student').snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting)
              return CircularProgressIndicator();
            return ListView(
              children: [
                for (var item in snapshot.data!.docs) Text(item['Name'])
              ],
            );
          }),
    );
  }
}
//---  to data data of only 1 document
//      StreamBuilder(
//           stream: FirebaseFirestore.instance.collection('student').doc('ADfbP8qIS1qbdgeKu4E8').snapshots(),
//           builder:
//               (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting)
//               return CircularProgressIndicator();
//             return ListView(
//               children: [
//                 Text(snapshot.data!['Name'])
//               ],
//             );
//             }),


 