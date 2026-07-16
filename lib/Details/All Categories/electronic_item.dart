import 'package:education/Graph/Data/electronic_data.dart';
import 'package:education/Graph/Model/electronic_model.dart';
import 'package:flutter/material.dart';

class ElectronicItem extends StatefulWidget {

  final ElectronicModel electronicItems;

  const ElectronicItem({
    super.key,
   required this.electronicItems,
  });

  @override
  State<ElectronicItem> createState() => _ElectronicItemState();
}

class _ElectronicItemState extends State<ElectronicItem> {
  @override
Widget build(BuildContext context) {
  return GridView.builder(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    itemCount: electronicItems.length,
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 4,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      mainAxisExtent: 100,
    ),
    itemBuilder: (context, index) {
      final item = electronicItems[index];

      return InkWell(
        onTap: () {
          // Navigate to details page
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (_) => ElectronicDetail(item: item),
          //   ),
          // );
        },
        child: Column(
          children: [
            Container(
              height: 65,
              width: 65,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Image.asset(
                item.image,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              item.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      );
    },
  );
}
}
