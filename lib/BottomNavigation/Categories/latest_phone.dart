import 'package:flutter/material.dart';

class LatestPhone extends StatelessWidget {
  LatestPhone({super.key});

  final List<Map<String, String>> phones = [
    {"image": "assets/images/phone.png", "name": "IPhone"},
    {"image": "assets/images/phone1.png", "name": "Samsung"},
    {"image": "assets/images/phone2.png", "name": "Google Pixel"},
    {"image": "assets/images/phone3.png", "name": "OnePlus"},
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: phones.length,
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
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 253, 253, 1),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(
                    phones[index]["image"]!,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 6),

            Text(
              phones[index]["name"]!,
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
