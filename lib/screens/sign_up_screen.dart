import 'package:flutter/material.dart';
import 'package:notes_app/widget/text_field_widget.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late TextEditingController _firstNameController;
  late TextEditingController _lastNameController;
  late TextEditingController _emailController;
  late TextEditingController _phoneController;
  late TextEditingController _passwordController;

  String? _firstNameError;
  String? _lastNameError;
  String? _emailError;
  String? _phoneError;
  String? _passwordError;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _firstNameController = TextEditingController();
    _lastNameController = TextEditingController();
    _emailController = TextEditingController();
    _phoneController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
            image: AssetImage('images/launch_bg.png'),
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            left: 20,
            top: 40,
            child: IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/LoginScreen');
              },
              icon: Icon(Icons.arrow_back_ios),
              color: Colors.black,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 105.0, horizontal: 30),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Sign Up',
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    'Create an account',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 18,
                      color: Colors.grey.shade900,
                    ),
                  ),
                  SizedBox(height: 50),
                  Card(
                    elevation: 15,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 26, vertical: 32),
                      child: Column(
                        children: [
                          TextFieldWidget(
                            hintText: 'First Name',
                            controller: _firstNameController,
                            error: _firstNameError,
                          ),
                          SizedBox(height: 10),
                          TextFieldWidget(
                            hintText: 'Last Name',
                            controller: _lastNameController,
                            error: _lastNameError,
                          ),
                          SizedBox(height: 10),
                          TextFieldWidget(
                            hintText: 'Email',
                            controller: _emailController,
                            error: _emailError,
                            textInputType: TextInputType.emailAddress,
                          ),
                          SizedBox(height: 10),
                          TextFieldWidget(
                            hintText: 'Phone',
                            controller: _phoneController,
                            error: _phoneError,
                            textInputType: TextInputType.phone,
                          ),
                          SizedBox(height: 10),
                          TextFieldWidget(
                            hintText: 'Password',
                            controller: _passwordController,
                            error: _passwordError,
                            scure: true,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      performSignUp();
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Roboto',
                        fontSize: 20,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(70),
                        side: BorderSide(
                          color: Colors.grey.shade900,
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void performSignUp() {
    if(checkData()) signUp();
  }

  bool checkData() {
    if (_firstNameController.text.isNotEmpty &&
        _lastNameController.text.isNotEmpty &&
        _emailController.text.isNotEmpty &&
        _phoneController.text.isNotEmpty &&
        _passwordController.text.isNotEmpty) {
      checkErrors();
      return true;
    }
    checkErrors();
    showMessage('Enter required data', error: true);
    return false;
  }

  void signUp() {
    showMessage('Sign Up success');
    Navigator.pushReplacementNamed(context, '/LoginScreen');
  }

  void checkErrors() {
    setState(() {
      _firstNameController.text.isEmpty ? _firstNameError = 'Enter First Name' : _firstNameError = null;
      _lastNameController.text.isEmpty ? _lastNameError = 'Enter Last Name' : _lastNameError = null;
      _emailController.text.isEmpty ? _emailError = 'Enter Email' : _emailError = null;
      _phoneController.text.isEmpty ? _phoneError = 'Enter First Name' : _phoneError = null;
      _passwordController.text.isEmpty ? _passwordError = 'Enter First Name' : _passwordError = null;
    });
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
