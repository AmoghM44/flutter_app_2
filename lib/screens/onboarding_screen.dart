import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/login_screen.dart';
import 'package:flutter_application_2/screens/signup_screen.dart';
import 'package:flutter_application_2/widgets/custom_button.dart';

class OnboardingScreen extends StatelessWidget {
  static const String routeName = '/onboarding';
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome To \n Streamify', 
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(vertical: .0),
              child: CustomButton(onTap: () {
                Navigator.pushNamed(context, LoginScreen.routeName);
              },
              text: 'Log In'),
            ),
            CustomButton(onTap: () {
              Navigator.pushNamed(context, SignupScreen.routeName);
            }, text: 'Sign Up'),
          ],
        ),
      ),
    );
  }
}
