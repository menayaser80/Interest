// import 'package:flutter/material.dart';
// import 'package:intersest/interests_info.dart';
// import 'package:intersest/mail.dart';
//
//
// class InterestsScreen extends StatelessWidget {
//   InterestsScreen({Key? key}) : super(key: key);
//
//   List<InterestsInfo> interestsModelList = [
//     InterestsInfo(
//       image: ImageAssets.anatomy,
//       text: 'Anatomy',
//     ),
//     InterestsInfo(
//       image: ImageAssets.marketing,
//       text: 'Marketing',
//     ),
//     InterestsInfo(
//       image: ImageAssets.botany,
//       text: 'Botany',
//     ),
//     InterestsInfo(
//       image: ImageAssets.programming,
//       text: 'Programming',
//     ),
//     InterestsInfo(
//       image: ImageAssets.photography,
//       text: 'Photography',
//     ),
//     InterestsInfo(
//       image: ImageAssets.music,
//       text: 'Music',
//     ),
//     InterestsInfo(
//       image: ImageAssets.graphic,
//       text: 'Graphic',
//     ),
//     InterestsInfo(
//       image: ImageAssets.art,
//       text: 'Art',
//     ),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: EdgeInsetsDirectional.only(
//               top: 26.00,
//               start: 22.00,
//               end: 22.00,
//             ),
//             child: Column(
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'What are your interests?',
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 24,
//                       ),
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Text(
//                       'select up to 3 topics so that we can recommend the best learning modules and videos for you',
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 17
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 64,
//                 ),
//                 SizedBox(
//                   height: 360,
//                   width: double.infinity,
//                   child: SingleChildScrollView(
//                     physics: const BouncingScrollPhysics(),
//                     child: GridView.count(
//                       shrinkWrap: true,
//                       physics: const NeverScrollableScrollPhysics(),
//                       crossAxisCount: 2,
//                       childAspectRatio: 2.5,
//                       crossAxisSpacing: 17,
//                       mainAxisSpacing: 28,
//                       children: List.generate(
//                         interestsModelList.length,
//                         (index) => GestureDetector(
//                           onTap: () {
//                             //color
//                           },
//                           child: customInterestsItem(interestsModelList[index]),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 63,
//                 ),
//                 MaterialButton(
//                   onPressed: () {
//                     Navigator.push(context, MaterialPageRoute(
//                       builder:(context)=>mail(),
//                     ));
//                   },
//                   child:Text('Done') ,
//                 ),
//                 SizedBox(
//                   height: 28,
//                 ),
//                 TextButton(
//                   onPressed: () {},
//                   child: Text(
//                     'skip for now'.toUpperCase(),
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 16,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
