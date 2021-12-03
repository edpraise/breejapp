import 'package:breej_tutors_app/constants/colors.dart';
import 'package:breej_tutors_app/features/setting/views/password_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool isSwitched = false;
  var textValue = 'Switch is OFF';

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = 'Switch Button is ON';
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        isSwitched = false;
        textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }

  @override
  Widget build(BuildContext context) {
    var spaceBtwRowItems = MediaQuery.of(context).size.width * 0.04;
    var spaceBtwRow = MediaQuery.of(context).size.width * 0.6;
    var spaceBtw = MediaQuery.of(context).size.width * 0.5;
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: const Icon(Icons.arrow_back, color: Colors.black)),
        elevation: 0,
        title: Text('Settings',
            style: GoogleFonts.montserrat(
              textStyle: const TextStyle(color: Colors.black),
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 30),
        child: Column(
          children: [
            Row(
              children: [
                const Icon(
                  Icons.security,
                ),
                SizedBox(
                  width: spaceBtwRowItems,
                ),
                const Text('Password'),
                SizedBox(
                  width: spaceBtwRow,
                ),
                GestureDetector(
                    onTap: () {
                      Get.to(const SetPasswordScreen());
                    },
                    child: const Icon(Icons.arrow_forward_ios))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Icon(Icons.notifications),
                SizedBox(
                  width: spaceBtwRowItems,
                ),
                const Text('Notifications'),
                SizedBox(width: spaceBtw),
                Switch(
                  onChanged: toggleSwitch,
                  value: isSwitched,
                  activeColor: white,
                  activeTrackColor: Colors.green,
                  inactiveThumbColor: Colors.grey,
                  inactiveTrackColor: Colors.grey,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
