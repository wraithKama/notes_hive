import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:template/domain/providers/notes_provider.dart';
import 'package:template/ui/app_navigator/app_navigator.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<NotesProvider>(
          create: (context) => NotesProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: AppNavigator.initRoute,
        routes: AppNavigator.routes,
        onGenerateRoute: AppNavigator.generate,
      ),
    );
  }
}
