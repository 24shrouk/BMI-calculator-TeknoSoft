import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({
    super.key,
  });
  static String gender = 'female';
  @override
  Widget build(BuildContext context) {
    return ToggleSwitch(
      minWidth: 150.0,
      minHeight: 50,
      cornerRadius: 50.0,
      activeBgColors: const [
        [Color.fromARGB(255, 66, 132, 208)],
        [Color.fromARGB(255, 224, 62, 132)]
      ],
      activeFgColor: Colors.black,
      inactiveBgColor: const Color.fromARGB(255, 229, 221, 221),
      inactiveFgColor: Colors.black,
      initialLabelIndex: 1,
      totalSwitches: 2,
      fontSize: 24,
      labels: const ['Male', 'Female'],
      radiusStyle: true,
      onToggle: (index) {
        if (index == 0) {
          gender = 'Male';
        } else {
          gender = 'female';
        }
        // print('switched to: $index');
      },
    );
  }
}
