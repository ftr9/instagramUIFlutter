import 'package:flutter/material.dart';

class SpecificName extends StatelessWidget {
  SpecificName({required this.title});
  String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 3.0, bottom: 5.0),
      child: Row(
        children: [
          Text(
            "$title",
            style: TextStyle(fontWeight: FontWeight.w800),
          )
        ],
      ),
    );
  }
}
