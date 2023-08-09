import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constance.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubitCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubitCubit() : super(AddNoteCubitInitial());

  addNote(NoteModel note) async {
    emit(AddNoteCubitLoading());
    try {
      var noteBox = Hive.box(kNotesBox);
      emit(AddNoteCubitSuccess());
      await noteBox.add(note);
    } catch (e) {
      emit(AddNoteCubitFailure(e.toString()));
      //
    }
  }
}
