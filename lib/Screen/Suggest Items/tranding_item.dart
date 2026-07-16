import 'package:flutter/material.dart';

class PankajRawat extends StatefulWidget {
  const PankajRawat({super.key});

  @override
  State<PankajRawat> createState() => _PankajRawatState();
}

class _PankajRawatState extends State<PankajRawat> {
  final List<Map<String, dynamic>> items = [
    {
      "image": "assets/images/usb.png",
      "title": "Wireless USB Hub",
      "subtitle": "View Store",
      "color": Colors.black87,
    },
    {
      "image": "assets/images/buds.png",
      "title": "Wired Earphone",
      "subtitle": "Deals for you",
      "color": Colors.green,
    },
    {
      "image": "assets/images/keyboard.png",
      "title": "Keyboard",
      "subtitle": "Deals for you",
      "color": Colors.green,
    },
    {
      "image": "assets/images/monitor.png",
      "title": "Monitor",
      "subtitle": "Deals for you",
      "color": Colors.green,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Selected your favorite item "),
        SizedBox(
          height: 170,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Container(
                width: 130,
                margin: const EdgeInsets.only(right: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      items[index]["image"],
                      height: 70,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        items[index]["title"],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      items[index]["subtitle"],
                      style: TextStyle(
                        color: items[index]["color"],
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}