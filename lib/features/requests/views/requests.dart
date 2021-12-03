import 'package:breej_tutors_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class RequesScren extends StatefulWidget {
  const RequesScren({Key? key}) : super(key: key);

  @override
  _RequesScrenState createState() => _RequesScrenState();
}

class _RequesScrenState extends State<RequesScren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: white,
          leading: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: const Icon(Icons.arrow_back, color: Colors.black)),
          elevation: 0,
          title: Text('Requests',
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(color: Colors.black),
              )),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Requests',
                          style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(color: Colors.black)),
                        ),
                        Text('View all recent requests',
                            style: GoogleFonts.montserrat(
                                textStyle: const TextStyle(color: Colors.grey)))
                      ],
                    ),
                    Container(
                      height: 25,
                      width: 65,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black),
                          color: white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('Filter'),
                          Icon(Icons.arrow_drop_down_sharp)
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                      itemBuilder: (BuildContext context, int index) {
                        return const RequestListWidget();
                      },
                      itemCount: 12),
                )
              ],
            ),
          ),
        ));
  }
}

class RequestListWidget extends StatelessWidget {
  const RequestListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.1,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: white),
        child: Row(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width * 0.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/gb.jpg')),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('12TH Jan, 2021| 8pm'),
                Text('Stat 202 - Fundamentals of Statistics'),
                SizedBox(
                  height: 23,
                ),
                Row(
                  children: [
                    Icon(Icons.location_history, color: genColor),
                    Text(
                      'TETFund Block E',
                      style: TextStyle(color: genColor),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.1,
            ),
            Icon(Icons.bookmark, color: genColor)
          ],
        ),
      ),
    );
  }
}
