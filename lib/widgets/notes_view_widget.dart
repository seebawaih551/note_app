import 'package:flutter/cupertino.dart';
import 'package:notes_app/widgets/notes_listview.dart';

import 'costum_appbar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CostumAppBar(),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
