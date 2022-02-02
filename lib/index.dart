import '/screens/market.dart';

import 'screens/settings.dart';
import 'widgets/containers/common/custom_bottom_navigation_bar.dart';

import 'screens/home.dart';

import 'package:flutter/material.dart';

import 'screens/rate.dart';

class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  int currentPageIndex = 0;
  late List<Widget> pages;

  @override
  void initState() {
    super.initState();
    pages = const [HomePage(), RatePage(), MarketPage(), SettingsPage()];
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: pages[currentPageIndex],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        height: size.height * 0.2,
        navigate: navigate,
        selectedIndex: currentPageIndex,
      ),
    );
  }

  navigate(int index) {
    setState(() {
      currentPageIndex = index;
    });
  }
}
