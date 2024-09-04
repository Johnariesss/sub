import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Courses extends StatelessWidget {
  const Courses({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(width: 350, height: 350, child: SvgPicture.asset('assets/svg/bsit.svg'),),

      ],
    );
  }
}