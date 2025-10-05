import 'package:flutter/material.dart';
import 'package:notes_app/core/constants/app_fonts.dart';
import 'package:notes_app/features/notes_view/presentation/view/notes_view.dart';

void main() {
  runApp(NotesApp());
}

class NotesApp extends StatefulWidget {
  bool dark;
  NotesApp({super.key, this.dark = true});

  @override
  State<NotesApp> createState() => _NotesAppState();
}

class _NotesAppState extends State<NotesApp> {
  late bool _dark;

  @override
  void initState() {
    super.initState();
    _dark = widget.dark;
  }

  void toggleDark() {
    setState(() => _dark = !_dark);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: _dark ? Brightness.dark : Brightness.light,
        fontFamily: AppFonts.poppins,
      ),
      home: NotesView(toggleDark: toggleDark),
    );
  }
}
