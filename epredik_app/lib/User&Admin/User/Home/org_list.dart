import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OrgList extends StatelessWidget {
  const OrgList({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Padding(
          padding: const EdgeInsets.only(left: 18, right: 18),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children:  [
              SvgPicture.asset('assets/svg/bsit.svg'),
              const SizedBox(width: 10),
              SvgPicture.asset('assets/svg/bsit.svg'),                  
              const SizedBox(width: 10),

            ],
          ),
        ),

    );
  }
}