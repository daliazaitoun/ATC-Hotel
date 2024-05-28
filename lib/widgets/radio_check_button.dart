import 'package:flutter/material.dart';

class RadioCheckButton extends StatefulWidget {
  const RadioCheckButton({super.key});

  @override
  State<RadioCheckButton> createState() => _RadioCheckButtonState();
}

class _RadioCheckButtonState extends State<RadioCheckButton> {
  Map<String, bool> data = {
    "Breakfast (10 USD/Day)": false,
    "Internet WiFi (5 USD/Day)": false,
    "Parking (5 USD/Day)": false,
    "Swimming Pool (10 USD/Day)": false,
  };

  bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Checkbox(
                value: data["Breakfast (10 USD/Day)"],
                onChanged: (value) {
                  setState(() {
                    data["Breakfast (10 USD/Day)"] = value!;
                    _getSelectedOptions();
                  });
                }),
            TextU("Breakfast (10 USD/Day)"),
          ],
        ),
        Row(
          children: [
            Checkbox(
                value: data["Internet WiFi (5 USD/Day)"],
                onChanged: (value) {
                  setState(() {
                    data["Internet WiFi (5 USD/Day)"] = value!;
                    _getSelectedOptions();
                  });
                }),
            TextU("Internet WiFi (5 USD/Day)"),
          ],
        ),
        Row(
          children: [
            Checkbox(
                value: data["Parking (5 USD/Day)"],
                onChanged: (value) {
                  data["Parking (5 USD/Day)"] = true;
                  setState(() {
                    data["Parking (5 USD/Day)"] = value!;

                  });
                }),
            TextU("Parking (5 USD/Day)"),
          ],
        ),
        Row(
          children: [
            Checkbox(
                value: data["Swimming Pool (10 USD/Day)"],
                onChanged: (value) {
                  data["Swimming Pool (10 USD/Day)"] = true;
                  setState(() {
                    data["Swimming Pool (10 USD/Day)"] = value!;
                    _getSelectedOptions();
                  });
                }),
            TextU("Swimming Pool (10 USD/Day)"),
          ],
        ),
      ],
    );
  }

  // This method collects the selected options and returns them.
  List<String> _getSelectedOptions() {
    List<String> selectedOptions = [];
    data.forEach((key, value) {
      if (value) selectedOptions.add(key);

    });
    return selectedOptions;
  }
}

Widget TextU(String title) {
  return Text(
    title,
    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
  );
}
