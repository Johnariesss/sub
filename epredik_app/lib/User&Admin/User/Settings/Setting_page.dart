import 'package:epredik_app/User&Admin/User/Settings/darkmode.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:epredik_app/Login_and_SignUp/LoginAndSignUpPage.dart'; // Import the LoginandSignUp page

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: const Color(0xfff5f5f7),
      navigationBar: CupertinoNavigationBar(
        backgroundColor: white.withOpacity(0.3),
        middle: const Text("Settings"),
        trailing: GestureDetector(
          onTap: () {
            // Navigate to the LoginandSignUp page when the icon is tapped
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const LoginandSignUp()),
            );
          },
          child: const Icon(Icons.logout_outlined),
        ),
      ),
      child: ListView(
        children: const [
          SizedBox(height: 10),
          SizedBox(child: Darkmode()),
        ],
      ),
    );
  }
}