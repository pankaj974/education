
import 'package:education/Graph/Model/category.model.dart';
import 'package:flutter/material.dart';


final List<BannerModel> banners = [
  BannerModel(
    title: "Best Deals on\nSecond Hand Laptops",
    subtitle: "Up to 50% Off",
    image: "assets/images/laptop1.png",
    colors: [
      const Color(0xFF4F46E5),
      const Color(0xFF6D5DFB),
    ],
  ),

  BannerModel(
    title: "Gaming Laptops\nSpecial Offer",
    subtitle: "Save ₹80,000",
    image: "assets/images/laptop3.png",
    colors: [
      Colors.deepOrange,
      Colors.orange,
    ],
  ),

  BannerModel(
    title: "MacBook Collection",
    subtitle: "Starting 90,999",
    image: "assets/images/laptop4.png",
    colors: [
      Colors.teal,
      Colors.green,
    ],
  ),
];