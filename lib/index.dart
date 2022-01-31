import 'package:drrrible_nuha_maulana_ahsan_crypto_app/screens/market.dart';

import '/widgets/containers/common/custom_bottom_navigation_bar.dart';

import 'screens/home.dart';

import 'package:flutter/material.dart';

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
    // TODO: implement initState
    super.initState();
    pages = const [HomePage(), MarketPage()];
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
