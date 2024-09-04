import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SchoolPage extends StatefulWidget {
  const SchoolPage ({super.key});

  @override
  State<SchoolPage> createState() => _SchoolPageState();
  
}

class _SchoolPageState extends State<SchoolPage> {
  final jobRoleCtrl = TextEditingController();

  Future<List<String>> getFakeRequestData(String query) async {
    List<String> data = ['Eastern Tayabas College Inc.', 'Biringan City Mars Campus', ];

    return await Future.delayed(const Duration(seconds: 1), () {
      return data.where((e) {
        return e.toLowerCase().contains(query.toLowerCase());
      }).toList();
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return CustomDropdown.searchRequest(
      futureRequest: getFakeRequestData,
      fieldSuffixIcon: const Icon(
        Icons.arrow_drop_down,
        color: Colors.white,
        size: 20,
      ),
      selectedStyle: const TextStyle(
        color: Colors.white,
        fontStyle: FontStyle.normal,
        fontSize: 14,
      ),
      hintText: 'School',
      hintStyle: GoogleFonts.inter(
        textStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ),
        height: 4.20,
      ),
      controller: jobRoleCtrl,
      futureRequestDelay: const Duration(seconds: 1),
      fillColor: Colors.white.withOpacity(0.15), // Set dropdown background color with opacity
      listItemStyle: GoogleFonts.lato(
        textStyle: const TextStyle(
          color: Color(0xFF17153B), // Customize the text color inside the dropdown
        ),
      ),
    );
  }
}
