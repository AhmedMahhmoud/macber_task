import 'package:flutter/material.dart';

class DisplayText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;
  final TextOverflow? textOverflow;

  const DisplayText(
      {super.key,
      required this.text,
      this.fontSize = 16,
      this.textAlign,
      this.textOverflow,
      this.fontWeight = FontWeight.w600,
      this.color,
      required this.style});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style.copyWith(
          color: color, fontWeight: fontWeight, fontSize: style.fontSize),
      textAlign: textAlign,
      overflow: textOverflow,
    );
  }
}
