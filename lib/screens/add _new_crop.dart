import 'package:flutter/material.dart';
import 'package:krishi_link/screens/screen_background.dart';

class Addnewcrop extends StatefulWidget {
  const Addnewcrop({super.key});
  static const String name = "Addnewcrop";

  @override
  State<Addnewcrop> createState() => _AddnewcropState();
}

class _AddnewcropState extends State<Addnewcrop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Crop"),
        centerTitle: true,
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: ScreenBackground(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              spacing: 8,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Crop Name"),
                TextFormField(
                  decoration: InputDecoration(hintText: "Crop Name"),
                ),
                Text("Type"),
                DropdownMenu(
                  width: MediaQuery.of(context).size.width,

                  dropdownMenuEntries: [
                    DropdownMenuEntry(value: 'Vegetable', label: 'Vegatable'),
                    DropdownMenuEntry(value: 'Fruit', label: 'Fruit'),
                    DropdownMenuEntry(value: 'Grain', label: 'Grain'),
                  ],
                ),

                Row(
                  spacing: 5,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Text("Price Per Unit"),
                          TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(hintText: "Price"),
                          ),
                        ],
                      ),
                    ),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Unit"),
                          DropdownMenu(
                            width: MediaQuery.of(context).size.width,

                            dropdownMenuEntries: [
                              DropdownMenuEntry(value: 'Kg', label: 'Kg'),
                              DropdownMenuEntry(value: 'Ton', label: 'Ton'),
                              DropdownMenuEntry(value: 'Bag', label: 'Bag'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Quantity"),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(hintText: "Quantity"),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Location"),
                    TextFormField(
                      decoration: InputDecoration(hintText: 'Location'),
                    ),
                    Text("Description"),
                    TextFormField(
                      maxLines: 5,
                      decoration: InputDecoration(
                        hintText: "Short description about your crop.....",
                      ),
                    ),
                    SizedBox(height: 10),
                    Text("Select Photo"),
                    TextFormField(
                      decoration: InputDecoration(hintText: "Select Photo"),
                    ),
                    SizedBox(height: 10),
                    Center(
                      child: FilledButton(
                        onPressed: () {},
                        style: FilledButton.styleFrom(fixedSize: Size(500, 50)),
                        child: Text("Add Crop"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
