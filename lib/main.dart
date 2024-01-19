import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart'; // Import Firebase Auth
import 'package:testcli/features/app/splash_screen/splash_screen.dart';
import 'package:testcli/features/user_auth/presentation/pages/home_page.dart';
import 'package:testcli/features/user_auth/presentation/pages/login_page.dart';
import 'package:testcli/features/user_auth/presentation/pages/sign_up_page.dart';
import 'package:firebase_app_check/firebase_app_check.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   await FirebaseAppCheck.instance.activate();
//   runApp(MyApp());
// }


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
         apiKey: 'AIzaSyAB17UROfEUwv8Fl6SJ8cWpgQn8b857d8c',
         appId: '1:563166931943:android:42aae8adea603b12e56b42',
         messagingSenderId: '563166931943',
         projectId: 'testcli-c465f',
         storageBucket: 'testcli-c465f.appspot.com',
        // Your web Firebase config options
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Firebase',
      routes: {
        '/': (context) => SplashScreen(
          // Here, you can decide whether to show the LoginPage or HomePage based on user authentication
          child: LoginPage(),
        ),
        '/login': (context) => LoginPage(),
        '/signUp': (context) => SignUpPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}


