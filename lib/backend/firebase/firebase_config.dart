import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBl21_NNcuUeHVsIBiwKlVQuqCinBiyuk8",
            authDomain: "my-food-ea7ff.firebaseapp.com",
            projectId: "my-food-ea7ff",
            storageBucket: "my-food-ea7ff.appspot.com",
            messagingSenderId: "386071216493",
            appId: "1:386071216493:web:146dd2d321f57619355a64",
            measurementId: "G-HSQKR0PE0F"));
  } else {
    await Firebase.initializeApp();
  }
}
