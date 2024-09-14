import 'package:epredik_app/User&Admin/User/Home/courses_list.dart';
import 'package:epredik_app/User&Admin/User/Home/org_list.dart';
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
          const SizedBox(child: pup(),),  // pa cute lang eme eme ba
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text('Courses in PUP lopez',style: GoogleFonts.inter(      // text nakalagay ay courses in pup
                          textStyle: const TextStyle(
                            color: Color(0xff3d44c3),
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                          ),
                        ),
                      ),
          ),
          const SizedBox(height: 181, width: 230, child: CoursesList(),),   // ito yung mga courses list 
          const SizedBox(width: 20),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text('Academic Program Offerings',style: GoogleFonts.inter(      // text nakalagay ay courses in pup
                            textStyle: const TextStyle(
                              color: Color(0xff5f9800),
                              fontWeight: FontWeight.w700,
                              fontSize: 24,
                            ),
                          ),
                        ),
          ),
          const SizedBox(height: 181, width: 230, child: OrgList(),),
        ],
      ),
    );
  }
}