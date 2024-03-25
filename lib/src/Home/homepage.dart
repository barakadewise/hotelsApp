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
      bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
            setState(() {
              currentIndexPage = index;
            });
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
                icon: Icon(Icons.book_outlined), label: 'Reservation'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.bookmark), label: 'Saved'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person), label: 'Profile'),
          ]),
      body: PageStorage(bucket: bucket, child: pages[currentIndexPage]),
    );
  }
}
