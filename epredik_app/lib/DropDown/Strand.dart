import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DropdownStrand extends StatefulWidget {
  final Function(String?) onStrandChanged;

  const DropdownStrand({super.key, required this.onStrandChanged});

  @override
  State<DropdownStrand> createState() => _DropdownStrandState();
}

class _DropdownStrandState extends State<DropdownStrand> {
  String? selectedStrand;

  final List<String> strands = [
    'ABM (Accountancy Business and Management)',
    'TVL- HE (Home Economics)',
    'STEM (Science Technology Engineering and Mathematics)',
    'HUMSS (Humanities and Social Sciences)',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFFC8ACD6).withOpacity(0.10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: DropdownButton<String>(
          value: selectedStrand,
          hint: Text(
            'Strand',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ),
          dropdownColor: const Color(0xFF17153B),
          icon: const Icon(
            Icons.arrow_drop_down,
            color: Colors.white,
          ),
          style: const TextStyle(color: Colors.white),
          underline: const SizedBox(),
          isExpanded: true,
          onChanged: (String? newValue) {
            setState(() {
              selectedStrand = newValue;
            });
            widget.onStrandChanged(newValue);
          },
          items: strands.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: const TextStyle(color: Colors.white),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
