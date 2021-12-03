import 'package:breej_tutors_app/constants/colors.dart';
import 'package:breej_tutors_app/features/earnnings/view/earning_screen.dart';
import 'package:breej_tutors_app/features/home/view/home_screen.dart';
import 'package:breej_tutors_app/features/messages/view/messages.dart';
import 'package:breej_tutors_app/features/profile/view/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  _BottomNavigationScreenState createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  // final NavController navController = Get.put(NavController());
  int _selectedIndex = 0;
  final List<Widget> screenList = [
    const HomePage(),
    const EarnScreen(),
    const MessageScreen(),
    const ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: screenList.elementAt(_selectedIndex),
      ),

      bottomNavigationBar: GNav(
        rippleColor: Colors.grey[300]!,
        hoverColor: Colors.grey[100]!,
        gap: 8,
        activeColor: white,
        iconSize: 24,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        duration: const Duration(milliseconds: 1),
        tabBackgroundColor: genColor,
        color: Colors.black,
        tabs: const [
          GButton(
            icon: LineIcons.home,
            text: 'Home',
          ),
          GButton(
            icon: LineIcons.dollarSign,
            text: 'Earnings',
          ),
          GButton(
            icon: LineIcons.facebookMessenger,
            text: 'Forum',
          ),
          GButton(
            icon: LineIcons.user,
            text: 'Profile',
          ),
        ],
        selectedIndex: _selectedIndex,
        onTabChange: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),

      // child: BottomNavigationBar(
      //   elevation: 0.0,
      //   showUnselectedLabels: true,
      //   backgroundColor: genColor,
      //   selectedItemColor: white,
      //   unselectedItemColor: Colors.grey,
      //   type: BottomNavigationBarType.fixed,
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.explore_sharp),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.attach_money),
      //       label: 'Earnings',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.message),
      //       label: 'Messages',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       label: 'Profile',
      //     ),
      //   ],
      //   currentIndex: navController.selectedIndex,
      //   onTap: (index) => navController.selectedIndex = index,
      // ),
    );
  }
}

// class NavController extends GetxController {
//   final _selectedIndex = 0.obs;
//   get selectedIndex => _selectedIndex.value;
//   set selectedIndex(index) => _selectedIndex.value = index;
// }
