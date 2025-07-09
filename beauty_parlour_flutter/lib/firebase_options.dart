import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return const FirebaseOptions(
        apiKey: 'YOUR-API-KEY',
        authDomain: 'YOUR-PROJECT.firebaseapp.com',
        projectId: 'YOUR-PROJECT-ID',
        storageBucket: 'YOUR-PROJECT.appspot.com',
        messagingSenderId: 'YOUR-SENDER-ID',
        appId: 'YOUR-APP-ID',
      );
    }
    throw UnsupportedError(
      'DefaultFirebaseOptions have not been configured for this platform.',
    );
  }
}
