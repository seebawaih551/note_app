import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/notes_view_widget.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NotesViewBody(),
    );
  }
}
