import 'package:flutter/material.dart';
import 'package:krishi_link/screens/SignUpScreen.dart';
import 'package:krishi_link/screens/add%20_new_crop.dart';
import 'package:krishi_link/screens/forgotPassword.dart';
import 'package:krishi_link/screens/forgot_password_verify_otp_screen.dart';
import 'package:krishi_link/screens/home_screen.dart';
import 'package:krishi_link/screens/reset_password_screen.dart';
import 'package:krishi_link/screens/signin_screen.dart';
import 'package:krishi_link/screens/splash_screens.dart';

class KrishiLink extends StatelessWidget {
  const KrishiLink({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: Colors.green,

        inputDecorationTheme: InputDecorationThemeData(
          fillColor: Colors.grey.shade100,
          filled: true,

          hintStyle: TextStyle(fontWeight: FontWeight.w400, color: Colors.grey),

          contentPadding: EdgeInsets.symmetric(horizontal: 16),
          border: OutlineInputBorder(
            // borderSide: BorderSide.none,
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          errorBorder: OutlineInputBorder(
            //  borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: OutlineInputBorder(
            //  borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8),
          ),
          disabledBorder: OutlineInputBorder(
            // borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
            //borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(

            padding: EdgeInsets.symmetric(vertical: 14, horizontal: 24),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
          ),
        ),
        textTheme: TextTheme(
          titleLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          labelMedium: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
        ),
      ),

      routes: <String, WidgetBuilder>{
        SplashScreens.name: (_) => SplashScreens(),
        SigninScreen.name: (_) => SigninScreen(),
        Signupscreen.name: (_) => Signupscreen(),
        Forgotpassword.name: (_) => Forgotpassword(),
        ForgotPasswordVerifyOtpScreen.name: (_) =>
            ForgotPasswordVerifyOtpScreen(),
        ResetPasswordScreen.name:(_)=>ResetPasswordScreen(),
        HomeScreen.name:(_)=> HomeScreen(),
        Addnewcrop.name:(_)=>Addnewcrop(),

      },
      initialRoute: SplashScreens.name,
    );
  }
}
