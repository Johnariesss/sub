import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
              const SizedBox(width: 10),
              SvgPicture.asset('assets/svg/Accountancy.svg'),
              const SizedBox(width: 10),
              SvgPicture.asset('assets/svg/architecture.svg'),
              const SizedBox(width: 10),
              SvgPicture.asset('assets/svg/biology.svg'),
              const SizedBox(width: 10),
              SvgPicture.asset('assets/svg/Business Administration.svg'),
              const SizedBox(width: 10),
              SvgPicture.asset('assets/svg/Civil Engineering.svg'),
              const SizedBox(width: 10),
              SvgPicture.asset('assets/svg/education.svg'),
              const SizedBox(width: 10),
              SvgPicture.asset('assets/svg/Electrical Engineering.svg'),
              const SizedBox(width: 10),
              SvgPicture.asset('assets/svg/Hospitality Management.svg'),
              const SizedBox(width: 10),
              SvgPicture.asset('assets/svg/Nutrition and Dietetics.svg'),
              const SizedBox(width: 10),
              SvgPicture.asset('assets/svg/Office Administration.svg'),
              const SizedBox(width: 10),
              SvgPicture.asset('assets/svg/Public Administration.svg'),
              const SizedBox(width: 10),
              SvgPicture.asset('assets/svg/Computer Engineering.svg'),
              const SizedBox(width: 10),
              SvgPicture.asset('assets/svg/agribusiness.svg'),
              const SizedBox(width: 10),              

            
            ],
          ),
        ),

    );
  }
}