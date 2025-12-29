import '../../../src/domain/entities/note.dart';

abstract class NoteDataSource {
  Future<void> saveNote(Note note);
  Future<Note?> getNote();
}

class InMemoryNoteDataSource implements NoteDataSource {
  Note? _note;

  @override
  Future<void> saveNote(Note note) async {
    _note = note;
  }

  @override
  Future<Note?> getNote() async => _note;
}
