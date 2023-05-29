import 'package:chatify/features/auth/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'common/widgets/error.dart';
import 'features/auth/otp_screen.dart';
import 'features/auth/screens/user_information_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LoginScreen.routeName:
      return MaterialPageRoute(builder: (context) => const LoginScreen());
    case UserInformationScreen.routeName:
      return MaterialPageRoute(
          builder: (context) => const UserInformationScreen());
    case OTPScreen.routeName:
      final verificationId = settings.arguments as String;

      return MaterialPageRoute(
        builder: (context) => OTPScreen(
          verificationID: verificationId,
        ),
      );

    default:
      return MaterialPageRoute(
          builder: (context) => const Scaffold(
                body: ErrorScreen(
                  error: 'This page doesn\'t exist',
                ),
              ));
  }
}
