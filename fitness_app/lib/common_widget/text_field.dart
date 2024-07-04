import 'package:fitness_app/common/color_extension.dart';
import 'package:flutter/material.dart';

class TextFieldView extends StatefulWidget {
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String hitText;
  final String icon;
  final Widget? rightIcon;
  final bool obscureText;
  final EdgeInsets? margin;

  const TextFieldView({
    super.key,
    required this.hitText,
    required this.icon,
    this.controller,
    this.margin,
    this.keyboardType,
    this.obscureText = false,
    this.rightIcon,
  });

  @override
  State<TextFieldView> createState() => _TextFieldViewState();
}

class _TextFieldViewState extends State<TextFieldView> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.margin,
      decoration: BoxDecoration(
        color: CustomColors.greyColor4,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        controller: widget.controller,
        keyboardType: widget.keyboardType, //for email
        // obscureText: obscureText,
        obscureText: widget.obscureText ? _obscureText : false,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: widget.hitText,
          // Suffix icon
          suffixIcon: widget.rightIcon != null
              ? IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off,
                    color: CustomColors.greyColor2,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                )
              : null,
          // Prefix icon
          prefixIcon: Container(
            alignment: Alignment.center,
            width: 20,
            height: 20,
            child: Image.asset(
              // "assets/images/profile.png",
              widget.icon,
              color: CustomColors.greyColor2,
              width: 18,
              height: 18,
              fit: BoxFit.contain,
            ),
          ),
          hintStyle: TextStyle(
              color: CustomColors.greyColor1,
              fontSize: 12,
              fontWeight: FontWeight.w400),
        ),
      ),
    );
    // -----------;
  }
}
