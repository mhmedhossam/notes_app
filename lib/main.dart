import 'package:flutter/material.dart';
import 'package:notes_app/core/constants/app_fonts.dart';
import 'package:notes_app/core/utils/app_colors.dart';
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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: _dark ? Brightness.dark : Brightness.light,
        fontFamily: AppFonts.poppins,
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              width: 1,
              color: Colors.white.withOpacity(0.2),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              width: 1,
              color: Colors.white.withOpacity(0.2),
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              width: 1,
              color: Colors.white.withOpacity(0.2),
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              width: 1,
              color: Colors.white.withOpacity(0.2),
            ),
          ),
          filled: true,
          fillColor: Colors.black12,
        ),
      ),
      home: NotesView(toggleDark: toggleDark),
    );
  }
}
