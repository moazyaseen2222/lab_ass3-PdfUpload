// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        return macos;
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
    apiKey: 'AIzaSyDWkFJhHde0SrRcIMz31EAgO1jXVdc5n0M',
    appId: '1:722027261200:web:4c0082ba3c592a6a1a0995',
    messagingSenderId: '722027261200',
    projectId: 'labass3-6ba68',
    authDomain: 'labass3-6ba68.firebaseapp.com',
    storageBucket: 'labass3-6ba68.appspot.com',
    measurementId: 'G-ZZQG11ZESV',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCfaGwstqCTddGN1UhX86lyfQrqpKXfAkQ',
    appId: '1:722027261200:android:d301b96bcc57ffb51a0995',
    messagingSenderId: '722027261200',
    projectId: 'labass3-6ba68',
    storageBucket: 'labass3-6ba68.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAX57OElfBwW2WQw70BEJuYzLMbegoxu7g',
    appId: '1:722027261200:ios:d7e0c11a05c868f31a0995',
    messagingSenderId: '722027261200',
    projectId: 'labass3-6ba68',
    storageBucket: 'labass3-6ba68.appspot.com',
    iosClientId: '722027261200-ujjfq9ha8cq75jss6jro2aek2ji7e6q5.apps.googleusercontent.com',
    iosBundleId: 'com.example.labAss3',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAX57OElfBwW2WQw70BEJuYzLMbegoxu7g',
    appId: '1:722027261200:ios:d7e0c11a05c868f31a0995',
    messagingSenderId: '722027261200',
    projectId: 'labass3-6ba68',
    storageBucket: 'labass3-6ba68.appspot.com',
    iosClientId: '722027261200-ujjfq9ha8cq75jss6jro2aek2ji7e6q5.apps.googleusercontent.com',
    iosBundleId: 'com.example.labAss3',
  );
}
