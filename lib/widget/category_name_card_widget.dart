import 'package:flutter/material.dart';

class CategoryNameCardWidget extends StatelessWidget {
  final String titel;
  final String subTitel;
  final Color iconColor;

  CategoryNameCardWidget({
    this.titel = 'Note Title',
    this.subTitel =
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,',
    this.iconColor = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      clipBehavior: Clip.antiAlias,
      child: Row(
        children: [
          Container(
            height: 131,
            color: Colors.blue,
            width: 3,
          ),
          SizedBox(width: 15),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titel,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Quicksand',
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  width: 240,
                  child: Text(
                    subTitel,
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Icon(
            Icons.check_circle,
            color: iconColor,
          ),
          SizedBox(width: 15),
          Container(
            height: 131,
            color: Colors.blue,
            width: 3,
          ),
        ],
      ),
    );
  }
}
