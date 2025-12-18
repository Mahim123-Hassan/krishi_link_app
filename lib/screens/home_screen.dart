import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:krishi_link/screens/screen_background.dart';

import 'crope_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String name = "/ HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> sliderImages = [
    {'title': "Alu", "images": 'assates/images/after2.jpg'},
    {'title': "Rosun", 'images': 'assates/images/after3.jpg'},
    {'title': "Gom", 'images': 'assates/images/after.jpg'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    CircleAvatar(radius: 30),
                    SizedBox(width: 5),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Mahim",
                              style: Theme.of(
                                context,
                              ).textTheme.titleLarge?.copyWith(fontSize: 18),
                            ),
                            Text(
                              "hmahim951@gmail.com",
                              style: Theme.of(
                                context,
                              ).textTheme.titleMedium?.copyWith(fontSize: 13),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    IconButton(onPressed: () {}, icon: Icon(Icons.logout)),
                  ],
                ),
              ),
              SizedBox(height: 10),
              CarouselSlider(
                options: CarouselOptions(
                  height: 200.0,
                  autoPlay: true,
                  autoPlayInterval: Duration(milliseconds: 100),
                  enlargeCenterPage: true,
                  enlargeFactor: 0.5,
                ),
                items: sliderImages.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        clipBehavior: Clip.hardEdge,
                        width: MediaQuery.of(context).size.width,
          
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset(i["images"], fit: BoxFit.fill),
                      );
                    },
                  );
                }).toList(),
                
                
              ),
              
              Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 20,vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(text: TextSpan(
          
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.black),
          
                        text: "Latest ",children: [
                      TextSpan(
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.green),
                        text: "Crops",
                      ),
          
                    ])),
                    CropeCard()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
