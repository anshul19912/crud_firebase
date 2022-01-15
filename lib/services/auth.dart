import 'package:cloud_firestore/cloud_firestore.dart';

//Adding data
Future<void> submit(String name, int marks, int rollno) async {
  CollectionReference collectionreference = FirebaseFirestore.instance.collection('student');
  try {
    await collectionreference.add({'Name': name, 'Marks': marks, 'Roll No': rollno});
  } catch (e) {
    print(e.toString());
  }
}


//Reading data
Future<Map<String, dynamic>> getData() async {
  CollectionReference collectionreference =
      FirebaseFirestore.instance.collection('student');
  DocumentSnapshot documentSnapshot =
      await collectionreference.doc('VOMsQWc47XoxzXive04A').get();
  Map<String, dynamic> map = documentSnapshot.data() as Map<String, dynamic>;
  print(map);
  return map;
}

//--- Querying---
//           FirebaseFirestore.instance
//             .collection('students')
//             .where('Marks', isGreaterThan: 50)
//             .snapshots(),
      



