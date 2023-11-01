import 'package:expo_project/colors.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final String text;
  const LoginButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w400, fontSize: 18),
          ),
          SizedBox(
            width: 5,
          ),
          Image.asset("assets/images/arrow.png")
        ],
      ),
      height: MediaQuery.of(context).size.height * 0.05,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
          color: purpleColor, borderRadius: BorderRadius.circular(20)),
    );
  }
}
