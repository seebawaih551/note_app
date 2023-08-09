import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/add_note_cubit/cubit/add_note_cubit_cubit.dart';
import 'package:notes_app/models/note_model.dart';

import 'costum_button_widget.dart';
import 'costum_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(children: [
        const SizedBox(height: 32),
        CostumTextField(
            onSaved: (value) {
              title = value;
            },
            hint: 'title'),
        const SizedBox(height: 16),
        CostumTextField(
          onSaved: (value) {
            subTitle = value;
          },
          hint: 'contents',
          maxLines: 5,
        ),
        const SizedBox(height: 50),
        CostumButtun(
          onTap: () {
            if (formKey.currentState!.validate()) {
              formKey.currentState!.save();
              var noteModel = NoteModel(
                  title: title!,
                  subTitle: subTitle!,
                  date: DateTime.now().toString(),
                  color: Colors.blue.value);
              BlocProvider.of<AddNoteCubitCubit>(context).addNote(noteModel);
            } else {
              autovalidateMode = AutovalidateMode.always;
              setState(() {});
            }
          },
        ),
        const SizedBox(height: 16),
      ]),
    );
  }
}
