import 'package:epredik_app/User&Admin/Admin/ListYear/All_Years.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nb_utils/nb_utils.dart';

class AdminHome extends StatelessWidget {
  const AdminHome ({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: const Color(0xfff5f5f7),
      navigationBar: CupertinoNavigationBar(
        backgroundColor: white.withOpacity(0.3),
        middle: const Text("Admin"),
        trailing: const Icon(CupertinoIcons.search),
        leading: SvgPicture.asset('assets/svg/logologo.svg'),
        
      ),
      child: ListView(
        children:  const [
          SizedBox(height: 10),
          SizedBox(child: AllYears()),
        ],
      ),
    );
  }
}