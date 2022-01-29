import '/widgets/icons/home.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final double height;
  const CustomBottomNavigationBar({Key? key, required this.height})
      : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: HomeIcon(isActive: false, height: widget.height * 0.25),
            activeIcon: HomeIcon(isActive: true, height: widget.height * 0.25),
            title: Container()),
        BottomNavigationBarItem(
          icon: const Icon(Icons.business),
          title: Container(),
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.school),
          title: Container(),
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: _onItemTapped,
    );
  }
}
