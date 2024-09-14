import 'package:flutter/cupertino.dart';
import 'package:nb_utils/nb_utils.dart';

class UndecidedPage extends StatelessWidget {
  const UndecidedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: const Color(0xfff5f5f7),
      navigationBar: CupertinoNavigationBar(
        backgroundColor: white.withOpacity(0.3),
        middle: const Text("Undecided Quiz"),
      ),
      child: ListView(
        children:  const [
          SizedBox(height: 10),

        ],
      ),
    );
  }
}