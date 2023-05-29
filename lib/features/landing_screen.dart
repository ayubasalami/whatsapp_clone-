import 'package:chatify/colors.dart';
import 'package:chatify/common/widgets/custom_button.dart';
import 'package:chatify/features/auth/screens/login_screen.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);
  void navigateToLoginScreen(BuildContext context) {
    Navigator.pushNamed(context, LoginScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Welcome to WhatsApp',
                style: TextStyle(fontSize: 33, fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: size.height / 9,
              ),
              Image.asset(
                'assets/bg.png',
                height: 340,
                width: 340,
                color: tabColor,
              ),
              SizedBox(
                height: size.height / 10,
              ),
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  'Read our Privacy Policy. Tap "Agree and continue" to accept the Terms of Service.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: greyColor,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: size.width * 0.75,
                child: CustomButton(
                  text: 'AGREE AND CONTINUE',
                  onPressed: () => navigateToLoginScreen(context),
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
