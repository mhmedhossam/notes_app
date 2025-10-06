import 'package:flutter/material.dart';

import '../widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  final VoidCallback toggleDark;
  const NotesView({super.key, required this.toggleDark});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotesViewBody(toggleDark: toggleDark),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
