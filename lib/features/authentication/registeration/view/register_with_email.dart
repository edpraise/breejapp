import 'package:breej_tutors_app/constants/colors.dart';
import 'package:breej_tutors_app/features/authentication/login/view/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    final sBH = MediaQuery.of(context).size.height * 0.06;
    final sBW = MediaQuery.of(context).size.width * 0.4;
    var tFc = MediaQuery.of(context).size.height * 0.07;
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0.0,
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: const Icon(Icons.arrow_back, color: genColor)),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text('Sign Up',
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                      fontSize: 40,
                    ),
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
              child: Text('Full name',
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(color: Colors.grey),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30),
              child: Container(
                height: tFc,
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const <BoxShadow>[
                    BoxShadow(
                        color: Color(0XffCDE0C9),
                        blurRadius: 2.0,
                        offset: Offset(0.5, 0.9))
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your registered number';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: '*********',
                        border: InputBorder.none,
                        labelStyle: GoogleFonts.montserrat(
                            textStyle: const TextStyle(color: Colors.grey)),
                      )),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
              child: Text('Email',
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(color: Colors.grey),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30),
              child: Container(
                height: tFc,
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const <BoxShadow>[
                    BoxShadow(
                        color: Color(0XffCDE0C9),
                        blurRadius: 2.0,
                        offset: Offset(0.5, 0.9))
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your registered number';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: 'breej@gmail.com',
                        border: InputBorder.none,
                        labelStyle: GoogleFonts.montserrat(
                            textStyle: const TextStyle(color: Colors.grey)),
                      )),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
              child: Text('Full name',
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(color: Colors.grey),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30),
              child: Container(
                height: tFc,
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const <BoxShadow>[
                    BoxShadow(
                        color: Color(0XffCDE0C9),
                        blurRadius: 2.0,
                        offset: Offset(0.5, 0.9))
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your registered number';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: '*********',
                        border: InputBorder.none,
                        labelStyle: GoogleFonts.montserrat(
                            textStyle: const TextStyle(color: Colors.grey)),
                      )),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Get.to(const LoginScreen());
              },
              child: Center(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.5,
                  decoration: BoxDecoration(
                    color: genColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      'Sign Up',
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            color: white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                GestureDetector(
                  onTap: () {
                    Get.to(const LoginScreen());
                  },
                  child: Text(
                    'Login',
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                        color: genColor,
                        fontSize: 16,
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  Container(
                      height: MediaQuery.of(context).size.height * 0.001,
                      width: MediaQuery.of(context).size.width * 0.3,
                      color: Colors.grey),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Sign in with',
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                        color: Colors.black,
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
                      color: Colors.grey),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
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
          ],
        ),
      ),
    );
  }
}
