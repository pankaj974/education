import 'package:flutter/material.dart';

class TrandingWatchModel {
  final String image;
  final String title;
  final String price;
  final double rating;

  const TrandingWatchModel({
    required this.image,
    required this.title,
    required this.price,
    required this.rating,
  });
}

class TrandingWatches extends StatelessWidget {
  const TrandingWatches({super.key});

  final List<TrandingWatchModel> products = const [
    TrandingWatchModel(
      image: "assets/images/watch1.png",
      title: "Apple Watch",
      price: "₹55,999",
      rating: 4.8,
    ),
    TrandingWatchModel(
      image: "assets/images/watch2.png",
      title: "Samsung Watch",
      price: "₹19,999",
      rating: 4.8,
    ),
    TrandingWatchModel(
      image: "assets/images/watch3.png",
      title: "Noise Watch",
      price: "₹3,499",
      rating: 4.8,
    ),
    TrandingWatchModel(
      image: "assets/images/watch1.png",
      title: "Fire-Boltt",
      price: "₹2,999",
      rating: 4.8,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            "Suggested For You",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 15),
        SizedBox(
          height: 130,
          child: PageView.builder(
            controller: PageController(viewportFraction: 0.92),
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];

              return Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Image.asset(
                              product.image,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                product.title,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 6),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 16,
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    product.rating.toString(),
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              Text(
                                product.price,
                                style: const TextStyle(
                                  color: Colors.indigo,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite_border,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
