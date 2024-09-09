import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;


  const MyTextField({
    super.key,
    required this.hintText,
    required this.obscureText,
    required this.controller,
  });



  @override
  Widget build(BuildContext context) {
    
    return TextField(
      
      style: GoogleFonts.inter
      (textStyle: const TextStyle
      (color: Colors.white), fontSize: 14, fontWeight: FontWeight.bold),
      controller: controller,
      decoration: InputDecoration(
        
        border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(10),
        ),
        fillColor: const Color(0xFFC8ACD6).withOpacity(0.15),
        hintText: hintText, 
        hintFadeDuration: null, 
        hoverColor: null,
        filled: true,
        hintStyle: GoogleFonts.inter(
        textStyle: const TextStyle(
        color: CupertinoColors.white, 
        fontWeight: FontWeight.bold,
        fontSize: 14, 
          ),
        ),
      ),
    
      obscureText: obscureText,
    );
  }
}