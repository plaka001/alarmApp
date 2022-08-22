import 'package:app_calendar/screens/day_screen.dart';
import 'package:app_calendar/screens/night_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: DayScreen.daytUrl,
      routes: {
        DayScreen.daytUrl: (context) => const DayScreen(),
        NightScreen.nightUrl: (context) => const NightScreen(),
      },
      home: const Scaffold(
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
