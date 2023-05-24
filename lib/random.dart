
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter/material.dart';

// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     appBar: AppBar(
//       title: const Text("Animation Example"),
//     ),
//     body: Stack(
//       children: [
//         Center(
//           child: ElevatedButton(onPressed: () {
//             addToCartPopUpAnimationController.forward();

//             Timer(const Duration(seconds: 3), () {
//               addToCartPopUpAnimationController.reverse();
//             });
//           }, child: const Icon(Icons.slideshow)),
//         ),
//         addToCartPopUp(),
//       ],
//     ),
//   );
// }

// addToCartPopUp() {
//   return SlideTransition(
//       position: Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero)
//           .animate(addToCartPopUpAnimationController),
//       child: Align(
//         alignment: Alignment.bottomCenter,
//         child: Wrap(
//           children: [
//             Card(
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(10)),
//               elevation: 12,
//               margin: EdgeInsets.all(15),
//               child: Padding(
//                 padding: EdgeInsets.all(16),
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const Padding(
//                       padding: EdgeInsets.only(top: 4),
//                       child: Icon(Icons.add_shopping_cart),
//                     ),
//                     const SizedBox(
//                       width: 15,
//                     ),
//                     Expanded(
//                         child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         const Text(
//                           "Successfully added to cart",
//                           style: TextStyle(
//                               fontSize: 18, fontWeight: FontWeight.w700),
//                         ),
//                         const SizedBox(
//                           height: 4,
//                         ),
//                         InkWell(
//                           onTap: () {},
//                           child: const Text(
//                             "Go to cart",
//                             style: TextStyle(
//                               color: Color(0xff535960),
//                               fontSize: 14,
//                               fontWeight: FontWeight.w400,
//                             ),
//                           ),
//                         ),
//                       ],
//                     )),
//                     const SizedBox(
//                       width: 15,
//                     ),
//                     InkWell(
//                         onTap: () {
//                           addToCartPopUpAnimationController.reverse();
//                         },
//                         child: const Icon(Icons.cancel)),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ));
// }


                  // Container(
                  //   height: 45,
                  //   width: screenWidth / 1.4,
                  //   child: TextFormField(
                  //     controller: searchController,
                  //     cursorColor: Colors.white10,
                  //     decoration: InputDecoration(
                  //       filled: true,
                  //       fillColor: Utils.searchGrey,
                  //       border: OutlineInputBorder(
                  //         borderRadius: BorderRadius.circular(10),
                  //         borderSide: BorderSide.none,
                  //       ),
                  //       hintText: "Search Startups",
                  //       // suffixIcon: searchController.text.length > 0
                  //       //     ? IconButton(
                  //       //         onPressed: searchController.clear,
                  //       //         icon: Icon(Icons.clear),
                  //       //       )
                  //       //     : Container(
                  //       //         height: 0,
                  //       //       ),
                  //     ),
                  //   ),
                  // ),