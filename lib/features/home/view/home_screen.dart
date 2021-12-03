import 'package:breej_tutors_app/constants/colors.dart';
import 'package:breej_tutors_app/features/notifications/views/notifications.dart';
import 'package:breej_tutors_app/features/qr%20code/view/tutors_qr_code_screen.dart';
import 'package:breej_tutors_app/features/requests/views/requests.dart';
import 'package:breej_tutors_app/features/withdrawalss/views/withdraw_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var appbar = MediaQuery.of(context).size.height * 0.08;
    var ll = MediaQuery.of(context).size.height * 0.08;
    var lk = MediaQuery.of(context).size.height * 0.04;
    var apw = MediaQuery.of(context).size.width * 0.32;
    var wtList = MediaQuery.of(context).size.width * 0.4;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: appbar),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23.0),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/gb.jpg'))),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello David',
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(),
                        ),
                      ),
                      Text(
                        'How are you today?',
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: apw,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(const NotificationScreen());
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color(0xFF99b3ff).withOpacity(0.3)),
                      child: const Icon(
                        Icons.notification_add_outlined,
                        color: genColor,
                        size: 30,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: genColor),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'David John Doe',
                          style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                  color: white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20)),
                        ),
                        Text(
                          'tutor id: 90901240jgj',
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(color: white),
                          ),
                        ),
                        Text(
                          'Joined date: 16 Feb, 2021 ',
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(color: white),
                          ),
                        )
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(const TutorsQRcodeScreen());
                      },
                      child: Container(
                          height: 80,
                          width: 80,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: white,
                            image: DecorationImage(
                                image: AssetImage('assets/images/qr.jpg')),
                          )),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(const RequesScren());
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 2,
                              offset: Offset(0, 2), // Shadow position
                            ),
                          ],
                        ),
                        child: const Icon(Icons.person_add_alt_1_rounded,
                            size: 40, color: genColor),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            'Requests',
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                  fontSize: 15,
                                  color: some,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            height: 10,
                            width: 10,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.red),
                            child: const Center(
                                child: Text(
                              '5',
                              style: TextStyle(color: white, fontSize: 8),
                            )),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(const WithdrawalScreen());
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 2,
                              offset: Offset(0, 2), // Shadow position
                            ),
                          ],
                        ),
                        child: const Icon(Icons.payments,
                            size: 40, color: genColor),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            'Withdraw',
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                  fontSize: 15,
                                  color: some,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2,
                            offset: Offset(0, 2), // Shadow position
                          ),
                        ],
                      ),
                      child: const Icon(Icons.file_copy_rounded,
                          size: 40, color: genColor),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          'Credentials',
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                fontSize: 15,
                                color: some,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: ll,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                children: [
                  const Icon(
                    Icons.security_outlined,
                    color: genColor,
                    size: 40,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: const [
                      Text('Your weekly requests have been limited to 3'),
                      Text(
                        'You need to upgrade your account for more',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: lk,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Withdrawal',
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    children: const [
                      Text('Filter'),
                      Icon(Icons.arrow_drop_down)
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return WithdrawalListWidget(wtList: wtList);
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider(),
                  itemCount: 10),
            )
          ],
        ),
      ),
    );
  }
}

class WithdrawalListWidget extends StatelessWidget {
  const WithdrawalListWidget({
    Key? key,
    required this.wtList,
  }) : super(key: key);

  final double wtList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: genColor.withOpacity(0.1)),
          child: const Icon(
            LineIcons.alternateArrows,
            color: Colors.red,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Withdrawal',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Text('22 Feb, 2021')
          ],
        ),
        SizedBox(
          width: wtList,
        ),
        const Text(
          '7000',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.red),
        ),
      ]),
    );
  }
}
