import 'package:breej_tutors_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';

class SetPasswordScreen extends StatefulWidget {
  const SetPasswordScreen({Key? key}) : super(key: key);

  @override
  _SetPasswordScreenState createState() => _SetPasswordScreenState();
}

class _SetPasswordScreenState extends State<SetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    var tFc = MediaQuery.of(context).size.height * 0.07;
    var buttonH = MediaQuery.of(context).size.height * 0.06;
    var buttonW = MediaQuery.of(context).size.height * 0.4;
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
        title: Text('Change Password',
            style: GoogleFonts.montserrat(
              textStyle: const TextStyle(color: Colors.black),
            )),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
            child: Text('Current Password',
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
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
            child: Text('Enter New Password',
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
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
            child: Text('Confirm New Password',
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
          const SizedBox(
            height: 30,
          ),
          Center(
            child: Container(
                height: buttonH,
                width: buttonW,
                decoration: BoxDecoration(
                    color: genColor, borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Text('Save',
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                )),
          )
        ],
      ),
    );
  }
}


//  keyboardType: TextInputType.number,
//                     inputFormatters: <TextInputFormatter>[
//                       FilteringTextInputFormatter.digitsOnly
//                     ],