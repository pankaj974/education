import 'package:flutter/material.dart';
class TrandingMonitorModel {
  final String image;
  final String name;
  final String price;
  final String oldPrice;
  final double rating;

  const TrandingMonitorModel({
    required this.image,
    required this.name,
    required this.price,
    required this.oldPrice,
    required this.rating,
  });
}

class TrandingMonitor extends StatelessWidget {
  TrandingMonitor({super.key});

  final List<Map<String, String>> monitors = [
    {
      "image": "assets/images/monitor.png",
      "name": "LG Monitor",
      "price": "₹18,999",
      "oldPrice": "₹22,999",
      "rating": "4.8",
    },
    {
      "image": "assets/images/monitor2.png",
      "name": "Samsung",
      "price": "₹15,499",
      "oldPrice": "₹19,999",
      "rating": "4.6",
    },
    {
      "image": "assets/images/monitor3.png",
      "name": "Dell",
      "price": "₹12,999",
      "oldPrice": "₹16,999",
      "rating": "4.7",
    },
    {
      "image": "assets/images/monitor2.png",
      "name": "Acer",
      "price": "₹11,999",
      "oldPrice": "₹14,999",
      "rating": "4.5",
    },
    {
      "image": "assets/images/monitor3.png",
      "name": "HP",
      "price": "₹17,999",
      "oldPrice": "₹20,999",
      "rating": "4.9",
    },
    {
      "image": "assets/images/monitor2.png",
      "name": "ASUS",
      "price": "₹21,999",
      "oldPrice": "₹25,999",
      "rating": "4.8",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Monitor",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),

          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: monitors.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 16,
              mainAxisExtent: 330,
              childAspectRatio: 0.55,
            ),
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.08),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Top Section
                    Expanded(
                      flex: 5,
                      child: Stack(
                        children: [
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: Image.asset(
                                monitors[index]["image"]!,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),

                          // Discount Badge
                          Positioned(
                            top: 10,
                            left: 10,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Text(
                                "20% OFF",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),

                          // Favourite
                          Positioned(
                            top: 8,
                            right: 8,
                            child: CircleAvatar(
                              radius: 16,
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.favorite_border,
                                color: Colors.grey.shade700,
                                size: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Product Name
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Text(
                        monitors[index]["name"]!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),

                    const SizedBox(height: 6),

                    // Rating
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        children: [
                          const Icon(Icons.star, color: Colors.amber, size: 16),
                          const SizedBox(width: 4),
                          Text(
                            monitors[index]["rating"]!,
                            style: const TextStyle(fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(width: 4),
                          Text(
                            "(120)",
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 6),

                    // Price
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        children: [
                          Text(
                            monitors[index]["price"]!,
                            style: const TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(width: 6),
                          Text(
                            monitors[index]["oldPrice"]!,
                            style: const TextStyle(
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 10),

                    // Add to Cart
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: SizedBox(
                        width: double.infinity,
                        height: 38,
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.shopping_cart,
                            size: 18,
                            color: Colors.white,
                          ),
                          label: const Text(
                            "Add to Cart",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 10),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
