// import 'package:education/Data/banner_data.dart';
// import 'package:education/banner/offer_banner.dart';
// import 'package:flutter/material.dart';

// class OfferBannerPageView extends StatelessWidget {
//   const OfferBannerPageView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 160,
//       child: PageView.builder(
//         controller: PageController(viewportFraction: 0.95),
//         itemCount: banners.length,
//         itemBuilder: (context, index) {
//           return Padding(
//             padding: const EdgeInsets.only(right: 2, left: 1),
//             child: OfferBanner(
//               banner: banners[index],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }