import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:ecommerce_app/screens/auth_wrapper.dart';
// 1. Import the native splash package
import 'package:flutter_native_splash/flutter_native_splash.dart';


void main() async { // 1. Make the 'main' function asynchronous

  // 2. Ensure Flutter is ready before calling native code
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);


  // 3. Initialize Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );


  // 5. Run the app (this line is already here)
  runApp(const MyApp());

  FlutterNativeSplash.remove();
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'eCommerce App',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      // 1. Change this line
        home: const AuthWrapper(), // 2. Set LoginScreen as the home
    );
  }
}

