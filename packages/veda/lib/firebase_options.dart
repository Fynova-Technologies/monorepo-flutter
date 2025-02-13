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
    apiKey: 'AIzaSyCZIIqSGpShGEOMIlUg4wDjknkuzekj0PM',
    appId: '1:860342663068:web:f14fc6ca66929c0248fa59',
    messagingSenderId: '860342663068',
    projectId: 'veda-lookup-avishek',
    authDomain: 'veda-lookup-avishek.firebaseapp.com',
    storageBucket: 'veda-lookup-avishek.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDbC_tmX0pbsGsSjMJnvAU6APa36AipbYM',
    appId: '1:860342663068:android:912c129c6b90ce1948fa59',
    messagingSenderId: '860342663068',
    projectId: 'veda-lookup-avishek',
    storageBucket: 'veda-lookup-avishek.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCYYGHyRgm1iJLgj8CElBcUhP5LH5_P7UI',
    appId: '1:860342663068:ios:6b25ba030344702148fa59',
    messagingSenderId: '860342663068',
    projectId: 'veda-lookup-avishek',
    storageBucket: 'veda-lookup-avishek.appspot.com',
    iosBundleId: 'com.example.veda',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCYYGHyRgm1iJLgj8CElBcUhP5LH5_P7UI',
    appId: '1:860342663068:ios:dee3023fc58668e048fa59',
    messagingSenderId: '860342663068',
    projectId: 'veda-lookup-avishek',
    storageBucket: 'veda-lookup-avishek.appspot.com',
    iosBundleId: 'com.example.veda.RunnerTests',
  );
}
