import 'package:epredik_app/User&Admin/User/Home/User_Home.dart';
import 'package:epredik_app/User&Admin/User/Settings/Setting_page.dart';
import 'package:epredik_app/User&Admin/User/SurveyPage/Undecided_Page.dart';
import 'package:epredik_app/User&Admin/User/Result/result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:nb_utils/nb_utils.dart';

class NavUser extends StatefulWidget {
  const NavUser({super.key});

  @override
  State<NavUser> createState() => _NavUserState();
}

class _NavUserState extends State<NavUser> {
  int navBarIndex = 0;
  List navBody = [
    const HomePage(),
    const UndecidedPage(),
    const ResultPage(),
    const SettingPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xfff5f5f7),
      body: navBody[navBarIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10),
        child: GNav(
          backgroundColor: const Color(0xfff5f5f7),
          hoverColor: CupertinoColors.inactiveGray,
          gap: 5,
          tabBorderRadius: 16,
          mainAxisAlignment: MainAxisAlignment.center,
          color: CupertinoColors.darkBackgroundGray,
          activeColor: CupertinoColors.activeBlue,
          haptic: true, 
          tabBackgroundColor:CupertinoColors.lightBackgroundGray,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          textStyle: GoogleFonts.inter(color: CupertinoColors.activeBlue, fontWeight: FontWeight.w500),

          tabs:const [
            GButton(icon: CupertinoIcons.square_stack_3d_up, hoverColor: aliceBlue, text: "Home",),
            GButton(icon: CupertinoIcons.heart, hoverColor: aliceBlue, text: "ePredik",),
            GButton(icon: CupertinoIcons.arrow_2_squarepath, hoverColor: aliceBlue, text: "Recommend",),
            GButton(icon: CupertinoIcons.settings, hoverColor: aliceBlue, text: "Settings",),
            

          ],

        selectedIndex: navBarIndex,
        onTabChange: (index){
          setState(() {
            navBarIndex = index;
          });
        },
        ),
      ),
      
    );
  }
}

