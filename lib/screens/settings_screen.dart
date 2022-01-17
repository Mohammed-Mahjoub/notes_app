import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/widget/settings_card_widget.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              children: [
                SizedBox(height: 110),
                CircleAvatar(
                  radius: 40,
                  child: Text(
                    'M',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Mohammed Mahjoub',
                  style: TextStyle(
                    fontFamily: 'Quicksand',
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'muhammedmahjoub2001@gmail.com',
                  style: TextStyle(
                    fontFamily: 'Quicksand',
                    color: Colors.grey.shade600,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Divider(
                  thickness: 1,
                  color: Colors.grey.shade300,
                  indent: 70,
                  endIndent: 70,
                  height: 20,
                ),
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      SettingsCardWidget(
                          title: 'Language',
                          subtitle: 'Selected language: EN',
                          icon: Icon(Icons.language),
                          start: true),
                      SettingsCardWidget(
                        title: 'Profile',
                        subtitle: 'Update your data…',
                        icon: Icon(Icons.person),
                        start: false,
                        route: 'ProfileScreen',
                      ),
                      SettingsCardWidget(
                          title: 'About App',
                          subtitle: 'What is notes app?',
                          icon: Icon(Icons.perm_device_info),
                          start: true,
                      route: 'AboutScreen',),
                      SettingsCardWidget(
                          title: 'About course',
                          subtitle: 'Describe the course in brief',
                          icon: Icon(Icons.info),
                          start: false),
                      SettingsCardWidget(
                        title: 'Logout',
                        subtitle: 'Waiting your return…',
                        icon: Icon(Icons.power_settings_new),
                        start: true,
                        route: 'LoginScreen',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 60,
            left: 150,
            child: Text(
              'Settings',
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
                Navigator.pushReplacementNamed(context, '/CategoriesScreen');
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
