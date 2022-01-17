import 'package:flutter/material.dart';
import 'package:notes_app/screens/about_screen.dart';
import 'package:notes_app/screens/categories_screen.dart';
import 'package:notes_app/screens/category_notes_screen.dart';
import 'package:notes_app/screens/launch_screen.dart';
import 'package:notes_app/screens/login_screen.dart';
import 'package:notes_app/screens/new_category_screen.dart';
import 'package:notes_app/screens/new_note_screen.dart';
import 'package:notes_app/screens/profile_screen.dart';
import 'package:notes_app/screens/settings_screen.dart';
import 'package:notes_app/screens/sign_up_screen.dart';

void main() => runApp(NotesApp());

class NotesApp extends StatefulWidget {
  @override
  _NotesAppState createState() => _NotesAppState();
}

class _NotesAppState extends State<NotesApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/LaunchScreen',
      routes: {
        '/LaunchScreen' :(context) => LaunchScreen(),
        '/LoginScreen' :(context) => LoginScreen(),
        '/SignUpScreen' :(context) => SignUpScreen(),
        '/CategoriesScreen' :(context) => CategoriesScreen(),
        '/SettingsScreen' :(context) => SettingsScreen(),
        '/CategoryNotesScreen' :(context) => CategoryNotesScreen(),
        '/NewNoteScreen' :(context) => NewNoteScreen(),
        '/NewCategoryScreen' :(context) => NewCategoryScreen(),
        '/ProfileScreen' :(context) => ProfileScreen(),
        '/AboutScreen' :(context) => AboutScreen(),
      },
    );
  }
}
