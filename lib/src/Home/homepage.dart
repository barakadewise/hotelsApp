import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/src/Explore/screen/explore.dart';
import 'package:myapp/src/Profile/screen/profile.dart';
import 'package:myapp/src/Resevation/screen/reservation.dart';
import 'package:myapp/src/Saved/screen/saved.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
//initial page and index
  int currentIndexPage = 0;

  final Widget currentPage = const Explore();

//list of pages
  final List<Widget> pages = [
    const Explore(),
    const Reservation(),
    const Saved(),
    const Profile()
  ];

  //initialize the page storage bucket
  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomAppBar(
      //   color: Colors.white,
      //   height: 65,
      //   elevation: 2,
      //   child: SizedBox(
      //     height: 60,
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       children: [
      //         MaterialButton(
      //           minWidth: 35,
      //           onPressed: () {},
      //           child: const Column(
      //             children: [
      //               Icon(
      //                 CupertinoIcons.search,
      //               ),
      //               Text(
      //                 'Explore',
      //                 style:
      //                     TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
      //               )
      //             ],
      //           ),
      //         ),
      //         MaterialButton(
      //           minWidth: 30,
      //           onPressed: () {},
      //           child: const Column(
      //             children: [
      //               Icon(
      //                CupertinoIcons.book_circle_fill
      //               ),
      //               Text(
      //                 'Reservation',
      //                 style:
      //                     TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
      //               )
      //             ],
      //           ),
      //         ),
      //         MaterialButton(
      //           minWidth: 35,
      //           onPressed: () {},
      //           child: const Column(
      //             children: [
      //               Icon(
      //                 CupertinoIcons.bookmark,
      //               ),
      //               Text(
      //                 'Saved',
      //                 style:
      //                     TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
      //               )
      //             ],
      //           ),
      //         ),
      //         MaterialButton(
      //           minWidth: 35,
      //           onPressed: () {},
      //           child: const Column(
      //             children: [
      //               Icon(
      //                 CupertinoIcons.person,
      //               ),
      //               Text(
      //                 'Profile',
      //                 style:
      //                     TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
      //               )
      //             ],
      //           ),
      //         )
      //       ],
      //     ),
      //   ),
      // ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
            setState(() {
              currentIndexPage = index;
            });
            print(index);
          },
          showSelectedLabels: true,
          showUnselectedLabels: true,
          currentIndex: currentIndexPage,
          selectedItemColor: const Color(0xffCB997E),
          unselectedItemColor: Colors.black.withOpacity(0.5),
          selectedLabelStyle: const TextStyle(
            color: Color(0xffCB997E),
          ),
          unselectedLabelStyle: TextStyle(color: Colors.black.withOpacity(0.5)),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.search), label: 'Explore'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.search), label: 'Reservation'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.bookmark), label: 'Saved'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person), label: 'Profile'),
          ]),
      body: PageStorage(bucket: bucket, child: pages[currentIndexPage]),
    );
  }
}
