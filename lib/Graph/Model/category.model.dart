
import 'package:flutter/material.dart';

// Home 
// Search 1

class SearchItem {
  final String name;
  final String brand;
  final double price;

  SearchItem({
    required this.name,
    required this.brand,
    required this.price,
  });
}




//----------------*--------------------------------------------------*-----------------------------

// Home 2
// CategoryMenu 2

 class BrandItem {
  final IconData icon;
  final String title;

  BrandItem({
    required this.icon, 
  required this.title
  });
 }

//----------------*--------------------------------------------------*-----------------------------

// BannerModel 3

class BannerModel {
  final String title;
  final String subtitle;
  final String image;
  final List<Color> colors;

  BannerModel({
    required this.title,
    required this.subtitle,
    required this.image,
    required this.colors,

  });
}

//----------------*--------------------------------------------------*-----------------------------





// home

// TrandingItemModel 4

// class TrandingItemModel {
//   final String image;
//   final String title;
//   final String offer;
//   final bool isGreen;

//   const TrandingItemModel({
//     required this.image,
//     required this.title,
//     required this.offer,
//     required this.isGreen,
//   });
// }


//----------------*--------------------------------------------------*-----------------------------



class ItemData {
  final String title;
  final String description;
  final String category;

  const ItemData({
    required this.title,
    required this.description,
    required this.category,
  });
}


class Category {
  final IconData icon;
  final String title;

  const Category({
    required this.icon,
    required this.title,
  });
}


