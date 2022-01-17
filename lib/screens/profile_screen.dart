import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/widget/text_field_widget.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  late TextEditingController _firstNameController;
  late TextEditingController _lastNameController;
  late TextEditingController _phoneController;
  late TextEditingController _emailController;

  String? firstName;
  String? lastName;
  String? phone;
  String? email;



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _firstNameController = TextEditingController();
    _lastNameController = TextEditingController();
    _phoneController = TextEditingController();
    _emailController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _firstNameController.dispose();
    _lastNameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 140),
                  Center(
                    child: Container(
                      height: 70,
                      width: 360,
                      child: Card(
                        elevation: 8,
                        child: Row(
                          children: [
                            SizedBox(width: 20),
                            CircleAvatar(
                              radius: 20,
                              child: Text(
                                'M',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 15.0, horizontal: 20),
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Mohammed Mahjoub',
                                      style: TextStyle(
                                        fontFamily: 'Quicksand',
                                        fontSize: 13,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      'muhammedmahjoub2001@gmail.com',
                                      style: TextStyle(
                                        fontFamily: 'Quicksand',
                                        fontSize: 12,
                                        color: Colors.grey.shade400,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Center(
                    child: Container(
                      height: 70,
                      width: 360,
                      child: Row(
                        children: [
                          Container(
                            height: 70,
                            width: 95,
                            child: Card(
                              elevation: 8,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Categories',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      '14',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey.shade500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: 70,
                            width: 95,
                            child: Card(
                              elevation: 8,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Done Notes',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      '14',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey.shade500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: 70,
                            width: 95,
                            child: Card(
                              elevation: 8,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Waiting Notes',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      '14',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey.shade500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Center(
                    child: Container(
                      width: 360,
                      child: Card(
                        elevation: 8,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                TextFieldWidget(hintText: 'First Name',
                                  controller: _firstNameController,
                                  error: firstName,),
                                TextFieldWidget(hintText: 'Last Name',
                                  controller: _lastNameController,
                                  error: lastName,),
                                TextFieldWidget(hintText: 'Phone',
                                  controller: _phoneController,
                                  error: phone,
                                  textInputType: TextInputType.phone,),
                                TextFieldWidget(hintText: 'Email',
                                  controller: _emailController,
                                  error: email,
                                  textInputType: TextInputType.emailAddress,),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
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
            top: 60,
            left: 160,
            child: Text(
              'Profile',
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 50,
            child: IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/SettingsScreen');
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
    if (_firstNameController.text.isNotEmpty &&
    _lastNameController.text.isNotEmpty&&
    _phoneController.text.isNotEmpty&&
    _emailController.text.isNotEmpty) {
      checkErrors();
      return true;
    }
    checkErrors();
    showMessage('Enter required data', error: true);
    return false;
  }

  void checkErrors() {
    setState(() {
      _firstNameController.text.isEmpty
          ? firstName = 'Enter First Name'
          : firstName = null;
      _lastNameController.text.isEmpty
          ? lastName = 'Enter Last Name'
          : lastName = null;
      _phoneController.text.isEmpty
          ? phone = 'Enter Phone Number'
          : phone = null;
      _emailController.text.isEmpty
          ? email = 'Enter Email'
          : email = null;
    });
  }

  void save() {
    showMessage('Edit success');
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




