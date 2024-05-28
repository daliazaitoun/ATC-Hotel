import 'package:flutter/material.dart';
import 'package:task/pages/home.dart';

class ConWidget extends StatelessWidget {
  String image;
  String text1;
  String text2;

  ConWidget(
      {required this.image,
      required this.text1,
      required this.text2,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
            width: 500,
            height: 175,
            decoration: BoxDecoration(border: Border.all()),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Image.asset(
                          image,
                          height: 90,
                          width: 140,
                        )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50.0),
                      child: TextE(text1),
                    ),
                    Spacer(),
                    Icon(Icons.keyboard_arrow_up),
                    SizedBox(
                      width: 20,
                    )
                  ],
                ),
                Text(
                  text2,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                )
              ],
            )),
      ),
    );
  }
}
