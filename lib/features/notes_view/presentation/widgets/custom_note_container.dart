import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/core/utils/textstyles.dart';
import 'package:notes_app/features/notes_view/data/models/note_model.dart';

class CustomNoteContainer extends StatelessWidget {
  final NoteModel noteModel;
  const CustomNoteContainer({super.key, required this.noteModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        color: noteModel.color,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.only(top: 20, bottom: 20, left: 16),

      // width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            trailing: IconButton(
              onPressed: noteModel.onPressed,
              icon: Icon(
                FontAwesomeIcons.trash,
                size: 26,
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 16),
              child: Text(
                noteModel.subTitle,
                softWrap: true,
                style: Textstyles.textStyle18.copyWith(
                  color: const Color.fromARGB(77, 0, 0, 0),
                ),
              ),
            ),
            title: Text(
              noteModel.title,
              style: Textstyles.textStyle26.copyWith(color: Colors.black),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              noteModel.date,
              style: Textstyles.textStyle16.copyWith(
                color: const Color.fromARGB(122, 0, 0, 0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
