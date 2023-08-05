import 'package:flutter/material.dart';


class CustomHeading extends StatefulWidget {
  final String text;
  final TextStyle style;
  const CustomHeading({super.key, required this.text, required this.style});

  @override
  State<CustomHeading> createState() => _CustomHeadingState();
}

class _CustomHeadingState extends State<CustomHeading> {
  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Text(
        widget.text,
        style: widget.style,
      ),
    );
  }
}
