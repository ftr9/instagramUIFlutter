import 'package:flutter/material.dart';

class OthersWidget extends StatelessWidget {
  OthersWidget({required this.name, required this.imageUrl});

  String name;
  String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.0),
              border: Border.all(width: 2.0, color: Colors.red),
            ),
            child: CircleAvatar(
              radius: 36.0,
              backgroundColor: Colors.black,
              backgroundImage: NetworkImage('$imageUrl'),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text("$name",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 12.0))
        ],
      ),
    );
  }
}
