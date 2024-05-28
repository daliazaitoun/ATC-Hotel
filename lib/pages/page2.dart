import 'package:flutter/material.dart';
import 'package:task/pages/home.dart';

import '../widgets/con_card.dart';

class NextPage extends StatefulWidget {
  const NextPage({super.key});

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
          icon: Icon(Icons.arrow_back_outlined),
          color: Colors.white,
        ),
        backgroundColor: Colors.orange,
        title: Text(
          "Rooms List",
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          ConWidget(
            image: "assets/download.jpg",
            text1: "King\nRoom",
            text2: "A room with a king-sized bed.",
          ),
          ConWidget(
            image: "assets/download (1).jpg",
            text1: "Double\nRoom",
            text2: "A room assigned to two people.",
          ),
          ConWidget(
            image: "assets/download (2).jpg",
            text1: "Family\nRoom",
            text2: "A room assigned to three or four people.",
          ),
          Row(
            children: [
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 10, bottom: 10),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrange,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(0), // Rounded corners
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Next',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}
