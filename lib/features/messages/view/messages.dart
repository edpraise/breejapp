import 'package:breej_tutors_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: const Icon(Icons.arrow_back_ios, color: Colors.black)),
        elevation: 0,
        title: Text('Jacob_w',
            style: GoogleFonts.montserrat(
              textStyle: const TextStyle(color: Colors.black),
            )),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.add, color: Colors.black),
          )
        ],
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: genColor,
        child: const Icon(Icons.mail_outline_sharp),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                // width: MediaQuery.of(context).size.width * 0.,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade200,
                ),
                child: TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.search, color: Colors.grey),
                      hintText: 'Search',
                      border: InputBorder.none),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ChatListWidget(),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ChatListWidget extends StatelessWidget {
  const ChatListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Joshua_1'),
            Row(
              children: [
                Text('Have a nice days sire',
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(color: Colors.grey),
                    )),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                ),
                Text('now',
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(color: Colors.grey),
                    ))
              ],
            )
          ],
        ),
        Icon(
          Icons.camera_alt,
          color: Colors.grey,
        )
      ],
    );
  }
}
