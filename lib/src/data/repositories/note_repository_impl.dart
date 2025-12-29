import '../../domain/entities/note.dart';
import '../../domain/repositories/note_repository.dart';
import '../datasources/in_memory_note_datasource.dart';

class NoteRepositoryImpl implements NoteRepository {
  final NoteDataSource datasource;
  NoteRepositoryImpl(this.datasource);

  @override
  Future<void> saveNote(Note note) => datasource.saveNote(note);

  @override
  Future<Note?> getNote() => datasource.getNote();
}
