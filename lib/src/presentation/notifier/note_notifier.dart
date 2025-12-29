import 'package:flutter/foundation.dart';

import '../../domain/usecases/get_note.dart';
import '../../domain/usecases/save_note.dart';

class NoteNotifier extends ChangeNotifier {
  final SaveNote _saveNote;
  final GetNote _getNote;

  String _current = '';
  String get current => _current;

  NoteNotifier(this._saveNote, this._getNote);

  Future<void> load() async {
    final note = await _getNote.call();
    _current = note?.content ?? '';
    notifyListeners();
  }

  Future<void> save(String content) async {
    await _saveNote.call(content);
    _current = content;
    notifyListeners();
  }

  Future<void> clear() async {
    await _saveNote.call('');
    _current = '';
    notifyListeners();
  }
}
