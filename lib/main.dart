import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/providers/user_provider.dart';
import 'package:flutter_application_2/screens/home_screen.dart';
import 'package:flutter_application_2/screens/login_screen.dart';
import 'package:flutter_application_2/screens/onboarding_screen.dart';
import 'package:flutter_application_2/screens/signup_screen.dart';
import 'package:flutter_application_2/utils/colors.dart';
import 'package:provider/provider.dart';

// void main() { // async has to be used
//   WidgetsFlutterBinding.ensureInitialized();
//   // await Firebase.initializeApp();
//   Firebase.initializeApp().then((_) {
//     runApp(MyApp());
//   }).catchError((e) {
//     print('Error initializing Firebase: $e');
//   });
//   runApp(const MyApp());
// }
Future firebaseInitalise() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}
void main() { // async has to be used
  firebaseInitalise();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (_)=> UserProvider(),
      ),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Streamify_2',
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: backgroundColor,
        appBarTheme: AppBarTheme.of(context).copyWith(
          backgroundColor: backgroundColor,
          elevation: 0,
          titleTextStyle: const TextStyle(
            color: primaryColor,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          iconTheme: const IconThemeData(
            color: primaryColor,
          ),
        ),
      ),

      routes: {
        OnboardingScreen.routeName: (context) => const OnboardingScreen(),
        LoginScreen.routeName:(context) => const LoginScreen(),
        SignupScreen.routeName:(context) => const SignupScreen(),
        HomeScreen.routeName:(context) => const HomeScreen(),
      },
      home: const OnboardingScreen(),
    );
  }
}
