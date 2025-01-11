import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditaion_app/model/madi_card.dart';
import 'package:meditaion_app/model/maditate_model.dart';
import 'package:meditaion_app/screens/course_screen.dart';

import 'package:meditaion_app/screens/second_homescreen.dart';
import 'package:page_transition/page_transition.dart';

class MaditateScreen extends StatefulWidget {
  const MaditateScreen({super.key});

  @override
  State<MaditateScreen> createState() => _MaditateScreenState();
}

class _MaditateScreenState extends State<MaditateScreen> {
  final List<MaditateList>  maditateListData = [
    MaditateList(
        text: 'All',
        bgColor: const Color.fromARGB(255, 142, 151, 253),
        imgData: 'assets/all.svg'),
    MaditateList(
        text: 'My',
        bgColor: const Color.fromARGB(255, 160, 163, 177),
        imgData: 'assets/fav.svg'),
    MaditateList(
        text: 'Anxious',
        bgColor: const Color.fromARGB(255, 160, 163, 177),
        imgData: 'assets/sad.svg'),
    MaditateList(
        text: 'Sleep',
        bgColor: const Color.fromARGB(255, 160, 163, 177),
        imgData: 'assets/sleep.svg'),
    MaditateList(
        text: 'Kids',
        bgColor: const Color.fromARGB(255, 160, 163, 177),
        imgData: 'assets/kids.svg'),
    MaditateList(
        text: 'Yoga',
        bgColor: const Color.fromARGB(255, 160, 163, 177),
        imgData: 'assets/yoga.svg',
        iconColor: Colors.white),
    MaditateList(
        text: 'Morning',
        bgColor: const Color.fromARGB(255, 160, 163, 177),
        imgData: 'assets/morning.svg',
        iconColor: Colors.white),
  ];
  final List<MadiCard> customMadiCard = [
    MadiCard(
      text: 'Calm Radiance',
      img: 'assets/Group.svg',
    ),
    MadiCard(
      text: 'Peaceful Horizon',
      img: 'assets/Group2.svg',
    ),
    MadiCard(
      text: 'Soothing Green',
      img: 'assets/Group3.svg',
    ),
    MadiCard(
      text: 'Nature Bliss',
      img: 'assets/Group4.svg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final ht = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CourseScreen(),
                  ));
            },
            icon: const Icon(Icons.arrow_back_rounded)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Column(
              children: [
                const Text(
                  'Meditate',
                  style: TextStyle(
                    color: Color.fromARGB(255, 63, 65, 78),
                    fontSize: 28,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(
                  height: ht * 0.02,
                ),
                const Text(
                  'We can learn how to recognize when our minds\nare doing their normal everyday acrobatics.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromARGB(255, 160, 163, 177),
                    fontSize: 14,
                    // fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: ht * 0.04,
                ),
              ],
            ),
            SizedBox(height: ht * 0.16,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: maditateListData.length,
                  itemBuilder: (context, index) {
                    final item = maditateListData[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: item.bgColor,
                            radius: 28,
                            child: SvgPicture.asset(
                              item.imgData,
                              color: item.iconColor,
                              height: 22,
                              width: 22,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            item.text,
                            style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Color.fromARGB(255, 63, 65, 78)),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            singleCard(),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: MasonryGridView.builder(
                    physics: const BouncingScrollPhysics(),

                    gridDelegate:
                        const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemCount: customMadiCard.length,
                    shrinkWrap: true,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    itemBuilder: (context, index) {
                      final item = customMadiCard[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  child: const SecondHomeScreen()));
                        },
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: SvgPicture.asset(
                                item.img,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              bottom: 12,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  item.text,
                                  style: const TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );

                    })),
          ],
        ),
      ),
    );
  }

  Widget singleCard() {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 241, 221, 207),
          image: const DecorationImage(
              image: AssetImage('assets/music_bg2.png'), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(12)),
      height: 90,
      width: double.infinity,
      child: const Stack(children: [
        Padding(
          padding: EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Daily Calm',
                style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 63, 65, 78),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    'APR 30',
                    style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 90, 97, 117),
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'PAUSE PRACTICE',
                    style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 90, 97, 117),
                        fontWeight: FontWeight.w500),
                  ),
                  // Spacer(),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          right: 12,
          top: 22,
          child: CircleAvatar(
            backgroundColor: Color.fromARGB(255, 63, 65, 78),
            child: Icon(
              Icons.play_arrow_rounded,
              size: 38,
              color: Colors.white,
            ),
          ),
        )
      ]),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:meditaion_app/model/madi_card.dart';
// import 'package:meditaion_app/model/maditate_model.dart';
// import 'package:meditaion_app/screens/second_homescreen.dart';
// import 'package:page_transition/page_transition.dart';
//
//
// class MaditateScreen extends StatefulWidget {
//   MaditateScreen({super.key});
//
//   @override
//   State<MaditateScreen> createState() => _MaditateScreenState();
// }
//
// class _MaditateScreenState extends State<MaditateScreen> {
//   final List<MaditateList> MaditateListData = [
//     MaditateList(
//         text: 'All',
//         bgColor: Color.fromARGB(255, 142, 151, 253),
//         imgData: 'assets/all.svg'),
//     MaditateList(
//         text: 'My',
//         bgColor: Color.fromARGB(255, 160, 163, 177),
//         imgData: 'assets/fav.svg')
//   ];
//
//   final List<MadiCard> customMadiCard = [
//     MadiCard(
//       text: 'Calm Radiance',
//       img: 'assets/Group.svg',
//     ),
//     MadiCard(
//       text: 'Peaceful Horizon',
//       img: 'assets/Group2.svg',
//     ),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(18.0),
//         child: Column(
//           children: [
//             const Column(
//               children: [
//                 Text(
//                   'Meditate',
//                   style: TextStyle(
//                     color: Color.fromARGB(255, 63, 65, 78),
//                     fontSize: 28,
//                     fontWeight: FontWeight.w700,
//                   ),
//                 ),
//                 SizedBox(
//                   height: 8,
//                 ),
//                 Text(
//                   'We can learn how to recognize when our minds\nare doing their normal everyday acrobatics.',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     color: Color.fromARGB(255, 160, 163, 177),
//                     fontSize: 16,
//                     fontWeight: FontWeight.w400,
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//               ],
//             ),
//             Container(
//               height: 100,
//               width: double.infinity,
//               child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: MaditateListData.length,
//                 itemBuilder: (context, index) {
//                   final item = MaditateListData[index];
//                   return Padding(
//                     padding: EdgeInsets.only(right: 18.0),
//                     child: Column(
//                       children: [
//                         CircleAvatar(
//                           child: SvgPicture.asset(
//                             item.imgData,
//                             color: item.iconColor,
//                             height: 22,
//                             width: 22,
//                             fit: BoxFit.cover,
//                           ),
//                           backgroundColor: item.bgColor,
//                           radius: 28,
//                         ),
//                         SizedBox(
//                           height: 8,
//                         ),
//                         Text(
//                           item.text,
//                           style: TextStyle(
//                               fontWeight: FontWeight.w500,
//                               fontSize: 16,
//                               color: Color.fromARGB(255, 63, 65, 78)),
//                         ),
//                       ],
//                     ),
//                   );
//                 },
//               ),
//             ),
//             SizedBox(height: 20),
//             singleCard(),
//             SizedBox(
//               height: 20,
//             ),
//             Expanded(
//               child: MasonryGridView.builder(
//                 padding: EdgeInsets.symmetric(horizontal: 10),
//                 gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2),
//                 itemCount: customMadiCard.length,
//                 shrinkWrap: true,
//                 crossAxisSpacing: 8,
//                 mainAxisSpacing: 8,
//                 itemBuilder: (context, index) {
//                   final item = customMadiCard[index];
//                   return GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                           context,
//                           PageTransition(
//                               type: PageTransitionType.rightToLeft,
//                               child: SecondHomeScreen()));
//                     },
//                     child: Stack(
//                       children: [
//                         ClipRRect(
//                           borderRadius: BorderRadius.circular(12),
//                           child: SvgPicture.asset(
//                             item.img,
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                         Positioned(
//                           child: Padding(
//                             padding: const EdgeInsets.only(left: 10.0),
//                             child: Text(
//                               item.text,
//                               style: TextStyle(
//                                   fontSize: 18,
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.w500),
//                             ),
//                           ),
//                           bottom: 12,
//                         ),
//                       ],
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget singleCard() {
//     return Container(
//       decoration: BoxDecoration(
//         color: Color.fromARGB(255, 241, 221, 207),
//         image: DecorationImage(
//           image: AssetImage('assets/music_bg2.png'),
//           fit: BoxFit.cover,
//         ),
//         borderRadius: BorderRadius.circular(12),
//       ),
//       height: 80,
//       width: double.infinity,
//       child: const Stack(
//         children: [
//           Padding(
//             padding: EdgeInsets.all(18.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'Daily Calm',
//                   style: TextStyle(
//                       fontSize: 18,
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(
//                   height: 4,
//                 ),
//                 Row(
//                   children: [
//                     Text(
//                       'APR 30',
//                       style: TextStyle(
//                           fontSize: 12,
//                           color: Colors.white,
//                           fontWeight: FontWeight.w400),
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     Text(
//                       'PAUSE PRACTICE',
//                       style: TextStyle(
//                           fontSize: 12,
//                           color: Colors.white,
//                           fontWeight: FontWeight.w400),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           Positioned(
//             right: 12,
//             top: 20,
//             child: CircleAvatar(
//               backgroundColor: Color.fromARGB(255, 63, 65, 78),
//               child: Icon(
//                 Icons.play_arrow_rounded,
//                 size: 28,
//                 color: Colors.white,
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
