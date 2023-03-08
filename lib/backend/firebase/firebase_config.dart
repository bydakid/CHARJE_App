import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAnH-JcVsGRm4XgZOjWMZb8MiE4MzEsjn0",
            authDomain: "charje-92986.firebaseapp.com",
            projectId: "charje-92986",
            storageBucket: "charje-92986.appspot.com",
            messagingSenderId: "994814945535",
            appId: "1:994814945535:web:a8b59c5994e6ed923dc4ca",
            measurementId: "G-N66F94V2HS"));
  } else {
    await Firebase.initializeApp();
  }
}
