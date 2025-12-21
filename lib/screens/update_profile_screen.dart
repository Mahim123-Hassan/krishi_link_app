import 'package:flutter/material.dart';
import 'package:krishi_link/screens/screen_background.dart';

import '../widgets/photo_picker.dart';

class UpdateProfileScreen extends StatefulWidget {
  const UpdateProfileScreen({super.key});
  static const String name = "UpdateProfileScreen";

  @override
  State<UpdateProfileScreen> createState() => _UpdateProfileScreenState();
}

class _UpdateProfileScreenState extends State<UpdateProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(radius: 25),
            Column(
              spacing: 8,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Mahim",
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge?.copyWith(fontSize: 18),
                ),

                Text(
                  'hmahim951@gmail.come',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            ),
          ],
        ),
      ),
      body: ScreenBackground(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 36),
              Text(
                "Update Profile",
                style: Theme.of(context).textTheme.titleLarge,
              ),

              const SizedBox(height: 8),
              Container(
                height: 50,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: GestureDetector(
                  onTap: (){}c,
                    child: photo_picker()),
              ),
              const SizedBox(height: 8),
              TextFormField(decoration: InputDecoration(hintText: "Email")),
              SizedBox(height: 8),

              TextFormField(
                decoration: InputDecoration(hintText: "First Name"),
              ),
              SizedBox(height: 8),
              TextFormField(decoration: InputDecoration(hintText: "Last Name")),
              SizedBox(height: 8),
              TextFormField(decoration: InputDecoration(hintText: "Mobile")),
              SizedBox(height: 8),
              TextFormField(decoration: InputDecoration(hintText: "Password")),
              SizedBox(height: 16),
              FilledButton(
                onPressed: () {},
                style: FilledButton.styleFrom(fixedSize: Size(500, 50)),
                child: Icon(Icons.arrow_circle_right_outlined),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


