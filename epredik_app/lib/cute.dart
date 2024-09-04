import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const trypo());
}


class trypo extends StatelessWidget {
  const trypo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
     children: [
      Container( child: SvgPicture.asset('assets/svg/logologo.svg'),),
     ],
    );
  }
}


// SvgPicture.asset('assets/svg/try.svg'),   svg
// child: Text('Forgot Password?',style: GoogleFonts.lato(textStyle: const TextStyle(color: Color(0xFFC8ACD6),fontWeight: FontWeight.w500,),),), 
// Navigator.push(context,MaterialPageRoute(builder: (context) => PasswordText()), 
// mainAxisAlignment: MainAxisAlignment.end,  -or start, middle

/* --violet: #8876fe;
    --indigo: #622aff;
    --grape: #6e21e6;
    --plum: #8d1287;
    --azalea: #e71ee6;
    --magenta: #dd04d1;
    --tomato: #f63e54;
    --guava: #fb4d66;
    --tangelo: #ff3e17;
    --coral: #f95c30;
    --persimmon: #e94b1b;
    --pumpkin: #e2620c;
    --orange: #e66702;
    --verdant: #29d246;
    --bright-green: #00d436;
    --new-green: #13be54;
    --avocado: #73b439;
    --green: #0c9d46;
    --blue-green: #26c2ac;
    --peacock-green: #14b1a1;
    --sea-green: #099b9d;
    --teal-green: #2b9ca1;
    --aqua: #039e8f;
    --teal: #049cb7;
    --pool-blue: #00c2ee;
    --azure: #027fff;
    --sparkle-blue: #007aff;
    --denim: #0056d2;
    --cobalt: #5451fb;
    --sapphire: #3d44c3;
    --night: #23466c;
    --ultramarine: #0d1387;

    */