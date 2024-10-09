import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:todo_app/pages/home/home_page.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/provider/task_group_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://xwkwrgplytmiiriixblw.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3a3dyZ3BseXRtaWlyaWl4Ymx3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mjg0MzQ2MDQsImV4cCI6MjA0NDAxMDYwNH0.Mjd1p3n2fXhxce3YzjnxSbsOJlUe9guJOY9KmpdFok0',
  );

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => TaskGroupProvider(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task APP',
      themeMode: ThemeMode.light,
      theme: ThemeData.light(
        useMaterial3: true,
      ),
      darkTheme: ThemeData.dark(
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
