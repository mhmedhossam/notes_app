import 'package:flutter/material.dart';
import 'package:notes_app/features/notes_view/data/models/note_model.dart';
import 'package:notes_app/features/notes_view/presentation/widgets/notes_view_body.dart';

import 'custom_note_container.dart';

class NoteListViewbuild extends StatefulWidget {
  const NoteListViewbuild({
    super.key,
    required this.listNoteModel,
    required this.colors,
  });

  final List<NoteModel> listNoteModel;
  final List<Color> colors;

  @override
  State<NoteListViewbuild> createState() => _NoteListViewbuildState();
}

class _NoteListViewbuildState extends State<NoteListViewbuild> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: widget.listNoteModel.length,
        itemBuilder: (context, i) {
          return CustomNoteContainer(
            onDelete: () {
              widget.listNoteModel.removeAt(i);
              setState(() {});
            },
            noteModel: widget.listNoteModel[i],
            color: widget.colors[i % widget.colors.length],
          );
        },
      ),
    );
  }
}
