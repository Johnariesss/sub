import 'package:epredik_app/User_Page/Home/courses.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nb_utils/nb_utils.dart';

class pup extends StatelessWidget {
  const pup ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Center(
          child: Column(
              children: [
                SvgPicture.asset('assets/svg/pup.svg'),
              ],
            ),
        ),
      

    );
  }
}


class CoursesList extends StatelessWidget {
  const CoursesList({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Padding(
          padding: const EdgeInsets.only(left: 18, right: 18),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              SvgPicture.asset('assets/svg/bsit.svg'),
              SizedBox(width: 10),
              SvgPicture.asset('assets/svg/bsit.svg'),
              SizedBox(width: 10),
              SvgPicture.asset('assets/svg/bsit.svg'),
              SizedBox(width: 10),
              SvgPicture.asset('assets/svg/bsit.svg'),
              SizedBox(width: 10),
              SvgPicture.asset('assets/svg/bsit.svg'),
              SizedBox(width: 10),
              SvgPicture.asset('assets/svg/bsit.svg'),
            
            ],
          ),
        ),

    );
  }
}