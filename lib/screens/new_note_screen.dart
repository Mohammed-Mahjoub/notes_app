import 'package:flutter/material.dart';
import 'package:notes_app/widget/text_field_widget.dart';

class NewNoteScreen extends StatefulWidget {
  @override
  _NewNoteScreenState createState() => _NewNoteScreenState();
}

class _NewNoteScreenState extends State<NewNoteScreen> {
  late TextEditingController _titleController;
  late TextEditingController _descriptionController;
  String? title;
  String? description;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _titleController = TextEditingController();
    _descriptionController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

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
                  SizedBox(height: 207),
                  TextFieldWidget(
                    hintText: 'Note Title',
                    controller: _titleController,
                    error: title,
                  ),
                  SizedBox(height: 20),
                  TextFieldWidget(
                    hintText: 'Description',
                    controller: _descriptionController,
                    error: description,
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () => performSave(),
                    child: Text(
                      'Save',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Roboto',
                        fontSize: 22,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(70),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 95,
            left: 120,
            child: Text(
              'New Note',
              style: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            top: 140,
            left: 150,
            child: Text(
              'Create note',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18,
                fontWeight: FontWeight.w300,
                color: Colors.grey.shade600,
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 50,
            child: IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/CategoryNotesScreen');
              },
              icon: Icon(Icons.arrow_back_ios),
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
  void performSave() {
    if (checkData()) save();
  }

  bool checkData() {
    if (_titleController.text.isNotEmpty &&
        _descriptionController.text.isNotEmpty) {
      checkErrors();
      return true;
    }
    checkErrors();
    showMessage('Enter required data', error: true);
    return false;
  }

  void checkErrors() {
    setState(() {
      _titleController.text.isEmpty
          ? title = 'Enter Note Title'
          : title = null;
      _descriptionController.text.isEmpty
          ? description = 'Enter Description'
          : description = null;
    });
  }

  void save() {
    showMessage('Add new note success');
  }

  void showMessage(String message, {bool error = false}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: error ? Colors.red : Colors.green,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
