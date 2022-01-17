import 'package:flutter/material.dart';
import 'package:notes_app/storage/app_pref_controller.dart';

class LaunchScreen extends StatefulWidget {
  @override
  _LaunchScreenState createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    AppPrefController().initAppPrefController();
    Future.delayed(Duration(seconds: 3), (){
      Navigator.pushReplacementNamed(context, '/LoginScreen');
    });
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
          Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('images/iconfinder_note_1296370.png'),
                  ),
                  Text(
                    'My Notes',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Nunito',
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    'For Organized Life',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontFamily: 'Roboto',
                      fontSize: 15,
                      color: Colors.grey.shade900,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            child: Text(
              'iOS Course - Notes App V1.0',
              style: TextStyle(
                fontWeight: FontWeight.w300,
              color: Colors.grey.shade900,
                fontSize: 15,
              ),
            ),
            bottom: 20,
            left: 125,
          )
        ],
      ),
    );
  }
}
