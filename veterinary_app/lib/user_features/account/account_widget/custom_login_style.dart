
import 'package:flutter/material.dart';

import '../../../utils/global_variables.dart';

class TopWidget extends StatelessWidget {
  const TopWidget();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return CustomPaint(
      child: ClipPath(
        clipper: TopWidgetClipper(),
        child: Container(
        height: 370,
        color: loginColor,
        child: Stack(
          children: [
            Center(
              child: Container(
                height: height * 0.118,
                width: width * 0.275,
                margin: EdgeInsets.only(bottom: 50),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(18), 
                  bottomLeft: Radius.circular(18),
                  bottomRight: Radius.circular(18)
                  )
                ),
                child: Stack(
                  children: [
                    Center(
                      child: Container(
                                  height: height * 0.06,
                                  width: width * 0.15,
                                decoration: const BoxDecoration(
                                      color: loginColor,
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(50), 
                                      topLeft: Radius.circular(50),
                                      bottomRight: Radius.circular(50)
                                      )
                                    ),
                      ),
                    )
                  ]
                  ),
              ),
            )
          ],
        )
        ),
      ),
    );
  }
}

class TopWidgetClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Offset controllPoint1 = Offset(10, size.height - 100);
    Offset endPoint1 = Offset(100, size.height - 100);
    Offset controllPoint2 = Offset(size.width, size.height - 100);
    Offset endPoint2 = Offset(size.width, size.height - 100);
    Path path = Path()
      ..lineTo(0, size.height)
      ..quadraticBezierTo(
          controllPoint1.dx, controllPoint1.dy, endPoint1.dx, endPoint1.dy)
      ..lineTo(size.width - 100, size.height - 100)
      ..quadraticBezierTo(
          controllPoint2.dx, controllPoint2.dy, endPoint2.dx, endPoint2.dy)
      ..lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
