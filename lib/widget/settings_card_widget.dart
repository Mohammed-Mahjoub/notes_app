import 'package:flutter/material.dart';

class SettingsCardWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final Icon icon;
  final bool start;
  final String? route;
  SettingsCardWidget({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.start,
    this.route,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: Card(
        elevation: 8,
        clipBehavior: Clip.antiAlias,
        child: Row(
          children: [
            Container(
              height: 70,
              width: 4,
              color: start ? Colors.blue : null,
            ),
            SizedBox(width: 15),
            CircleAvatar(
              child: icon,
            ),
            SizedBox(width: 15),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade500,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/$route');
              },
              icon: Icon(Icons.arrow_forward_ios),
              iconSize: 18,
            ),
            Container(
              height: 70,
              width: 4,
              color: start ? null : Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}