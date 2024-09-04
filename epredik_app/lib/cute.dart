import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nb_utils/nb_utils.dart';

void main() {
  runApp(trypo());
}


class trypo extends StatelessWidget {
  const trypo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
     children: [
      Container( child: SvgPicture.asset('assets/svg/bsit.svg'),),
     ],
    );
  }
}


// SvgPicture.asset('assets/svg/try.svg'),   svg
// child: Text('Forgot Password?',style: GoogleFonts.lato(textStyle: const TextStyle(color: Color(0xFFC8ACD6),fontWeight: FontWeight.w500,),),), 
// Navigator.push(context,MaterialPageRoute(builder: (context) => PasswordText()), 
// mainAxisAlignment: MainAxisAlignment.end,  -or start, middle