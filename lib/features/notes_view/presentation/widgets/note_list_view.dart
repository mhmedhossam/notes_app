import 'package:flutter/material.dart';
import 'package:notes_app/features/notes_view/data/models/note_model.dart';
import 'package:notes_app/features/notes_view/presentation/widgets/notes_view_body.dart';

import 'custom_note_container.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key, required this.noteModel});

  final List<NoteModel> noteModel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: noteModel.length,

        itemBuilder: (context, i) {
          return CustomNoteContainer(noteModel: noteModel[i]);
        },
      ),
    );
  }
}
