import 'package:flutter/material.dart';
import 'package:notes_app/core/utils/textstyles.dart';

import 'custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  final VoidCallback toggleDark;
  const CustomAppBar({super.key, required this.toggleDark});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Notes", style: Textstyles.textStyle30),
        Spacer(),
        TextButton(onPressed: toggleDark, child: Icon(Icons.dark_mode)),

        CustomSearchIcon(),
      ],
    );
  }
}
