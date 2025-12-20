import 'package:flutter/material.dart';

class SmallCard extends StatelessWidget {
  const SmallCard({super.key});

  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shadowColor: Colors.grey,
      child: Column(
        children: [
          Container(
            constraints: const BoxConstraints.tightForFinite(
              width: 500,
              height: 150,
            ),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Browse Crops",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "Explore all available crops. Choose your own",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
