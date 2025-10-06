import 'package:flutter/material.dart';

import 'package:notes_app/features/notes_view/data/models/note_model.dart';
import 'package:notes_app/features/notes_view/presentation/widgets/custom_app_bar.dart';

import 'note_list_view.dart';

class NotesViewBody extends StatelessWidget {
  final VoidCallback toggleDark;
  final List<NoteModel> noteModel = [
    NoteModel(
      title: "Flutter Basics",
      subTitle: "Learn how to build your first Flutter app.",
      onPressed: () {
        print("Flutter Basics clicked");
      },
      color: Colors.amber,
      date:
          "${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}",
    ),
    NoteModel(
      title: "State Management",
      subTitle: "Understand Provider, Bloc, and Riverpod.",
      onPressed: () {
        print("State Management clicked");
      },
      color: Colors.lightBlue,
      date:
          "${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}",
    ),
    NoteModel(
      title: "Animations",
      subTitle: "Add smooth transitions and motion to your UI.",
      onPressed: () {
        print("Animations clicked");
      },
      color: Colors.purpleAccent,
      date: "${DateTime(DateTime.april).day}",
    ),
    NoteModel(
      title: "Firebase Integration",
      subTitle: "Connect your Flutter app with Firebase.",
      onPressed: () {
        print("Firebase Integration clicked");
      },
      color: Colors.greenAccent,
      date: "${DateTime(DateTime.april).day}",
    ),
    NoteModel(
      title: "Responsive Design",
      subTitle: "Make your UI adaptive for all screen sizes.",
      onPressed: () {
        print("Responsive Design clicked");
      },
      color: Colors.orangeAccent,
      date: "${DateTime(DateTime.april).day}",
    ),
  ];
  NotesViewBody({super.key, required this.toggleDark});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
        child: Column(
          children: [
            CustomAppBar(toggleDark: toggleDark),

            NoteListView(noteModel: noteModel),
          ],
        ),
      ),
    );
  }
}
