import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:notes_app/core/utils/textstyles.dart';
import 'package:notes_app/features/notes_view/data/models/note_model.dart';

import '../widgets/notes_view_body.dart';

class NotesView extends StatefulWidget {
  final VoidCallback toggleDark;
  const NotesView({super.key, required this.toggleDark});

  @override
  State<NotesView> createState() => _NotesViewState();
}

class _NotesViewState extends State<NotesView> {
  final List<NoteModel> notes = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotesViewBody(toggleDark: widget.toggleDark, noteview: notes),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        onPressed: () async {
          NoteModel tempNote = NoteModel(
            title: '',
            subTitle: '',
            // onPressed: () {},
            date:
                "${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}",
          );
          final result = await showDialog<NoteModel>(
            barrierDismissible: false,
            context: context,
            builder: (context) {
              return Dialog(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        " Enter your Note",
                        style: Textstyles.textStyle26.copyWith(),
                      ),
                      Gap(20),
                      TextField(
                        minLines: 1,
                        maxLines: 2,
                        onChanged: (value) {
                          if (value.isNotEmpty) {
                            tempNote.title = value;
                          }
                        },

                        keyboardType: TextInputType.multiline,

                        decoration: InputDecoration(
                          hintText: "enter your note",
                        ),
                      ),
                      Gap(20),
                      TextField(
                        minLines: 6,
                        maxLines: 8,
                        maxLength: 100,

                        keyboardType: TextInputType.multiline,
                        onChanged: (value) {
                          if (value.isNotEmpty) {
                            tempNote.subTitle = value;
                          }
                        },
                        decoration: InputDecoration(
                          alignLabelWithHint: true,

                          hintText: "describtion",
                          // labelText: "enter you describtion",
                        ),
                      ),
                      Gap(20),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.pop(context, tempNote);
                              },
                              child: Text(
                                "save",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                          Gap(20),
                          Expanded(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                "close",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          );
          if (result != null) {
            setState(() {});
            notes.add(result);
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
