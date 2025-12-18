import 'package:flutter/material.dart';

class CropeCard extends StatelessWidget {
  const CropeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,

      child: Container(
        width: MediaQuery.of(context).size.width,

        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            children: [
              Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),

                child: Image.network(
                  "https://i.ibb.co.com/21XX6N2m/corn.jpg",
                  height: 130,
                  width: 500,
                  fit: BoxFit.fill,
                ),
              ),
              Text(
                "Corn",
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontSize: 20),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Type:Grain",
                    style: Theme.of(
                      context,
                    ).textTheme.titleLarge?.copyWith(fontSize: 15),
                  ),
                  Text(
                    "price:120/kg",
                    style: Theme.of(
                      context,
                    ).textTheme.titleLarge?.copyWith(fontSize: 15),
                  ),
                  Text(
                    "Quantity:500 kg",
                    style: Theme.of(
                      context,
                    ).textTheme.titleLarge?.copyWith(fontSize: 15),
                  ),
                  Text(
                    "Location:Dhaka",
                    style: Theme.of(
                      context,
                    ).textTheme.titleLarge?.copyWith(fontSize: 15),
                  ),
                  Text(
                    "Descripition:Best quality corn for cultivate in Bangladesh. With low maninitances cost, and switable for out country. And no frtilized...",
                    style: Theme.of(
                      context,
                    ).textTheme.titleLarge?.copyWith(fontSize: 10),
                  ),
                  SizedBox(height: 10,),
                  FilledButton(onPressed: (){}, child: Text("Vew Detalis"))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
