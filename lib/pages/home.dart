import 'package:flutter/material.dart';
import 'package:task/pages/page2.dart';
import 'package:task/widgets/radio_check_button.dart';


// import 'package:flut_grouped_buttons/flut_grouped_buttons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double fsliderValue = 0.0;
  double ssliderValue = 0.0;
  String selectedView = 'Not selected';
  DateTime? selectedDate;
  DateTime? outDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          "Android ATC Hotel",
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset(
              'assets/entrance.jpg',
            ),
          ),
          Row(
            children: [
              TextE(
                "Check-in Date:",
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  selectedDate == null
                      ? "pick date"
                      : "${selectedDate!.year}-${selectedDate!.month}-${selectedDate!.day}",
                  style: TextStyle(
                    color: Colors.lightBlue,
                    fontSize: 20
                  ),
                ),
              ),
              IconButton(
                  onPressed: () async {
                    var result = await showDatePicker(
                        context: context,
                        firstDate: DateTime(2023),
                        lastDate: DateTime(2029),
                        initialDate: DateTime.now());
                    if (result != null) {
                      selectedDate = result;
                      setState(() {});
                    }
                  },
                  icon: Icon(
                    Icons.calendar_month,
                    color: Colors.orange,
                  ))
            ],
          ),
          Row(
            children: [
              TextE(
                "Check-Out Date:",

              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  outDate == null
                      ? "pick date"
                      : "${outDate!.year}-${outDate!.month}-${outDate!.day}",
                  style: TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 20
                  ),
                ),
              ),
              IconButton(
                  onPressed: () async {
                    var result = await showDatePicker(
                        context: context,
                        firstDate: DateTime(2023),
                        lastDate: DateTime(2029),
                        initialDate: DateTime.now());
                    if (result != null) {
                      outDate = result;
                      setState(() {});
                    }
                  },
                  icon: Icon(
                    Icons.calendar_month,
                    color: Colors.orange,
                  ))
            ],
          ),
          Row(
            children: [
              TextE(
                "Adults:",
              ),
              TextE(
                "${fsliderValue.roundToDouble()}",
              ),
              Slider(
                  min: 0,
                  max: 10,
                  divisions: 10,
                  value: fsliderValue,
                  onChanged: (value) {
                    fsliderValue = value;
                    setState(() {});
                  }),
            ],
          ),
          Row(
            children: [
              TextE(
                "Children",
              ),
              TextE(
                "${ssliderValue.roundToDouble()}",
              ),
              Slider(
                  min: 0,
                  max: 7,
                  divisions: 7,
                  value: ssliderValue,
                  onChanged: (value) {
                    ssliderValue = value;
                    setState(() {});
                  }),
            ],
          ),
          TextE("Extras :"),
          RadioCheckButton(),
          TextE("View:"),
          RadioListTile(
              title: TextU("City View"),
              value: "City View",
              groupValue: selectedView,
              onChanged: (value) {
                setState(() {
                  selectedView = value!;
                  print(selectedView);
                });
              }),
          RadioListTile(
              title: TextU("Sea View"),
              value: "Sea View",
              groupValue: selectedView,
              onChanged: (value) {
                setState(() {
                  selectedView = value!;
                  print(selectedView);
                });
              }),
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
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => NextPage()));

                    },
                    child: Text(
                      'Next',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            ],
          )
        ],
      )),
    );
  }
}

Widget TextE(String title) {
  return Text(
    title,
    style: TextStyle(
        color: Colors.orange, fontSize: 20, fontWeight: FontWeight.bold),
  );
}
//not working
// FlutGroupedButtons(
//     isRadio: false,
//     titleCheckSpace: 15,
//     data: <String>[
//       "Breakfast (10 USD/Day)",
//       "Internet WiFi (5 USD/Day)",
//       "Parking (5 USD/Day)",
//       "Swimming Pool (10 USD/Day)",
//     ],
//     onChanged: (checked) => print(checked)),
