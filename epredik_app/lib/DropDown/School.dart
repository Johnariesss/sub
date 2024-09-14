import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';

class SchoolPage extends StatefulWidget {
  const SchoolPage ({super.key});

  @override
  State<SchoolPage> createState() => _SchoolPageState();
  
}

class _SchoolPageState extends State<SchoolPage> {
  final jobRoleCtrl = TextEditingController();

  Future<List<String>> NameSchool (String query) async {
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
      borderRadius: BorderRadius.circular(10),
      futureRequest: NameSchool,
      fieldSuffixIcon: const Icon(
        Icons.arrow_drop_down,
        color: Colors.white,
        size: 20,
      ),
      selectedStyle: const TextStyle(
        color: Colors.white,
        fontSize: 14,
      ),
      hintText: 'School',
      hintStyle: GoogleFonts.inter(
        textStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 14,
        ),
        height: 4.20,
      ),
      controller: jobRoleCtrl,
      futureRequestDelay: const Duration(seconds: 1),
      fillColor: const Color(0xFFC8ACD6).withOpacity(0.10),
      listItemStyle: GoogleFonts.inter(
        textStyle: const TextStyle(
          color: Color(0xFF17153B), // Customize the text color inside the dropdown
        ),
      ),
    );
  }
}
