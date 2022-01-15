import 'package:crud_firebase/form.dart';
import 'package:crud_firebase/readdata.dart';
import 'package:crud_firebase/resultstream.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: ResultStream(),
  ));
}
