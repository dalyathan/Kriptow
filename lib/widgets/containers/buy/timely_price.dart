import '/widgets/containers/common/percent_increase.dart';
import '/widgets/icons/increasing_trend.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TimelyPrice extends StatelessWidget {
  final String amountTransacted;
  final String percentChange;
  final double height;
  final double width;
  const TimelyPrice(
      {Key? key,
      required this.amountTransacted,
      required this.percentChange,
      required this.height,
      required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double innerVerticalPaddingRation = 0.1;
    double innerHorizontalPaddingRatio = 0.1;
    double effectiveWidth = width * (1 - 2 * innerHorizontalPaddingRatio);
    double effectiveHeight = height * (1 - 2 * innerVerticalPaddingRation);
    const Color foregroundColor = Color.fromRGBO(39, 35, 67, 1);
    const Color backgroundColor = Color.fromRGBO(186, 232, 232, 1);
    double descriptionWidth = effectiveWidth * 0.4;
    double descriptionHeight = descriptionWidth * 0.22;
    double trendIconHeight = effectiveHeight * 0.7;
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: const Color.fromRGBO(248, 247, 255, 1),
          borderRadius: BorderRadius.circular(height * 0.1)),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: width * innerHorizontalPaddingRatio,
            vertical: height * innerVerticalPaddingRation),
        child: Row(
          children: [
            Column(
              children: [
                SizedBox(
                    height: descriptionHeight,
                    width: descriptionWidth,
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: Text(
                        '\$$amountTransacted',
                        style: GoogleFonts.sora(color: foregroundColor),
                      ),
                    )),
                Container(
                  height: descriptionHeight,
                  width: descriptionWidth,
                  decoration: BoxDecoration(
                      color: backgroundColor,
                      borderRadius:
                          BorderRadius.circular(descriptionHeight * 0.5)),
                  child: PercentIncrease(
                    height: descriptionHeight * 1.3,
                    percent: '$percentChange(+1.01%)',
                    color: foregroundColor,
                  ),
                ),
              ],
            ),
            const Spacer(),
            IncreasingTrendIcon(
              height: trendIconHeight,
              color: foregroundColor,
            )
          ],
        ),
      ),
    );
  }
}
