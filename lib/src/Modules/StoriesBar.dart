import 'package:flutter/material.dart';
import 'package:coderjava_firexcode/src/Container/Container.dart';
import 'package:coderjava_firexcode/src/Text/text_material.dart';

class XStorieBar extends StatelessWidget {
  final Color color;
  final Color circleColor;
  final double circleRadius;
  final Widget child;
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final String fontFamily;
  final Color textColor;
  final double verticalSpace;
  final Function onTap;
  final ImageProvider<dynamic> backgroundImage;

  const XStorieBar(
      {Key key,
      this.color,
      this.circleRadius,
      this.child,
      @required this.text,
      this.backgroundImage,
      this.circleColor,
      this.fontSize,
      this.fontWeight,
      this.fontFamily,
      this.textColor,
      this.verticalSpace,
      this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return XContainer(
        color: color,
        child: Column(
          children: <Widget>[
            CircleAvatar(
              radius: circleRadius,
              backgroundColor: circleColor,
              backgroundImage: backgroundImage,
              child: InkWell(onTap: onTap, child: child),
            ),
            SizedBox(
              height: verticalSpace ?? 5,
            ),
            Textmaterial(
              text: text,
              fontsize: fontSize,
              fontWeight: fontWeight,
              color: textColor,
              fontFamily: fontFamily,
            )
          ],
        ));
  }
}
