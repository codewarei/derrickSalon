import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAqNh6Rksyk5WVhVgTtUU2fDdvfoKkGZr0",
            authDomain: "derrickbarber-a3939.firebaseapp.com",
            projectId: "derrickbarber-a3939",
            storageBucket: "derrickbarber-a3939.appspot.com",
            messagingSenderId: "1094644633367",
            appId: "1:1094644633367:web:c0f0044046cbe4fb2b7152",
            measurementId: "G-77G826BS4M"));
  } else {
    await Firebase.initializeApp();
  }
}
