import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(16),
      ),
      color: const Color.fromARGB(28, 255, 255, 255),
      child: IconButton(
        onPressed: () {},
        icon: Icon(CupertinoIcons.search, size: 28),
      ),
    );
  }
}
