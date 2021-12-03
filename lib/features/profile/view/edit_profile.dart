import 'package:breej_tutors_app/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
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
        title: Text('Edit Profile',
            style: GoogleFonts.montserrat(
              textStyle: const TextStyle(color: Colors.black),
            )),
      ),
      body: GestureDetector(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                  height: 70,
                  width: 70,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/gb.jpg')),
                      shape: BoxShape.circle)),
            ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: Text('FullName',
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(color: Colors.grey),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: TextFormField(
                    decoration: const InputDecoration(
                        isDense: true,
                        hintText: 'David',
                        border: OutlineInputBorder())),
              ),
              const SizedBox(
                height: 10,
              ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: Text('Last Name',
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(color: Colors.grey),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: TextFormField(
                  decoration: const InputDecoration(
                      isDense: true,
                      hintText: 'Ugo',
                      border: OutlineInputBorder())),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: Text('Phone Number',
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(color: Colors.grey),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: TextFormField(
                  decoration: const InputDecoration(
                      isDense: true,
                      hintText: '+2345454698604',
                      border: OutlineInputBorder())),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: Text('Matric number',
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(color: Colors.grey),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: TextFormField(
                  decoration: const InputDecoration(
                      isDense: true,
                      hintText: '00884',
                      border: OutlineInputBorder())),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: Text('Level',
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(color: Colors.grey),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: TextFormField(
                  decoration: const InputDecoration(
                      isDense: true,
                      hintText: '200',
                      border: OutlineInputBorder())),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: Text('Email',
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(color: Colors.grey),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: TextFormField(
                  decoration: const InputDecoration(
                      isDense: true,
                      hintText: 'breej@gmail.com',
                      border: OutlineInputBorder())),
            ),
            const SizedBox(
              height: 20,
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
      ),
    );
  }
}
