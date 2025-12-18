import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:krishi_link/screens/screen_background.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});
  static const String name='/Signupscreen';

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
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
                const SizedBox(height: 60,),
                Text(
                  "Join With Us",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
            
                ),
                const SizedBox(height: 8,),
                TextFormField(decoration: InputDecoration(hintText: "Email")),
                TextFormField(decoration: InputDecoration(hintText: "FirstName")),
                TextFormField(decoration: InputDecoration(hintText: "LastName")),
                TextFormField(decoration: InputDecoration(hintText: "Mobail")),
                TextFormField(decoration: InputDecoration(hintText: "Password")),
                const SizedBox(height: 8,),
                FilledButton(
                  onPressed: _onTapSignUpButton,
                  child: Icon(Icons.arrow_circle_right_outlined),
                ),
                const SizedBox(height: 24,),
                Center(
                  child: Column(
                    children: [
            
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                          text: "Already have an account?",
                          children: [
                            TextSpan(
                              style: TextStyle(color: Colors.green),
                              text: 'Sign in',
                              recognizer: TapGestureRecognizer()
                                ..onTap =_onTapSignInButton,
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
  void _onTapSignInButton(){
    Navigator.pop(context);
  }
  void _onTapSignUpButton(){

  }

}
