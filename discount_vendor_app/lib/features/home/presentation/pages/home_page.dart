// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:discount_app/constants/app_constant.dart';
// import 'package:discount_app/router/routing_variables.dart';
// import 'package:discount_app/shared/widgets/submit_widget.dart';
import 'package:flutter/material.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';

import '../../../../shared/Helpers/image_helper.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currenIndex = 0;
  int carouselIndex = 0;
  int selectedCategory = 0;

  List categories = [
    "Popular",
    "Winter",
    "Woman",
    "Food",
    "Winter",
    "Woman",
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget body = Container();
    final size = MediaQuery.of(context).size;

    // PreferredSizeWidget appbar = MyNewAppBar(isBackButtonEnabled: false);
    // if (currentIndex == 0) {
    //   body = HomeTab();
    //   appbar = MyNewAppBar(isBackButtonEnabled: false);
    // } else if (currentIndex == 1) {
    //   body = MessagingPage();
    //   appbar = MyNewAppBar(title: "Support", isBackButtonEnabled: false);
    // } else if (currentIndex == 2) {
    //   body = NotificationPage();
    //   appbar = MyNewAppBar(title: "Notifications", isBackButtonEnabled: false);
    // } else if (currentIndex == 3) {
    //   body = ProfilePage();
    //   appbar = MyNewAppBar(title: "Profile", isBackButtonEnabled: false);
    // }
    return SafeArea(
      child: Container(),
      // child: Scaffold(
      //   backgroundColor: Colors.white,
      //   bottomNavigationBar: Container(
      //     decoration: BoxDecoration(
      //       color: AppConstant.neutral70,
      //       borderRadius: BorderRadius.only(
      //         topLeft: Radius.circular(20),
      //         topRight: Radius.circular(20),
      //       ),
      //     ),
      //     padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16),
      //     child: GNav(
      //       backgroundColor: AppConstant.neutral70,
      //       // rippleColor: Colors.white,
      //       // hoverColor: Colors.grey[100]!,
      //       gap: 8,
      //       activeColor: AppConstant.primaryColor,
      //       iconSize: 24,
      //       padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      //       duration: Duration(milliseconds: 400),
      //       tabBackgroundColor: AppConstant.primary05,
      //       color: Colors.white,
      //       tabs: [
      //         GButton(
      //           icon: Icons.home,
      //           text: 'Home',
      //         ),
      //         GButton(icon: Icons.event_note, text: 'Doc'),
      //         GButton(icon: Icons.settings, text: 'Settings'),
      //         GButton(icon: Icons.person_rounded, text: 'Profile'),
      //       ],
      //       selectedIndex: currenIndex,
      //       onTabChange: (index) {
      //         setState(() {
      //           currenIndex = index;
      //         });
      //       },
      //     ),
      //   ),
      //   body: SingleChildScrollView(
      //     child: Container(
      //       child: Column(
      //         children: [
      //           Padding(
      //             padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 16),
      //             child: Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: [
      //                 Container(
      //                   width: 36,
      //                   // child: CircleAvatar(radius: 18, backgroundColor: AppConstant.neutral70),
      //                 ),
      //                 Text("Get Discount", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
      //                 CircleAvatar(radius: 18, backgroundColor: AppConstant.neutral70),
      //               ],
      //             ),
      //           ),
      //           CarouselSlider.builder(
      //             options: CarouselOptions(
      //               height: 200,
      //               autoPlay: true,
      //               onPageChanged: (index, reason) {
      //                 setState(() {
      //                   carouselIndex = index;
      //                 });
      //               },
      //             ),
      //             itemCount: 4,
      //             itemBuilder: (context, index, realIndex) {
      //               return Container(
      //                 margin: EdgeInsets.symmetric(horizontal: 12),
      //                 width: double.infinity,
      //                 // height: 220,
      //                 child: Image(
      //                   image: AssetImage('lib/assets/images/dummy_home_slide.png'),
      //                 ),
      //               );
      //             },
      //           ),
      //           Container(
      //             height: 46,
      //             child: ListView.builder(
      //               physics: BouncingScrollPhysics(),
      //               scrollDirection: Axis.horizontal,
      //               shrinkWrap: true,
      //               itemCount: categories.length,
      //               itemBuilder: (context, index) {
      //                 return Row(
      //                   children: [
      //                     if (index == 0) SizedBox(width: 25),
      //                     InkWell(
      //                       onTap: () {
      //                         setState(() {
      //                           selectedCategory = index;
      //                         });
      //                       },
      //                       child: Container(
      //                         padding: EdgeInsets.symmetric(horizontal: 20, vertical: 11),
      //                         decoration: BoxDecoration(
      //                           color: index == selectedCategory ? AppConstant.neutral40 : AppConstant.neutral70,
      //                           borderRadius: BorderRadius.circular(12),
      //                         ),
      //                         child: Text(
      //                           categories[index],
      //                           style: TextStyle(
      //                             // color: index == selectedCategory ? AppConstant.primaryColor : AppConstant.neutral60,
      //                             color: Colors.white,
      //                             fontWeight: FontWeight.w500,
      //                           ),
      //                         ),
      //                       ),
      //                     ),
      //                     SizedBox(width: 12),
      //                   ],
      //                 );
      //               },
      //             ),
      //           ),
      //           SizedBox(height: 10),
      //           Container(
      //             height: 64,
      //             width: size.width,
      //             decoration: BoxDecoration(
      //               borderRadius: BorderRadius.only(
      //                 bottomLeft: Radius.circular(12),
      //                 bottomRight: Radius.circular(12),
      //               ),
      //             ),
      //             child: Column(
      //               children: [
      //                 Spacer(),
      //                 Row(
      //                   children: [
      //                     Expanded(
      //                       child: Container(
      //                         margin: EdgeInsets.symmetric(horizontal: 16),
      //                         height: 40,
      //                         decoration: BoxDecoration(
      //                           borderRadius: BorderRadius.circular(12),
      //                           border: Border.all(color: AppConstant.neutral20),
      //                         ),
      //                         child: Row(
      //                           crossAxisAlignment: CrossAxisAlignment.center,
      //                           children: [
      //                             SizedBox(width: 12),
      //                             Icon(Icons.search, size: 28, color: AppConstant.neutral70),
      //                             SizedBox(width: 8),
      //                             Expanded(
      //                               child: TextField(
      //                                 decoration: InputDecoration(
      //                                   border: InputBorder.none,
      //                                   hintText: "Search",
      //                                   hintStyle: TextStyle(
      //                                     // color: Color.fromRGBO(200, 204, 209, 1),
      //                                     color: AppConstant.neutral60,
      //                                     fontSize: 17,
      //                                   ),
      //                                 ),
      //                               ),
      //                             ),
      //                           ],
      //                         ),
      //                       ),
      //                     ),
      //                     CircleAvatar(
      //                       radius: 21,
      //                       backgroundColor: AppConstant.neutral40,
      //                       child: Icon(Icons.filter_list_rounded, color: Colors.white),
      //                     ),
      //                     SizedBox(width: 20),
      //                   ],
      //                 ),
      //                 SizedBox(height: 16),
      //               ],
      //             ),
      //           ),
      //           SizedBox(height: 12),
      //           Padding(
      //             padding: const EdgeInsets.symmetric(horizontal: 25.0),
      //             child: ListView.builder(
      //               itemCount: 6,
      //               shrinkWrap: true,
      //               physics: NeverScrollableScrollPhysics(),
      //               itemBuilder: (context, resourceIndex) {
      //                 return Column(
      //                   children: [
      //                     InkWell(
      //                       onTap: () {
      //                         //
      //                         showModalBottomSheet(
      //                           context: context,
      //                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16))),
      //                           builder: (BuildContext context) {
      //                             return Container(
      //                               height: 356,
      //                               padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
      //                               child: Column(
      //                                 children: [
      //                                   Row(
      //                                     children: [
      //                                       ImageHelper.getImageWidget("dummy_shop_title.png"),
      //                                       SizedBox(width: 12),
      //                                       Column(
      //                                         mainAxisAlignment: MainAxisAlignment.center,
      //                                         crossAxisAlignment: CrossAxisAlignment.start,
      //                                         children: [
      //                                           Text("Ryans Computers", style: TextStyle(fontWeight: FontWeight.w600)),
      //                                           SizedBox(height: 6),
      //                                           Text("Computer Store", style: TextStyle(fontSize: 12, color: AppConstant.neutral60)),
      //                                         ],
      //                                       ),
      //                                     ],
      //                                   ),
      //                                   SizedBox(height: 20),
      //                                   Row(
      //                                     children: [
      //                                       Expanded(
      //                                         child: Text(
      //                                           "One of the largest retail chain stores for computer products in Bangladesh, Desktops, PC Components, Camera, Office Equipment are the main products.",
      //                                           style: TextStyle(
      //                                             fontSize: 12,
      //                                             color: AppConstant.neutral60,
      //                                             height: 1.5,
      //                                           ),
      //                                         ),
      //                                       ),
      //                                     ],
      //                                   ),
      //                                   SizedBox(height: 20),
      //                                   Row(
      //                                     children: [
      //                                       Expanded(
      //                                         child: Container(
      //                                           height: 50,
      //                                           decoration: BoxDecoration(
      //                                             color: Color.fromRGBO(100, 76, 217, 0.1),
      //                                             borderRadius: BorderRadius.circular(12),
      //                                           ),
      //                                           child: Row(
      //                                             mainAxisAlignment: MainAxisAlignment.center,
      //                                             children: [
      //                                               Icon(
      //                                                 Icons.location_on,
      //                                                 color: Color.fromRGBO(100, 76, 217, 1),
      //                                               ),
      //                                               SizedBox(width: 12),
      //                                               Text(
      //                                                 "Location",
      //                                                 style: TextStyle(color: Color.fromRGBO(100, 76, 217, 1), fontWeight: FontWeight.w600),
      //                                               ),
      //                                             ],
      //                                           ),
      //                                         ),
      //                                       ),
      //                                       SizedBox(width: 16),
      //                                       Expanded(
      //                                         child: Container(
      //                                           height: 50,
      //                                           decoration: BoxDecoration(
      //                                             color: Color.fromRGBO(38, 153, 134, 0.1),
      //                                             borderRadius: BorderRadius.circular(12),
      //                                           ),
      //                                           child: Row(
      //                                             mainAxisAlignment: MainAxisAlignment.center,
      //                                             children: [
      //                                               Icon(
      //                                                 Icons.location_on,
      //                                                 color: Color.fromRGBO(38, 153, 134, 1),
      //                                               ),
      //                                               SizedBox(width: 12),
      //                                               Text(
      //                                                 "Make Call",
      //                                                 style: TextStyle(color: Color.fromRGBO(38, 153, 134, 1), fontWeight: FontWeight.w600),
      //                                               ),
      //                                             ],
      //                                           ),
      //                                         ),
      //                                       ),
      //                                     ],
      //                                   ),
      //                                   SizedBox(height: 16),
      //                                   InkWell(
      //                                     onTap: () {
      //                                       Navigator.pushNamed(context, Navigation.pricePage);
      //                                     },
      //                                     child: SubmitWidget(size: size, isMargin: false, text: "Shop now"),
      //                                   ),
      //                                 ],
      //                               ),
      //                             );
      //                           },
      //                         );
      //                       },
      //                       child: Container(
      //                         height: 200,
      //                         decoration: BoxDecoration(
      //                           color: AppConstant.neutral70,
      //                           borderRadius: BorderRadius.circular(16),
      //                           boxShadow: AppConstant.shadow04160,
      //                         ),
      //                         child: Column(
      //                           children: [
      //                             SizedBox(height: 8),
      //                             ImageHelper.getImageWidget("dummy_shop_display.png"),
      //                             Expanded(
      //                               child: Padding(
      //                                 padding: EdgeInsets.all(10),
      //                                 child: Row(
      //                                   children: [
      //                                     ImageHelper.getImageWidget("dummy_shop_title.png"),
      //                                     SizedBox(width: 12),
      //                                     Column(
      //                                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //                                       crossAxisAlignment: CrossAxisAlignment.start,
      //                                       children: [
      //                                         Text("Ryans Computers", style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white)),
      //                                         Text("10% Discount", style: TextStyle(fontSize: 12, color: Colors.white)),
      //                                       ],
      //                                     ),
      //                                   ],
      //                                 ),
      //                               ),
      //                             ),
      //                           ],
      //                         ),
      //                       ),
      //                     ),
      //                     SizedBox(height: 24),
      //                   ],
      //                 );
      //               },
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
