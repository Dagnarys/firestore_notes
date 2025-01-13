import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:test_database/firebase_options.dart';

import 'pages/home_page.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.android);
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: HomePage(),
    );
  }
}