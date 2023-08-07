import 'package:flutter/material.dart';

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
            )
          ],
        ),
      ),
    );
  }
}
