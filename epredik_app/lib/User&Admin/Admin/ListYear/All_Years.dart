import 'package:epredik_app/Login_and_SignUp/SignUp_page/SignUp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllYears extends StatelessWidget {
  const AllYears ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Center(
          child: Column(
              children: [
                SvgPicture.asset('assets/svg/pup.svg'),
                

                // dito ko e lilink yung slider choose
                const SizedBox(),
                
              ],
            ),
        ),
      

    );
  }
}