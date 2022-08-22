import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class DayScreen extends StatelessWidget {
  static const String daytUrl = 'day';
  const DayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          const _BackgraundImg(),
          const _HeadTittle(),
          const CardNotification(),
          Positioned(
            top: size.height * 0.65,
            left: 30,
            child: const Text(
              'What do you need today?',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => const CardTask(),
            itemCount: 10,
          ),
        ],
      ),
      bottomNavigationBar: const Navigation(),
    );
  }
}

class _HeadTittle extends StatelessWidget {
  const _HeadTittle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 70),
      width: double.infinity,
      height: 100,
      child: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Welcome user',
              style: TextStyle(
                  color: Color.fromARGB(155, 0, 0, 0),
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              '20 february, 2020',
              style: TextStyle(
                  color: Color.fromARGB(155, 0, 0, 0),
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

class _BackgraundImg extends StatelessWidget {
  const _BackgraundImg({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/Day.jpg'),
        fit: BoxFit.fill,
      ),
    );
  }
}
