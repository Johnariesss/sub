import 'package:epredik_app/Button_and_textfield/button_reset.dart';
import 'package:epredik_app/Button_and_textfield/my_textfield.dart';
import 'package:epredik_app/ForgetPassword/EnterYourEmail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';

class NewPassword extends StatelessWidget {
  final TextEditingController typepassowordcontroler = TextEditingController();
  final TextEditingController retypepasswordcontroler = TextEditingController();

  NewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF17153B), // First color stop
                Color(0xff2E236C),
              ],
            ),
          ),
          child: Column(
            children: [
              const CupertinoNavigationBar(
                border: null,
                backgroundColor: transparentColor,
                leading: Icon(CupertinoIcons.back, color: white,),
                
                middle: CupertinoTextField(
                  
                ),
              ),
              Expanded(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Set new password',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                                  color: Color(0xffffffff),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        MyTextField(
                          hintText: "Type a Password",
                          obscureText: true,
                          controller: typepassowordcontroler,
                        ),
                        const SizedBox(height: 10),
                        MyTextField(
                          hintText: "Retype Password",
                          obscureText: true,
                          controller: retypepasswordcontroler,
                        ),
                        const SizedBox(height: 10),
                        const ButtonSave(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}