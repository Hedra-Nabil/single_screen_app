import '../entities/note.dart';
import '../repositories/note_repository.dart';

class SaveNote {
  final NoteRepository repository;
  SaveNote(this.repository);

  Future<void> call(String content) async {
    final note = Note(content);
    await repository.saveNote(note);
  }
}
