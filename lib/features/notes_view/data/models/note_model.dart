import 'package:flutter/material.dart';

class NoteModel {
  String title;
  String subTitle;
  // final VoidCallback onPressed;
  final String date;
  NoteModel({
    required this.title,
    required this.subTitle,
    // required this.onPressed,
    required this.date,
  });
}
