import 'package:breej_tutors_app/constants/colors.dart';
import 'package:breej_tutors_app/features/profile/view/edit_profile.dart';
import 'package:breej_tutors_app/features/setting/views/setting_screen.dart';
import 'package:breej_tutors_app/features/tutors%20document/view/tutors_doc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    var wBwR = MediaQuery.of(context).size.width * 0.04;
    var eBwR = MediaQuery.of(context).size.width * 0.1;
    var sBwProName = MediaQuery.of(context).size.height * 0.1;
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        title: Text(
          'Profile',
          style: GoogleFonts.montserrat(
            textStyle: const TextStyle(color: Colors.black),
          ),
        ),
        automaticallyImplyLeading: false,
        // titleSpacing: 0,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
              child: Row(
                children: [
                  Container(
                    height: 55,
                    width: 55,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/gb.jpg')),
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(width: wBwR),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('David Jon Doe',
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                            ),
                          )),
                      Text('+2344567879',
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(color: Colors.grey),
                          )),
                    ],
                  ),
                  SizedBox(width: eBwR),
                  GestureDetector(
                      onTap: () {
                        Get.to(const EditProfileScreen());
                      },
                      child: const Icon(Icons.edit, color: Colors.grey))
                ],
              ),
            ),
            SizedBox(
              height: sBwProName,
            ),
            Text('MENU',
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(color: Colors.grey),
                )),
            const ListTile(
              leading: Icon(
                Icons.train,
                color: Colors.black,
              ),
              title: Text('Work Rate'),
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.grey,
              ),
            ),
            ListTile(
              onTap: () {
                Get.to(const TutorsDoc());
              },
              leading: Container(
                height: 30,
                width: 30,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.black),
                child: const Icon(
                  Icons.file_copy_sharp,
                  color: Colors.grey,
                ),
              ),
              title: Text('Documnent'),
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.grey,
              ),
            ),
            ListTile(
              leading: Container(
                height: 30,
                width: 30,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: genColor),
                child: const Icon(Icons.headphones, color: Colors.white),
              ),
              title: const Text('Support'),
              trailing: const Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.grey,
              ),
            ),
            ListTile(
              leading: Container(
                height: 30,
                width: 30,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: genColor),
                child: const Icon(
                  Icons.money,
                  color: white,
                ),
              ),
              title: const Text('Refere and earn'),
              trailing: const Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.grey,
              ),
            ),
            ListTile(
              onTap: () {
                Get.to(const SettingScreen());
              },
              leading: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: genColor.withOpacity(0.2)),
                child: const Icon(
                  Icons.settings,
                  color: Colors.grey,
                ),
              ),
              title: const Text('Settings'),
              trailing: const Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.grey,
              ),
            ),
            ListTile(
              leading: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: genColor.withOpacity(0.2)),
                child: const Icon(
                  Icons.logout,
                  color: Colors.grey,
                ),
              ),
              title: const Text('Logout'),
              trailing: const Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
