import 'package:chatify/features/landing_screen.dart';
import 'package:chatify/firebase_options.dart';
import 'package:chatify/colors.dart';
import 'package:chatify/router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: backgroundColor,
          appBarTheme: const AppBarTheme(color: appBarColor),
        ),
        themeMode: ThemeMode.dark,
        title: 'Chatify',
        onGenerateRoute: (settings) => generateRoute(settings),
        home: const LandingScreen());
  }
}
