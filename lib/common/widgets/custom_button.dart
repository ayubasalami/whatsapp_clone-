import 'package:flutter/material.dart';

import '../../colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CustomButton({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: tabColor,
        minimumSize: const Size(double.infinity, 50),
      ),
      onPressed: onPressed,
      child: Column(
        children: [
          Text(
            text,
            style: const TextStyle(color: blackColor),
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    MediaQuery.of(context).size.height * 23,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
