import 'package:flutter/material.dart';

class NightScreen extends StatelessWidget {
  static const String nightUrl = 'night';
  const NightScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('NightScreen'),
      ),
    );
  }
}
