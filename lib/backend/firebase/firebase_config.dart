import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCN_XwvIC4_-1NWumEfPWEQ_5o2O2j6cfQ",
            authDomain: "bd-joias-da-comunidade.firebaseapp.com",
            projectId: "bd-joias-da-comunidade",
            storageBucket: "bd-joias-da-comunidade.appspot.com",
            messagingSenderId: "865925843706",
            appId: "1:865925843706:web:21b225b175131a545ad743"));
  } else {
    await Firebase.initializeApp();
  }
}
