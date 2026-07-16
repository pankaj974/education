import 'package:flutter/material.dart';

class EarbudsWireless extends StatelessWidget {
  EarbudsWireless({super.key});

  

  final List<Map<String, String>> buds = [
    {"image": "assets/images/buds.png", "name": "Boat"},
    {"image": "assets/images/buds1.png", "name": "wire lead"},
    {"image": "assets/images/buds2.png", "name": "Headphone"},
    {"image": "assets/images/buds3.png", "name": "OnePlus"},
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 4,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 10,
        mainAxisSpacing: 20,
        mainAxisExtent: 100,
      ),
      itemBuilder: (context, index) {
        return Column(
          children: [
            Expanded(
                child: InkWell(
                   onTap: () {},
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(255, 253, 253, 1),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset(
                        buds[index]["image"]!,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              
            ),

            const SizedBox(height: 6),

            Text(
              buds[index]["name"]!,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ],
        );
      },
    );
  }
}
