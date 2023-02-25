 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project3/loginscreen.dart';
import 'package:project3/new.dart';
import 'package:project3/splashscreen.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
   options: FirebaseOptions(
      apiKey: "AIzaSyBc1fNz80WrXVuyfxpY_sWpPkr0-MpL0so", // Your apiKey
      appId: "com.example.project3", // Your appId
     messagingSenderId: "255636753330", // Your messagingSenderId
      projectId: "nanma-455e3", // Your projectId
  ),
);
  runApp(MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: splashscreen(),
      theme: ThemeData(primaryColor: Colors.red),
    );
    
  }
}

//https://script.google.com/macros/s/AKfycby98fHprRDCzUO2ExVwXGJhkUCbZc5YqLPkB2-yQx8zwNms3R9cM8iJ7WtrIyA1x5PP/execz