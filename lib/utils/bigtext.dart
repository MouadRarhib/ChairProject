// ignore_for_file: must_be_immutable

import 'package:ecomapp/utils/dimention.dart';
import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  BigText(
      {super.key,
      this.color = const Color(0xFF332d2b),
      required this.text,
      this.size = 20,
      this.overflow = TextOverflow.ellipsis});
  Color color;
  final String text;
  double size;
  TextOverflow overflow;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overflow,
      style: TextStyle(
          fontFamily: 'Roboto',
          color: color,
          fontSize: size == 0 ? Dimenssions.font20 : size,
          fontWeight: FontWeight.w400),
    );
  }
}
