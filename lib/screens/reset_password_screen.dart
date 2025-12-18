import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:krishi_link/screens/screen_background.dart';
import 'package:krishi_link/screens/signin_screen.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});
  static const String name = '/ResetPasswordScreen';

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            spacing: 8,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 60),
              Text(
                "Reset Password",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                "Minimum length of password should more than 8 letters",
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(hintText: "New Password"),
              ),
              TextFormField(
                decoration: InputDecoration(hintText: "Confirm Password"),
              ),
              SizedBox(height: 8),
              FilledButton(
                onPressed: () {},
                child: Icon(Icons.arrow_circle_right_outlined),
              ),
              SizedBox(height: 16),
              Center(
                child: RichText(
                  text: TextSpan(

                    text: 'Have an account ?',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),

                    children: [TextSpan(text: "Sign in",
                      style: TextStyle(
                        color: Colors.green,


                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap =_onTapSignInButoon
                    )],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  void _onTapSignInButoon(){
    Navigator.pushNamedAndRemoveUntil(context, SigninScreen.name,(predicate)=>false);

  }
}


