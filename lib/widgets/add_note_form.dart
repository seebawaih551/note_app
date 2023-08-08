import 'package:flutter/cupertino.dart';

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
