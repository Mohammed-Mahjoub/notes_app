import 'package:flutter/material.dart';

class CardsWidget extends StatelessWidget {
  final String logoText;
  final String titel;
  final String subTitel;

  CardsWidget(
      {this.logoText = 'W',
      this.titel = 'Work',
      this.subTitel = 'Notes for work...'});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 15,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          SizedBox(width: 15),
          CircleAvatar(
            radius: 20,
            child: Text(
              logoText,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontFamily: 'Quicksand',
                fontSize: 22,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                titel,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Quicksand',
                  fontSize: 13,
                  color: Colors.black,
                ),
              ),
              Text(
                subTitel,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Quicksand',
                  fontSize: 12,
                  color: Colors.grey.shade600,
                ),
              ),
            ],
          ),
          Spacer(
            flex: 20,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.delete,
              color: Colors.red,
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Container(
            height: 70,
            width: 30,
            color: Colors.blue,
            child: Center(
              child: IconButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(
                      context, '/CategoryNotesScreen');
                },
                icon: Icon(
                  Icons.edit,
                  color: Colors.white,
                  size: 17,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
