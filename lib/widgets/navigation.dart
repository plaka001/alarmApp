import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Navigation extends StatefulWidget {
  int tap;
  Navigation({Key? key, required this.tap}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  @override
  Widget build(BuildContext context) {
    const colorsDay = [
      Color(0xFF4d4574),
      Color(0xFF7b5884),
    ];
    const colorsNight = [
      Color(0xFF0c4a5f),
      Color(0xFF0c4a5f),
    ];
    return Container(
      // color: const Color(0xFF4d4575),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: widget.tap == 0 ? colorsDay : colorsNight,
        ),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          currentIndex: widget.tap,
          onTap: _onItemTapped,
          selectedItemColor: const Color(0xFFc65b41),
          backgroundColor: const Color(0xFF0b1f38), // Will work
          unselectedItemColor: Colors.white,
          items: [
            itemButtom(
              icon: const Icon(Icons.wb_sunny_outlined),
              label: '',
            ),
            itemButtom(
              icon: const Icon(Icons.nightlight_outlined),
              label: '',
            ),
          ],
        ),
      ),
    );
  }

  BottomNavigationBarItem itemButtom(
      {required Icon icon, required String label}) {
    return BottomNavigationBarItem(
      icon: icon,
      label: 'o',
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      widget.tap = index;
      Navigator.pushNamed(context, widget.tap == 0 ? 'day' : 'night');
    });
  }
}
