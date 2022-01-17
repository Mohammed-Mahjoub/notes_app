import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/widget/text_field_widget.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _userNameController;
  late TextEditingController _passwordController;
  late TapGestureRecognizer _tapGestureRecognizer;
  String? _userNameError;
  String? _passwordError;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _userNameController = TextEditingController();
    _passwordController = TextEditingController();
    _tapGestureRecognizer = TapGestureRecognizer()..onTap = navigateToSignUp;
  }

  void navigateToSignUp() {
    Navigator.pushReplacementNamed(context, '/SignUpScreen');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _userNameController.dispose();
    _passwordController.dispose();
    _tapGestureRecognizer.dispose();
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
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 105.0, horizontal: 30),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sign In',
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    'Login to start using app,',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 18,
                      color: Colors.grey.shade900,
                    ),
                  ),
                  SizedBox(height: 81),
                  Card(
                    elevation: 15,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 26,
                        vertical: 32,
                      ),
                      child: Column(
                        children: [
                          TextFieldWidget(
                            hintText: 'User Name',
                            controller: _userNameController,
                            error: _userNameError,
                          ),
                          SizedBox(height: 30),
                          TextFieldWidget(
                            hintText: 'Password',
                            scure: true,
                            controller: _passwordController,
                            error: _passwordError,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () => performLogin(),
                    child: Text(
                      'Login',
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
                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: 'Don\'t have an account?',
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontFamily: 'Roboto',
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                        ),
                        children: [
                          TextSpan(text: ' '),
                          TextSpan(
                            text: 'Sign up',
                            recognizer: _tapGestureRecognizer,
                            style: TextStyle(
                              color: Colors.grey.shade900,
                              fontFamily: 'Roboto',
                              fontSize: 18,
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
        ],
      ),
    );
  }

  Future performLogin() async {
    if (checkData()) {
      await login();
    }
  }

  bool checkData() {
    if (_userNameController.text.isNotEmpty &&
        _passwordController.text.isNotEmpty) {
      checkErrors();
      return true;
    }
    checkErrors();
    showMessage('Enter required data', error: true);
    return false;
  }

  void checkErrors() {
    setState(() {
      _userNameController.text.isEmpty
          ? _userNameError = 'Enter User Name'
          : _userNameError = null;
      _passwordController.text.isEmpty
          ? _passwordError = 'Enter Password'
          : _passwordError = null;
    });
  }

  Future login() async {
    showMessage('Login success');
    Future.delayed(Duration(milliseconds: 3), () {
      Navigator.pushReplacementNamed(context, '/CategoriesScreen');
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
