import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/widgets.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

class NightScreen extends StatelessWidget {
  static const String nightUrl = 'night';
  const NightScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          _Backgraund(),
          _HeaderTitle(),
          _Programation(),
          _Task(),
        ],
      ),
      bottomNavigationBar: Navigation(
        tap: 1,
      ),
    );
  }
}

class _HeaderTitle extends StatefulWidget {
  const _HeaderTitle({
    Key? key,
  }) : super(key: key);

  @override
  State<_HeaderTitle> createState() => _HeaderTitleState();
}

class _HeaderTitleState extends State<_HeaderTitle> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: size.height * 0.12),
      width: double.infinity,
      height: size.height * 0.18,
      child: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Good night',
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              '28 february, 2020',
              style: GoogleFonts.montserrat(
                  textStyle:
                      const TextStyle(color: Colors.white, fontSize: 15)),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                FlutterSwitch(
                  value: status,
                  activeColor: const Color(0xFFc65b41),
                  onToggle: (val) {
                    setState(
                      () {
                        status = val;
                      },
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _Backgraund extends StatelessWidget {
  const _Backgraund({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Image(
        image: AssetImage(
          'assets/Night.jpg',
        ),
        fit: BoxFit.cover,
      ),
    );
  }
}

class _Programation extends StatelessWidget {
  const _Programation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.only(top: 400),
      child: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Programmation',
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: 70,
              decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                color: Color(0xFFc65b41),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
              child: IconButton(
                onPressed: () => true,
                icon: const Icon(
                  Icons.add,
                  size: 25,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _Task extends StatelessWidget {
  const _Task({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 520),
      child: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      backgroundColor: Color(0xFFc65b41),
                      child: Icon(Icons.accessibility),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          Text(
                            'Meditation Zen',
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const Text(
                            'In progress',
                            style:
                                TextStyle(color: Colors.white60, fontSize: 12),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Row(
                    children: const [
                      Text(
                        '11: P.M',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 19),
                  height: 50,
                  child: FAProgressBar(
                    currentValue: 50,
                    size: 1,
                    maxValue: 100,
                    changeColorValue: 100,
                    changeProgressColor: Colors.pink,
                    backgroundColor: Colors.white,
                    progressColor: Colors.blue,
                    animatedDuration: const Duration(milliseconds: 300),
                    direction: Axis.vertical,
                    displayText: 'mph',
                    formatValueFixed: 2,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      backgroundColor: Color(0xFFc65b41),
                      child: Icon(Icons.nights_stay_outlined),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          Text(
                            'Bedtime',
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const Text(
                            'To do',
                            style:
                                TextStyle(color: Colors.white60, fontSize: 12),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Row(
                    children: const [
                      Text(
                        '12: P.M',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
