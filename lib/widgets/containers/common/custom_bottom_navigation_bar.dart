import 'package:drrrible_nuha_maulana_ahsan_crypto_app/widgets/icons/exchange.dart';
import 'package:drrrible_nuha_maulana_ahsan_crypto_app/widgets/icons/market.dart';
import 'package:drrrible_nuha_maulana_ahsan_crypto_app/widgets/icons/settings.dart';

import '/widgets/containers/common/active_icon.dart';
import '/widgets/containers/common/not_active_icon.dart';

import '/widgets/icons/home.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final double height;
  final void Function(int) navigate;
  int selectedIndex;
  CustomBottomNavigationBar(
      {Key? key,
      required this.height,
      required this.navigate,
      required this.selectedIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double iconHeight = height * 0.15;
    HomeIcon homeIcon = HomeIcon.withHeight(iconHeight);
    ExchangeIcon exchangeIcon = ExchangeIcon.withHeight(iconHeight);
    MarketIcon marketIcon = MarketIcon.withHeight(iconHeight);
    SettingsIcon settingsIcon = SettingsIcon.withHeight(iconHeight);
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
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
          icon: NotActiveIconContainer(
            icon: marketIcon,
          ),
          activeIcon: ActiveIconContainer(
            icon: marketIcon,
            title: 'Market',
          ),
          title: Container(),
        ),
        BottomNavigationBarItem(
          icon: NotActiveIconContainer(
            icon: settingsIcon,
          ),
          activeIcon: ActiveIconContainer(
            icon: settingsIcon,
            title: 'Settings',
          ),
          title: Container(),
        )
      ],
      currentIndex: selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: navigate,
    );
  }
}
