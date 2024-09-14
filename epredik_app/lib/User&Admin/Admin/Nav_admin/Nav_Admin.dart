import 'package:epredik_app/User&Admin/Admin/Home/Admin_Home.dart';
import 'package:epredik_app/User&Admin/Admin/Setting/Admin_Setting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:nb_utils/nb_utils.dart';

class NavAdmin extends StatefulWidget {
  const NavAdmin ({super.key});

  @override
  State<NavAdmin> createState() => _NavAdminState();
}

class _NavAdminState extends State<NavAdmin> {
  int navBarIndex = 0;
  List navBody = [
    const AdminHome(),
    const AdminSetting(),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xfff5f5f7),
      body: navBody[navBarIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10),
        child: GNav(
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
            GButton(icon:CupertinoIcons.square_stack_3d_up, hoverColor: aliceBlue, text: "Home",),
            GButton(icon: CupertinoIcons.settings, hoverColor: aliceBlue, text: "Setting",),
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