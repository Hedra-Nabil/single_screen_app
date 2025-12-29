import '../entities/note.dart';

abstract class NoteRepository {
  Future<void> saveNote(Note note);
  Future<Note?> getNote();
}
