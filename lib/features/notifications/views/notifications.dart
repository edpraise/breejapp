import 'package:breej_tutors_app/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    var dateSpc = MediaQuery.of(context).size.width * 0.07;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: white,
          leading: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: const Icon(Icons.arrow_back, color: Colors.black)),
          elevation: 0,
          title: Text('Notifications',
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(color: Colors.black),
              )),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.settings,
                color: Colors.blue.shade200,
              ),
            ),
          ],
        ),
        body: Container(
            height: MediaQuery.of(context).size.height,
            child: ListView.separated(
                itemBuilder: (BuildContext context, int index) {
                  return NotificationWidget(dateSpc: dateSpc);
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
                itemCount: 12)));
  }
}

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    Key? key,
    required this.dateSpc,
  }) : super(key: key);

  final double dateSpc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13.0, vertical: 20),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 55,
                width: 55,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/gb.jpg'))),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'AzizDan',
                          style: GoogleFonts.montserrat(
                            textStyle:
                                const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          '@A_Afhfj',
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'You:',
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(color: Colors.grey),
                          ),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          'You are very welcomed Aziz',
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(color: Colors.grey),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                width: dateSpc,
              ),
              Text(
                '12/2/20',
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
