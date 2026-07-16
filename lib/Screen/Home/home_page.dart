
import 'package:education/BottomNavigation/SearchBar/searchbar_screen.dart';
import 'package:education/Screen/Menu/category_menu.dart';
import 'package:education/Screen/Menu/tranding_monitor.dart';
import 'package:education/Screen/Menu/tranding_watches.dart';
import 'package:education/Screen/Suggest%20Items/tranding_item.dart';
import 'package:education/banner/offer_banner_slider.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key, });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello, User! 👋",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Find your perfect laptop",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
            
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.notifications_none,
                            size: 30,
                          ),
                        ),
            
                        Positioned(
                          right: 8,
                          top: 8,
                          child: Container(
                            width: 16,
                            height: 16,
                            decoration: const BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ),
                            child: const Center(
                              child: Text(
                                "2",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 9,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
            
                const SizedBox(height: 20),
                const SearchBarWidget(),

                const SizedBox(height: 10),
                const CategoryMenu(),
                  
            
                // const OfferBanner(),
                const SizedBox(height: 12),
                const OfferBannerSlider(),     


                const SizedBox(height: 15),
                 PankajRawat(),

                 const SizedBox(height: 15,),
                  TrandingWatches(),

                  const SizedBox(height: 15,),
                   TrandingMonitor(),


                   const SizedBox(height: 15,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}