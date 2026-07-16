import 'package:flutter/material.dart';

class LatestItem extends StatelessWidget {
  LatestItem({super.key});

  final List<Map<String, String>> latestitems = [
    {"image": "assets/images/items.png", "name": "Mouse"},
    {"image": "assets/images/items1.png", "name": "Keyboard"},
    {"image": "assets/images/items2.png", "name": "CPU"},
    {"image": "assets/images/items3.png", "name": "Monitor"},
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: latestitems.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        mainAxisExtent: 100,
      ),
      itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
              height: 65,
              width: 65,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                latestitems[index]["image"]!,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              latestitems[index]["name"]!,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ],
        );
      },
    );
  }
}
