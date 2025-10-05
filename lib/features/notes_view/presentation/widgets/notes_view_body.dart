import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:notes_app/core/utils/textstyles.dart';
import 'package:notes_app/features/notes_view/presentation/widgets/custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  final VoidCallback toggleDark;
  const NotesViewBody({super.key, required this.toggleDark});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          children: [
            CustomAppBar(toggleDark: toggleDark),

            Container(
              color: Colors.amber,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ListTile(
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.delete,
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    subtitle: Text(
                      "Build your  hfghfghgf hgfhfghgf hfghfghCareer with hhjhjh tharwat thamy gfhgfhgfhfghgfhgfhgfhfghfghfghgfhfghgfhgfh hgfhfghfghfgh hgfhfghfhfgh fgghfghfgghfg hfghfg",
                      softWrap: true,
                      style: TextStyle(
                        fontSize: 20,
                      ).copyWith(color: const Color.fromARGB(77, 0, 0, 0)),
                    ),
                    title: Text(
                      "Flutter tips",
                      style: Textstyles.textStyle30.copyWith(
                        color: Colors.black,
                      ),
                    ),
                  ),

                  Text(
                    "may 21,2012",
                    style: Textstyles.textStyle16.copyWith(
                      color: const Color.fromARGB(122, 0, 0, 0),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
