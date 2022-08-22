import 'package:flutter/material.dart';

class Navigation extends StatelessWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF4d4575),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          currentIndex: 0,
          selectedItemColor: Colors.white,
          backgroundColor: const Color(0xFFa05d7c), // Will work
          unselectedItemColor: const Color.fromARGB(255, 51, 50, 50),
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
      label: '--',
    );
  }
}
