import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:template/domain/hive/notes_data.dart';
import 'package:template/ui/app.dart';

Future<void> main(List<String> args) async {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );

  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(NotesDataAdapter());
  await Hive.openBox<NotesData>('notes');

  runApp(
    const MyApp(),
  );
}
