import 'package:flutter/material.dart';
import 'package:flutter_application_1/button_press.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool isButtonPressed = false;
    void buttonPressed() {
      setState(() {
        if (isButtonPressed == false) {
          isButtonPressed = true;
        } else {
          isButtonPressed = false;
        }
      });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: ButtonPress(
          onTap: buttonPressed,
          isButtonPressed: isButtonPressed,
        ),
      ),
    );
  }
}
