import 'package:flutter/material.dart';
import 'package:notes_app/widgets/costum_text_field.dart';

import 'costum_appbar.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(height: 50),
            CostumAppBar(
              title: 'Edit Note',
              icon: Icons.check,
            ),
            SizedBox(height: 50),
            CostumTextField(hint: 'Title'),
            SizedBox(height: 20),
            CostumTextField(
              hint: 'Content',
              maxLines: 3,
            ),
          ],
        ),
      ),
    );
  }
}
