import 'package:breej_tutors_app/constants/colors.dart';
import 'package:breej_tutors_app/features/withdrawalss/views/account_detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class WithdrawalScreen extends StatefulWidget {
  const WithdrawalScreen({Key? key}) : super(key: key);

  @override
  _WithdrawalScreenState createState() => _WithdrawalScreenState();
}

class _WithdrawalScreenState extends State<WithdrawalScreen> {
  @override
  Widget build(BuildContext context) {
    var tFc = MediaQuery.of(context).size.height * 0.07;
    var buttonH = MediaQuery.of(context).size.height * 0.06;
    var buttonW = MediaQuery.of(context).size.height * 0.4;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: const Icon(Icons.arrow_back_ios, color: Colors.black)),
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Withdraw Money',
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 26),
                )),
            Text('withdraw your earnings into your account',
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(color: Colors.grey, fontSize: 15),
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Container(
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
                      hintText: 'Amount',
                      border: InputBorder.none,
                      labelStyle: GoogleFonts.montserrat(
                          textStyle: const TextStyle(color: Colors.grey)),
                    )),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: const [
                Icon(
                  Icons.info,
                  color: Colors.grey,
                ),
                Text('Your Account balance is N23,4940')
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.25),
            GestureDetector(
              onTap: () {
                Get.to(const BankDetails());
              },
              child: Center(
                child: Container(
                    height: buttonH,
                    width: buttonW,
                    decoration: BoxDecoration(
                        color: genColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text('Continue',
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
