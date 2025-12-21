import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:krishi_link/screens/forgotPassword.dart';
import 'package:krishi_link/screens/screen_background.dart';

import 'SignUpScreen.dart';
import 'home_screen.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});
  static const String name = '/SigninScreen';

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: SingleChildScrollView(
            child: Column(
              spacing: 8,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 60),
                Text(
                  "Get Started With",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 8),

                TextFormField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: "Enter your email",
                    labelText: "Email",
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,

                    hintText: "Enter your Password",
                    labelText: "Password",
                  ),
                ),
                const SizedBox(height: 8),

                FilledButton(
                  onPressed: _onTapSignInButton,
                  child: Text("Login "),
                  style: FilledButton.styleFrom(),
                ),
                const SizedBox(height: 24),
                Center(
                  child: Column(
                    children: [
                      TextButton(
                        onPressed: _onTapForgotPasswordButton,
                        child: Text("Forgot Password?"),
                      ),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                          text: "Don't have ana account ?",
                          children: [
                            TextSpan(
                              style: TextStyle(color: Colors.green),
                              text: 'Sign Up',
                              recognizer: TapGestureRecognizer()
                                ..onTap = _onTapsignUpButton,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onTapSignInButton() {
    Navigator.pushNamed(context, HomeScreen.name);
  }

  void _onTapForgotPasswordButton() {
    Navigator.pushNamed(context, Forgotpassword.name);
  }

  void _onTapsignUpButton() {
    Navigator.pushNamed(context, Signupscreen.name);
  }
}
