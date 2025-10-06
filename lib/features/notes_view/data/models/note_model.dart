import 'package:flutter/material.dart';

class NoteModel {
  final String title;
  final String subTitle;
  final VoidCallback onPressed;
  final Color color;
  final String date;
  NoteModel({
    required this.title,
    required this.subTitle,
    required this.onPressed,
    required this.color,
    required this.date,
  });
}
