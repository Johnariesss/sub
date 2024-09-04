import 'package:epredik_app/User_Page/Home/courses.dart';
import 'package:epredik_app/User_Page/Home/courses_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: const Color(0xfff5f5f7),
      navigationBar: CupertinoNavigationBar(
        backgroundColor: white.withOpacity(0.3),
        middle: const Text("Home"),
        trailing: const Icon(CupertinoIcons.search),
        leading: SvgPicture.asset('assets/svg/logologo.svg'),
      ),
      child: ListView(
        children:  [
          const SizedBox(height: 10),
          const SizedBox(child: pup(),),
          const SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text('Courses in PUP lopez',style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            color: Color(0xff3D44C3),
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                          ),
                        ),
                      ),
          ),
          const SizedBox(height: 181, width: 230, child: CoursesList(),),
          const SizedBox(width: 10),
          
        ],
      ),
    );
  }
}