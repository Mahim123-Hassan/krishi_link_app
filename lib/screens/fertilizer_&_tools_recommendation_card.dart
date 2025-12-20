import "dart:math";

import "package:flutter/material.dart";

class FertilizerToolsRecommendationCard extends StatelessWidget {
  const FertilizerToolsRecommendationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shadowColor: Colors.grey,

      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 100,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Rice",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.green,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),

        ],
      ),

    );
  }
}
