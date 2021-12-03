import 'package:breej_tutors_app/constants/colors.dart';
import 'package:breej_tutors_app/features/authentication/login/view/login_screen.dart';
import 'package:breej_tutors_app/features/authentication/registeration/view/register_with_email.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height * 0.2;
    final sBH = MediaQuery.of(context).size.height * 0.06;
    final sBW = MediaQuery.of(context).size.width * 0.4;
    final spc = MediaQuery.of(context).size.height * 0.03;
    return Scaffold(
        backgroundColor: genColor,
        appBar: PreferredSize(
            child: AppBar(
              backgroundColor: genColor,
              elevation: 0,
            ),
            preferredSize: const Size.fromHeight(5)),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.01,
                      width: MediaQuery.of(context).size.width * 0.2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: genColor),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: white),
                      child: Center(
                        child: Text(
                          'Skip',
                          style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                  color: genColor, fontSize: 16)),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: h),
              Text('Welcome to ',
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                        color: white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  )),
              const SizedBox(
                height: 6,
              ),
              Text(
                'The Breej ',
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      color: white, fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Get connected to essential',
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    color: white,
                    fontSize: 16,
                  ),
                ),
              ),
              Text(
                'service providers on campus',
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    color: white,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Container(
                        height: MediaQuery.of(context).size.height * 0.001,
                        width: MediaQuery.of(context).size.width * 0.3,
                        color: white),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Sign in with',
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          color: white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                        height: MediaQuery.of(context).size.height * 0.001,
                        width: MediaQuery.of(context).size.width * 0.3,
                        color: white)
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: sBH,
                    width: sBW,
                    decoration: BoxDecoration(
                        color: white, borderRadius: BorderRadius.circular(25)),
                    child: Row(
                      children: [
                        Image.asset('assets/images/fb.png'),
                        const Text('FaceBook')
                      ],
                    ),
                  ),
                  Container(
                    height: sBH,
                    width: sBW,
                    decoration: BoxDecoration(
                        color: white, borderRadius: BorderRadius.circular(25)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/images/g.jpg',
                            fit: BoxFit.contain,
                            width: 70,
                          ),
                        ),
                        const Text('Google')
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: spc,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(const RegisterScreen());
                },
                child: Container(
                  height: sBH,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: white),
                      color: const Color(0xFF99b3ff)),
                  child: Center(
                    child: Text(
                      'Start with email or phone',
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          color: white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: spc,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                        color: white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(const LoginScreen());
                    },
                    child: Text(
                      'Sign in',
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          decoration: TextDecoration.underline,
                          color: white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: spc,
              ),
            ],
          ),
        ));
  }
}
