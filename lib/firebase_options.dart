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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCpwWivD2HHga5aCR_8M3egZ2OMxZiS0K8',
    appId: '1:156290734204:web:dfe96d0b270224aa1291f9',
    messagingSenderId: '156290734204',
    projectId: 'solve-it-c9177',
    authDomain: 'solve-it-c9177.firebaseapp.com',
    storageBucket: 'solve-it-c9177.appspot.com',
    measurementId: 'G-62HPMWSTB2',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDm4MdBDYUZzL-45ZtUKXcWqx-Q_7zapWU',
    appId: '1:156290734204:android:33cf0be65e8eb8131291f9',
    messagingSenderId: '156290734204',
    projectId: 'solve-it-c9177',
    storageBucket: 'solve-it-c9177.appspot.com',
  );
}
