import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/widget/category_name_card_widget.dart';

class CategoryNotesScreen extends StatefulWidget {
  @override
  _CategoryNotesScreenState createState() => _CategoryNotesScreenState();
}

class _CategoryNotesScreenState extends State<CategoryNotesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 110),
                  CategoryNameCardWidget(),
                  CategoryNameCardWidget(iconColor: Colors.green.shade200),
                  CategoryNameCardWidget(),
                  CategoryNameCardWidget(iconColor: Colors.green.shade200),
                  CategoryNameCardWidget(),
                ],
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 50,
            child: IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/CategoriesScreen');
              },
              icon: Icon(Icons.arrow_back_ios),
              color: Colors.black,
            ),
          ),
          Positioned(
            top: 60,
            left: 120,
            right: 105,
            child: Text(
              'Category Name',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: 'Quicksand',
                fontSize: 21,
              ),
            ),
          ),
          Positioned(
            right: 20,
            top: 50,
            child: IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/NewNoteScreen');
              },
              icon: Icon(Icons.add_circle,color: Colors.black,size: 30,),
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}


