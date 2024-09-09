import 'package:epredik_app/ForgetPassword/EnterNewPassword.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonReset extends StatelessWidget {
  const ButtonReset({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1000,
      height: 50,
      child: CupertinoButton(
        color: const Color(0xFFC8ACD6),
        onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => NewPassword()),
                );
              },

        child: Text(
  'Reset Password',
  style: GoogleFonts.inter (
    color: const Color(0xFF17153B),
    fontWeight: FontWeight.bold,
    fontSize: 14,
  ),
),
      ),
    );
  }
}

class ButtonSave extends StatelessWidget {
  const ButtonSave({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1000,
      height: 50,
      child: CupertinoButton(
        color: const Color(0xFFC8ACD6),
        onPressed: () {

              },

        child: Text(
  'Save and Sign in',
  style: GoogleFonts.inter (
    color: const Color(0xFF17153B),
    fontWeight: FontWeight.bold,
    fontSize: 14,
  ),
),
      ),
    );
  }
}