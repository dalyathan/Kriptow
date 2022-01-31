import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SlideBar extends StatefulWidget {
  final double height;
  final double horizontalPaddingRatio;
  const SlideBar(
      {Key? key, required this.height, required this.horizontalPaddingRatio})
      : super(key: key);

  @override
  _SlideBarState createState() => _SlideBarState();
}

class _SlideBarState extends State<SlideBar> {
  int highlightedHeadIndex = 0;
  late double headWidth;
  late Color highlightedBackground;
  late Color highlightedForeground;
  late Color normalForeground;
  late Color normalBackground;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    highlightedBackground = const Color.fromRGBO(39, 35, 67, 1);
    highlightedForeground = const Color.fromRGBO(175, 217, 219, 1);
    normalForeground = const Color.fromRGBO(223, 222, 227, 1);
    normalBackground = Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double rowWidth =
        size.width * (1 - 2 * widget.horizontalPaddingRatio) - widget.height;
    double highlightWidthRatio = 0.25;
    headWidth = rowWidth * highlightWidthRatio;
    return SizedBox(
      height: widget.height,
      width: rowWidth,
      child: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 350),
            left: highlightedHeadIndex * rowWidth * 0.25,
            child: Container(
              width: headWidth,
              height: widget.height,
              decoration: BoxDecoration(
                  color: highlightedBackground,
                  borderRadius: BorderRadius.circular(widget.height * 0.5)),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              tile("All Assets", 0),
              tile("Tradeables", 1),
              tile("Gainers", 2),
              tile("Losers", 3)
            ],
          )
        ],
      ),
    );
  }

  Widget tile(String title, int index) => InkWell(
        onTap: () => setState(() {
          highlightedHeadIndex = index;
        }),
        child: SizedBox(
          width: headWidth,
          child: Center(
            child: Text(title,
                style: GoogleFonts.sora(
                    fontSize: 11,
                    color: highlightedHeadIndex == index
                        ? highlightedForeground
                        : normalForeground)),
          ),
        ),
      );
}
