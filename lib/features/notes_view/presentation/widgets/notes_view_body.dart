import 'package:flutter/cupertino.dart';
import 'package:notes_app/features/notes_view/presentation/widgets/custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: const Column(children: [CustomAppBar()]),
      ),
    );
  }
}
