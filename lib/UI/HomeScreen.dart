// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:chat_application/UI/Camera/camera.dart';
import 'package:chat_application/UI/constatnt.dart';
import 'package:chat_application/UI/tabs/tab0.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'tabs/Tab1.dart';
import 'tabs/Tab2.dart';
import 'tabs/Tab3.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);

    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
          body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              automaticallyImplyLeading: false,
              title: Text(
                'WhatsAPP',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Times new Roman'),
              ),
              actions: [
                IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
              ],
              primary: true,
              floating: true,
              pinned: true,
              bottom: TabBar(isScrollable: true, tabs: [
                Tab(
                    child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CameraScreen()));
                  },
                  child: SizedBox(
                    width: screenwidth(context) / 10 * .6,
                    child: Center(
                        child: Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.white,
                    )),
                  ),
                )),
                Tab(
                    child: SizedBox(
                  width: screenwidth(context) / 10 * 1.9,
                  child: Center(
                      child: Text(
                    'Message',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                  )),
                )),
                Tab(
                    child: SizedBox(
                  width: screenwidth(context) / 10 * 1.9,
                  child: Center(
                      child: Text(
                    'Status',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                  )),
                )),
                Tab(
                    child: SizedBox(
                  width: screenwidth(context) / 10 * 1.9,
                  child: Center(
                      child: Text(
                    'Calls',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                  )),
                )),
              ]),
            ),
          ];
        },
        body: TabBarView(
          children: <Widget>[
            Tab0(),
            Tab1(),
            Tab2(),
            Tab3(),
          ],
        ),
      )),
    );
  }
}
// Column(
//         children: [
//           Container(
//             height: screenheight(context) / 10 * 2,
//             width: screenwidth(context),
//             color: Color.fromARGB(255, 7, 112, 11),
//             child: Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(top: 40.0, left: 20),
//                   child: Row(
//                     children: [
//                       Text(
//                         'WhatsApp',
//                         style: TextStyle(
//                             fontSize: 20,
//                             color: Colors.white,
//                             fontFamily: 'TImes new roman',
//                             fontWeight: FontWeight.w600),
//                       ),
//                       Spacer(),
//                       IconButton(
//                           onPressed: () {},
//                           icon: Icon(
//                             Icons.search,
//                             color: Colors.white,
//                           )),
//                       IconButton(
//                           onPressed: () {},
//                           icon: Icon(
//                             Icons.more_vert_outlined,
//                             color: Colors.white,
//                           )),
//                     ],
//                   ),
//                 ),
//                 Spacer(),
//                 SizedBox(
//                   height: 30,
//                   child: TabBar(
//                     controller: _tabController,
//                     // give the indicator a decoration (color and border radius)
//                     indicatorSize: TabBarIndicatorSize.tab,
//                     indicator: BoxDecoration(
//                       borderRadius: BorderRadius.circular(
//                         5.0,
//                       ),
//                       color: Colors.green,
//                     ),
//                     labelColor: Colors.white,
//                     unselectedLabelColor: Colors.black,
//                     tabs: [
//                       // first tab [you can add an icon using the icon property]
//                       SizedBox(
//                         width: screenwidth(context) / 7 * 1,
//                         child: Tab(
//                           height: 10,
//                           text: 'Place Bid',
//                         ),
//                       ),

//                       // second tab [you can add an icon using the icon property]
//                       SizedBox(
//                         width: 100,
//                         child: Tab(
//                           text: 'Buy Now',
//                         ),
//                       ),
//                       SizedBox(
//                         width: 50,
//                         child: Tab(
//                           text: 'Buy N',
//                         ),
//                       ),
//                       SizedBox(
//                         width: 50,
//                         child: Tab(
//                           text: 'Buy No',
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: TabBarView(
//               controller: _tabController,
//               children: [
//                 // first tab bar view widget
//                 Center(
//                   child: Text(
//                     'Place Bid',
//                     style: TextStyle(
//                       fontSize: 25,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                 ),

//                 // second tab bar view widget
//                 Center(
//                   child: Text(
//                     'Buy Now',
//                     style: TextStyle(
//                       fontSize: 25,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                 ),
//                 Center(
//                   child: Text(
//                     'Buy N',
//                     style: TextStyle(
//                       fontSize: 25,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                 ),
//                 Center(
//                   child: Text(
//                     'Buy No',
//                     style: TextStyle(
//                       fontSize: 25,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
