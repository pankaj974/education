import 'package:carousel_slider/carousel_slider.dart';
import 'package:education/Graph/Data/banner_data.dart';
import 'package:education/banner/offer_banner.dart';
import 'package:flutter/material.dart';

class OfferBannerSlider extends StatelessWidget {
  const OfferBannerSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: banners.length,
      itemBuilder: (context, index, realIndex) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 2),
          child: OfferBanner(
            banner: banners[index],
          ),
        );
      },
      options: CarouselOptions(
        height: 170,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        enlargeCenterPage: true,
        viewportFraction: 1.02,
        enlargeFactor: 0.2,
        enableInfiniteScroll: true,
      ),
    );
  }
}