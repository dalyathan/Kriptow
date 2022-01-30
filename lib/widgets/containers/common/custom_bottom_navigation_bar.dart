import 'package:drrrible_nuha_maulana_ahsan_crypto_app/widgets/icons/exchange.dart';

import '/widgets/containers/common/active_icon.dart';
import '/widgets/containers/common/not_active_icon.dart';

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
    double iconHeight = widget.height * 0.125;
    HomeIcon homeIcon = HomeIcon.withHeight(iconHeight);
    ExchangeIcon exchangeIcon = ExchangeIcon.withHeight(iconHeight);
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: NotActiveIconContainer(
              icon: homeIcon,
            ),
            activeIcon: ActiveIconContainer(
              icon: homeIcon,
              title: 'Home',
            ),
            title: Container()),
        BottomNavigationBarItem(
          icon: NotActiveIconContainer(
            icon: exchangeIcon,
          ),
          activeIcon: ActiveIconContainer(
            icon: exchangeIcon,
            title: 'Rate',
          ),
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
