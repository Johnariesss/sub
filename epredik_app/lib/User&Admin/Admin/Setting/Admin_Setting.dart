
import 'package:epredik_app/User&Admin/User/Settings/darkmode.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class AdminSetting extends StatelessWidget {
  const AdminSetting ({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: const Color(0xfff5f5f7),
      navigationBar: CupertinoNavigationBar(
        backgroundColor: white.withOpacity(0.3),
        middle: const Text("Settings"),
        trailing: const Icon(Icons.logout_outlined),
      ),
      child: ListView(
        children:  const [
          SizedBox(height: 10),
          SizedBox(child: Darkmode(),),  

        ],
      ),
    );
  }
}