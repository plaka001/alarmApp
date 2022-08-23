import 'package:flutter/material.dart';

class CardTask extends StatelessWidget {
  const CardTask({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Opacity(
      opacity: 0.7,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        alignment: Alignment.center,
        margin:
            const EdgeInsets.only(top: 580, right: 30, left: 30, bottom: 80),
        width: size.width * 0.70,
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Icon(
                Icons.supervised_user_circle_outlined,
                size: 60,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Column(
                children: const [
                  Text(
                    'Medication Zen',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Recommended in Morning'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
