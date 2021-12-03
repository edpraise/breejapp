import 'package:breej_tutors_app/constants/colors.dart';
import 'package:breej_tutors_app/features/home/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class EarnScreen extends StatefulWidget {
  const EarnScreen({Key? key}) : super(key: key);

  @override
  _EarnScreenState createState() => _EarnScreenState();
}

class _EarnScreenState extends State<EarnScreen> {
  @override
  Widget build(BuildContext context) {
    var wtList = MediaQuery.of(context).size.width * 0.4;
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0,
        title: Text('Your Earnings',
            style: GoogleFonts.montserrat(
              textStyle: const TextStyle(color: Colors.black),
            )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Dec 14 - Dec 21',
                      style: GoogleFonts.montserrat(
                        textStyle:
                            const TextStyle(fontSize: 15, color: Colors.black),
                      )),
                  Row(
                    children: [
                      Text('Week',
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                fontSize: 15, color: Colors.black),
                          )),
                      Icon(Icons.arrow_drop_down)
                    ],
                  )
                ],
              ),
              Text('N 32,0000',
                  style: GoogleFonts.montserrat(
                    textStyle:
                        const TextStyle(fontSize: 15, color: Colors.black),
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('N 3000',
                      style: GoogleFonts.montserrat(
                        textStyle:
                            const TextStyle(fontSize: 15, color: Colors.black),
                      )),
                  Text('3/3 Completed',
                      style: GoogleFonts.montserrat(
                        textStyle:
                            const TextStyle(fontSize: 15, color: Colors.black),
                      )),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                      color: genColor, borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Text('Withdraw Cash',
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: white),
                        )),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
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
      ),
    );
  }
}
