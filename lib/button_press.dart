import 'package:flutter/material.dart';

class ButtonPress extends StatelessWidget {
  const ButtonPress({
    super.key,
    required this.onTap,
    required this.isButtonPressed,
  });

  final Function() onTap;
  final bool isButtonPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isButtonPressed ? Colors.grey.shade200 : Colors.grey.shade300,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[500]!,
              offset: const Offset(6, 6),
              blurRadius: 15,
              spreadRadius: 1,
            ),
            const BoxShadow(
              color: Colors.white,
              offset: Offset(-6, -6),
              blurRadius: 15,
              spreadRadius: 1,
            ),
          ],
        ),
        child: Icon(
          Icons.favorite,
          size: 60,
          color: isButtonPressed ? Colors.red[200] : Colors.red[400],
        ),
      ),
    );
  }
}
