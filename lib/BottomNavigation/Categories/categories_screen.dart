
import 'package:education/BottomNavigation/Categories/earbuds_wireless.dart';
import 'package:education/BottomNavigation/Categories/latest_item.dart';
import 'package:education/BottomNavigation/Categories/latest_phone.dart';
import 'package:education/banner/offer_banner_slider.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 80,
        automaticallyImplyLeading: false,
        title: Text(
          "All Categories",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, size: 30),
          ),
          const SizedBox(width: 5),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart, size: 30),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Special Offers",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(height: 15),

            const OfferBannerSlider(),

            const SizedBox(height: 25),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Shop by Categories",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(height: 15),
             LatestItem(),
            
            const SizedBox(height: 18),
             const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "EarBuds Wirelss & without wireless",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),

             const SizedBox(height: 15),
              EarbudsWireless(),

               const SizedBox(height: 15),

               const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Tranding Phone's",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(height: 15),
            LatestPhone(),
            
          ],
        ),
      ),
    );
  }
}
