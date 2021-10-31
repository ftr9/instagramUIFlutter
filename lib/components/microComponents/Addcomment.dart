import 'package:flutter/material.dart';

class Addcomment extends StatelessWidget {
  const Addcomment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 28.0,
          width: 28.0,
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(50.0)),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          width: MediaQuery.of(context).size.width * 65 / 100,
          child: Text(
            "Add a comment ...",
            style: TextStyle(fontSize: 15.0, color: Colors.grey.shade600),
          ),
        ),
        Row(
          children: [
            Icon(
              Icons.image,
              size: 18.0,
              color: Colors.red.shade900,
            ),
            SizedBox(
              width: 5.0,
            ),
            Icon(
              Icons.baby_changing_station,
              size: 18.0,
              color: Colors.yellow.shade900,
            ),
            SizedBox(
              width: 5.0,
            ),
            Icon(
              Icons.add,
              size: 18.0,
              color: Colors.grey.shade800,
            ),
          ],
        ),
      ],
    );
  }
}
