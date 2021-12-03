import 'package:breej_tutors_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class TutorsQRcodeScreen extends StatefulWidget {
  const TutorsQRcodeScreen({Key? key}) : super(key: key);

  @override
  _TutorsQRcodeScreenState createState() => _TutorsQRcodeScreenState();
}

class _TutorsQRcodeScreenState extends State<TutorsQRcodeScreen> {
  @override
  Widget build(BuildContext context) {
    var cardH = MediaQuery.of(context).size.height * 0.4;
    var cardW = MediaQuery.of(context).size.width * 0.8;
    var pl = MediaQuery.of(context).size.width * 0.4;
    var pt = MediaQuery.of(context).size.height * 0.2;
    var tH = MediaQuery.of(context).size.height * 0.65;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: white,
          leading: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: const Icon(Icons.arrow_back, color: Colors.black)),
          elevation: 0,
          title: Text('Tutors QR Code',
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(color: Colors.black),
              )),
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                color: white,
              ),
              Center(
                child: Container(
                  height: cardH,
                  width: cardW,
                  decoration: BoxDecoration(boxShadow: const <BoxShadow>[
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1.0,
                        offset: Offset(0.0, 0.8))
                  ], color: white, borderRadius: BorderRadius.circular(40)),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 55.0),
                    child: Column(
                      children: const [
                        Text('David Jon Doe'),
                        Text('Tutor id: Breej_0043'),
                        Image(
                            height: 200,
                            image: AssetImage('assets/images/qr.jpg'))
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: pt,
                left: pl,
                child: Container(
                  height: 90,
                  width: 90,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/gb.jpg'))),
                ),
              ),
              Positioned(
                  top: tH,
                  left: MediaQuery.of(context).size.width * 0.03,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                          'Your QR code is private. Your student can scan it with their',
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(color: Colors.grey),
                          )),
                      Text('app to confirm your identity when necessary.',
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(color: Colors.grey),
                          ))
                    ],
                  ))
            ],
          ),
        ));
  }
}
