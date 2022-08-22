import 'package:flutter/material.dart';

class CardNotification extends StatelessWidget {
  const CardNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(top: 200, right: 30, left: 30),
      width: double.infinity,
      height: size.height * 0.15,
      child: Container(
        padding: const EdgeInsets.only(top: 35, left: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              blurRadius: 10,
              offset: Offset(0, 3),
            )
          ],
        ),
        child: Column(
          children: [
            Row(
              children: const [
                CircleAvatar(
                  maxRadius: 16,
                  backgroundColor: Color(0xFFfe8562),
                  foregroundColor: Colors.white, // Will work,
                  child: Icon(Icons.notification_important_outlined),
                ),
                SizedBox(width: 20),
                Text(
                  'Activities today',
                  style: TextStyle(color: Color(0xFFfe8562), fontSize: 15),
                ),
                SizedBox(width: 60),
                Text(
                  '8:00 P.M',
                  style: TextStyle(
                    color: Color.fromARGB(141, 44, 43, 43),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: const [
                Text(
                  'Medication and relaxation',
                  style: TextStyle(
                      color: Color.fromARGB(255, 3, 3, 3),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
