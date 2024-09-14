import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';

class DropdownStrand extends StatefulWidget {
  const DropdownStrand({super.key});

  @override
  State<DropdownStrand> createState() => _DropdownStrand();

}

class _DropdownStrand extends State<DropdownStrand> {
  final jobRoleCtrl = TextEditingController();

  Future<List<String>> strandmenu(String query) async {
    List<String> data = [
      'ABM (Accountancy Business and Management)',
      'TVL- HE (Home Economics)',
      'STEM (Science Technology Engineering and Mathematics)',
      'HUMSS (Humanities and Social Sciences)',
    ];
    
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
      futureRequest: strandmenu,
      fieldSuffixIcon: const Icon(
        Icons.arrow_drop_down,
        color: Colors.white,
        size: 20,
      ),
      

      selectedStyle: const TextStyle(
        color: Colors.white,
        fontSize: 14,
      ),
      hintText: 'Strand', 
      hintStyle: GoogleFonts.inter(
        textStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 14,
          height: 4.20,
          
        ),

      ),
      controller: jobRoleCtrl,
      fillColor: const Color(0xFFC8ACD6).withOpacity(0.10), 
      listItemStyle: GoogleFonts.inter(
        textStyle: const TextStyle(
          color: Color(0xFF17153B),
        ),
      ),
      
    );
  }
}
