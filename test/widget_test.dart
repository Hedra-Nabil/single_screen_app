// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

// ignore_for_file: avoid_relative_lib_imports

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:single_screen_app/main.dart';
import '../lib/src/data/datasources/in_memory_note_datasource.dart';
import '../lib/src/data/repositories/note_repository_impl.dart';
import '../lib/src/domain/usecases/get_note.dart';
import '../lib/src/domain/usecases/save_note.dart';
import '../lib/src/presentation/notifier/note_notifier.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build notifier and app
    final datasource = InMemoryNoteDataSource();
    final repo = NoteRepositoryImpl(datasource);
    final save = SaveNote(repo);
    final get = GetNote(repo);
    final notifier = NoteNotifier(save, get);

    await tester.pumpWidget(MyApp(notifier: notifier));

    // Enter text and tap Display Text
    const testText = 'sdsdsd';
    await tester.enterText(find.byType(TextField), testText);
    await tester.tap(find.text('Display Text'));
    await tester.pumpAndSettle();

    // Verify the result is shown
    expect(find.text(testText), findsOneWidget);
  });
}
