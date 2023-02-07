import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:syuhada_apps/ui/pages/confirm_page.dart';
import 'package:syuhada_apps/ui/pages/home.dart';
import 'package:syuhada_apps/ui/pages/sign_in_forgot.dart';
import 'package:syuhada_apps/ui/pages/sign_in_page.dart';
import 'package:syuhada_apps/ui/pages/sign_in_reset.dart';
import 'package:syuhada_apps/ui/pages/sign_up_pages.dart';
import 'package:syuhada_apps/ui/pages/sign_up_profile.dart';
import 'package:syuhada_apps/ui/pages/sign_up_success.dart';
import 'package:syuhada_apps/ui/pages/splashscreen_page.dart';
import 'package:syuhada_apps/ui/pages/welcome_page.dart';

//MyApp dibuat konstan
void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //biar tulisan debugnya hilang
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const WelcomePage(),
        '/splashscreen': (context) => const SplashScreenPage(),
        '/signin': (context) => const SignInPage(),
        '/signup': (context) => const SignUpPage(),
        '/confirm': (context) => const ConfirmPage(),
        '/signupprofile': (context) => const SignUpProfilePage(),
        '/signupsuccess': (context) => const SignUpSuccessPage(),
        '/signinforgot': (context) => const SignInForgotPage(),
        '/signinreset': (context) => const SignInResetPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
