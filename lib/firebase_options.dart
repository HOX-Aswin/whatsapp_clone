// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAsYi4W-6tSDuLBzjffU4_CxcJt1xbZQY4',
    appId: '1:51991019008:web:a9dd20ff3afcff3f4d22e5',
    messagingSenderId: '51991019008',
    projectId: 'whatsapp-backend-c5008',
    authDomain: 'whatsapp-backend-c5008.firebaseapp.com',
    storageBucket: 'whatsapp-backend-c5008.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyArkmIpXl8jt8RsmGJgbBMa0HKp2xms-J0',
    appId: '1:51991019008:android:1b822a4dc049923c4d22e5',
    messagingSenderId: '51991019008',
    projectId: 'whatsapp-backend-c5008',
    storageBucket: 'whatsapp-backend-c5008.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC-FZfBS-eubM0aSudw4h4KB8qKV5D9Siw',
    appId: '1:51991019008:ios:ab86a8d084c7cc874d22e5',
    messagingSenderId: '51991019008',
    projectId: 'whatsapp-backend-c5008',
    storageBucket: 'whatsapp-backend-c5008.appspot.com',
    iosBundleId: 'com.example.whatsappClone',
  );
}
