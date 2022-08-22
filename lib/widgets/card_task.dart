import 'package:flutter/material.dart';

class CardTask extends StatelessWidget {
  const CardTask({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Opacity(
      opacity: 0.7,
      child: Container(
        alignment: Alignment.center,
        margin:
            const EdgeInsets.only(top: 580, right: 30, left: 28, bottom: 80),
        width: 300,
        child: Container(
          padding: const EdgeInsets.only(left: 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Row(
            children: [
              const Icon(
                Icons.supervised_user_circle_outlined,
                size: 60,
              ),
              Container(
                padding: const EdgeInsets.only(top: 30, left: 10),
                child: Column(
                  children: const [
                    Text(
                      'Medication Zen',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
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
      ),
    );
  }
}
