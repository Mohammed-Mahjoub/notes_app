import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:notes_app/widget/cards_widget.dart';

class CategoriesScreen extends StatefulWidget {
  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 73,
            left: 140,
            child: Text(
              'Categories',
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 170),
                  CardsWidget(),
                  CardsWidget(),
                  CardsWidget(),
                  CardsWidget(),
                  CardsWidget(),
                  CardsWidget(),
                ],
              ),
            ),
          ),
          Positioned(
            top: 60,
            right: 20,
            child: IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/SettingsScreen');
              },
              icon: Icon(
                Icons.settings,
                size: 35,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/NewCategoryScreen');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
