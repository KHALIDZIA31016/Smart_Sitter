import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_sitter/test.dart';
import 'package:smart_sitter/view/Home_Screen/home_screen.dart';
import 'package:smart_sitter/view/Onboarding_Screens/onboarding_View.dart';
import 'package:smart_sitter/view/UI/Login_Screen.dart';
import 'package:smart_sitter/view/splash_screen/splash_screen.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final onboarding = prefs.getBool('onboarding')??false;
  runApp( MyApp(onboarding: onboarding));
}

class MyApp extends StatelessWidget {
  final bool onboarding;
  const MyApp({super.key, this.onboarding = false});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
     // home: onboarding ? LoginScreen() : OnboardingView(),
     // home: OnboardingView(),
     home: LoginScreen(),

    );
  }
}
