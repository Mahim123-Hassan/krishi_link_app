import 'package:flutter/material.dart';

class CropeCard extends StatelessWidget {
  const CropeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          clipBehavior: Clip.hardEdge,
          color: Colors.grey.shade200,

          child: SizedBox(
            width: MediaQuery.of(context).size.width,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Image.network(
                  "https://i.ibb.co.com/21XX6N2m/corn.jpg",
                  height: 170,
                  width: 500,
                  fit: BoxFit.fill,
                ),

                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Pome Granate",
                        style: Theme.of(
                          context,
                        ).textTheme.titleLarge?.copyWith(fontSize: 20),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Descripition:Best quality corn for cultivate in Bangladesh. With low maninitances cost, and switable for out country. And no frtilized...",
                        style: Theme.of(
                          context,
                        ).textTheme.titleLarge?.copyWith(fontSize: 14),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Price: ", style: TextStyle(fontSize: 16)),
                              Text(
                                "\$50.09",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          FilledButton(
                            onPressed: () {},
                            child: Text("Vew Detalis"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: 10,
          top: 15,
          child: IconButton(onPressed: () {}, icon: Icon(Icons.favorite,color: Colors.red,)),
        ),
      ],
    );
  }
}
