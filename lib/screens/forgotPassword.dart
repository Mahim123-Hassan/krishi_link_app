import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:krishi_link/screens/screen_background.dart';

import 'forgot_password_verify_otp_screen.dart';

class Forgotpassword extends StatefulWidget {
  const Forgotpassword({super.key});
  static const String name = '/Forgotpassword ';

  @override
  State<Forgotpassword> createState() => _ForgotpasswordState();
}

class _ForgotpasswordState extends State<Forgotpassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 8,
            children: [
              const SizedBox(height: 60),
              Text(
                "Your Email Address",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                "A 6 digits verification OTP Will be send to your email address",
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Enter your Email",
                  hintText: "Email",
                ),
              ),
              SizedBox(height: 8),
              FilledButton(
                onPressed: _onTapSubmitButton,
                child: Icon(Icons.arrow_circle_right_outlined),
              ),
              SizedBox(height: 16),

              Center(
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                    text: "Have account?",
                    children: [
                      TextSpan(
                        style: TextStyle(color: Colors.green),
                        text: 'Sign in',
                        recognizer: TapGestureRecognizer()
                          ..onTap = _onTapSignInButton,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onTapSignInButton() {
    Navigator.pop(context);
  }

  void _onTapSubmitButton() {
    Navigator.pushNamed(context, ForgotPasswordVerifyOtpScreen.name);
  }
}
