import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
            image: AssetImage('images/launch_bg.png'),
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              height: 270,
              width: 270,
              child: Card(

                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage('images/iconfinder_note_1296370.png'),
                      ),
                      Text(
                        'My Notes',
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'For Organized Life',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 60,
            left: 140,
            child: Text(
              'About App',
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
          Positioned(
            left: 120,
            bottom: 30,
            child: Text(
              'iOS Course - Notes App V1.0',
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.grey.shade500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
