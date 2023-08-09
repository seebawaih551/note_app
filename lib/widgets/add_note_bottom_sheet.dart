import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/add_note_cubit/cubit/add_note_cubit_cubit.dart';
import 'package:notes_app/widgets/costum_text_field.dart';

import 'add_note_form.dart';
import 'costum_button_widget.dart';

class AddNoteBottomSheet extends StatelessWidget {
  AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubitCubit(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: BlocConsumer<AddNoteCubitCubit, AddNoteCubitState>(
          listener: (context, state) {
            if (state is AddNoteCubitFailure) {
              print('failed ${state.errMessage}');
            }
            if (state is AddNoteCubitSuccess) {
              Navigator.pop(context);
            }

            // TODO: implement listener
          },
          builder: (context, state) {
            return ModalProgressHUD(
                inAsyncCall: state is AddNoteCubitLoading ? true : false,
                child: SingleChildScrollView(child: AddNoteForm()));
          },
        ),
      ),
    );
  }
}
