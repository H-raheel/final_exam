import 'package:final_exam/firebase_options.dart';
import 'package:final_exam/screens/home.dart';
import 'package:final_exam/screens/login.dart';
import 'package:final_exam/services/authServices.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    // Enabled Riverpod for the entire application
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

//to ensure user stays signed In until logged out-alternative to Shared Preferences
class _MyAppState extends State<MyApp> {
  User? user;
  AuthService service = new AuthService();
  // This widget is the root of your application.
  @override
  void initState() {
    super.initState();
    user = service.getUser();
    //print(user?.email);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.blue, // Replace with your preferred color

        scaffoldBackgroundColor: Color.fromARGB(255, 230, 224, 224),
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 150, 145, 158)),
        useMaterial3: true,
      ),
      home: user != null ? HomeScreen() : LoginScreen(),
    );
  }
}

class SignUpScreen {}
