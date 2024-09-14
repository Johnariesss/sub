import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class Darkmode extends StatelessWidget {
  const Darkmode ({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Container(
            padding: const EdgeInsets.all(10),
            height: 50,
            color: white,
            child: const Center(
              child: Row(
                children: [
                  Text(
                    "Dark mode", textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}