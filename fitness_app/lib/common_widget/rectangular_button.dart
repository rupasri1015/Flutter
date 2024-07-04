import 'package:fitness_app/common/color_extension.dart';
import 'package:flutter/material.dart';

//creating Configuration
enum RectangularButtonType { bgGradient, textGradient }

class RectangularButton extends StatelessWidget {
  final String title;
  final RectangularButtonType type;
  final VoidCallback onPressed;
  final double fontSize;
  final double elevation;
  final FontWeight fontWeight;

  const RectangularButton({
    super.key,
    required this.title,
    this.type = RectangularButtonType.bgGradient,
    this.fontSize = 16,
    this.elevation = 1,
    this.fontWeight = FontWeight.w700,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: CustomColors.brandL,
              begin: Alignment.centerLeft,
              end: Alignment.centerRight),
          borderRadius: BorderRadius.circular(30.0),
          boxShadow: type == RectangularButtonType.bgGradient
              ? [
                  BoxShadow(
                      color: CustomColors.greyColor2,
                      blurRadius: 3,
                      offset: Offset(0, 4))
                ]
              : null),
      child: MaterialButton(
        onPressed: onPressed,
        height: 60,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        textColor: CustomColors.brandColor1,
        minWidth: double.maxFinite,
        // color: CustomColors.blackColor2,
        elevation: type == RectangularButtonType.bgGradient ? 0 : 1,
        color: type == RectangularButtonType.bgGradient
            ? Colors.transparent
            : CustomColors.blackColor2,
        child: type == RectangularButtonType.bgGradient
            ? Text(
                title,
                style: TextStyle(
                    color: CustomColors.blackColor2,
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              )
            : ShaderMask(
                blendMode: BlendMode.srcIn,
                shaderCallback: (bounds) {
                  return LinearGradient(
                          colors: CustomColors.brandL,
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight)
                      .createShader(
                          Rect.fromLTRB(0, 0, bounds.width, bounds.height));
                },
                child: Text(
                  title,
                  style: TextStyle(
                      color: CustomColors.greyColor1,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
              ),
      ),
    );

    // child: Ink(
    //   width: double.maxFinite,
    //   height: 60,
    //   decoration: BoxDecoration(
    //       gradient: LinearGradient(
    //           colors: CustomColors.brandL,
    //           begin: Alignment.centerLeft,
    //           end: Alignment.centerRight),
    //       borderRadius: BorderRadius.all(Radius.circular(30.0))),

    // ));
  }
}
