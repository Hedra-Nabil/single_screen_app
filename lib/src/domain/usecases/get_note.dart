import '../entities/note.dart';
import '../repositories/note_repository.dart';

class GetNote {
  final NoteRepository repository;
  GetNote(this.repository);

  Future<Note?> call() => repository.getNote();
}
