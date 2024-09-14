import 'package:epredik_app/User&Admin/User/Home/courses_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class ResultPage extends StatelessWidget {
  const ResultPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: const Color(0xfff5f5f7),
      navigationBar: CupertinoNavigationBar(
        backgroundColor: white.withOpacity(0.3),
        middle: const Text("Recommendation"),
        trailing: const Icon(Icons.logout_outlined),
      ),
      child: ListView(
        children:  const [
          SizedBox(height: 10),
          SizedBox(child: pup(),),  // pa cute lang eme eme ba

        ],
      ),
    );
  }
}