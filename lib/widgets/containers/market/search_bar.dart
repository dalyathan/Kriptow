import '/widgets/icons/search.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBarContainer extends StatefulWidget {
  final double height;
  final double horizontalPaddingRatio;
  const SearchBarContainer(
      {Key? key, required this.height, required this.horizontalPaddingRatio})
      : super(key: key);

  @override
  State<SearchBarContainer> createState() => _SearchBarContainerState();
}

class _SearchBarContainerState extends State<SearchBarContainer> {
  bool fieldGainedFocus = false;
  late TextEditingController stringController;
  @override
  void initState() {
    super.initState();
    stringController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    double verticalPaddingRatio = 0.05;
    double borderRadiusRatio = 0.05;
    double innerPaddingRatio = 0.05;
    double iconheight = widget.height * (1 - 2 * verticalPaddingRatio) * 0.5;
    Size size = MediaQuery.of(context).size;
    double width = size.width * (1 - 2 * widget.horizontalPaddingRatio);
    return Container(
        height: widget.height,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(width * borderRadiusRatio),
            color: const Color.fromRGBO(248, 247, 255, 1)),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: size.width * innerPaddingRatio,
              vertical: widget.height * verticalPaddingRatio),
          child: Stack(
            children: [
              Visibility(
                visible:
                    fieldGainedFocus == false && stringController.text.isEmpty,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(
                      child: SizedBox(
                        height: iconheight,
                        child: FittedBox(
                          fit: BoxFit.fitHeight,
                          child: Text(
                            "Search",
                            style: GoogleFonts.sora(
                                color: const Color.fromRGBO(195, 194, 208, 1)),
                          ),
                        ),
                      ),
                    ),
                    Center(child: SearchIcon(size: iconheight))
                  ],
                ),
              ),
              Focus(
                onFocusChange: (value) => setState(() {
                  fieldGainedFocus = value;
                }),
                child: TextFormField(
                  controller: stringController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
