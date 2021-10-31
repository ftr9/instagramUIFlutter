import 'package:flutter/material.dart';

class postTop extends StatelessWidget {
  const postTop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 18.0,
            backgroundImage: NetworkImage(
                'https://www.computerhope.com/jargon/j/javascript.png'),
          ),
          Container(
            padding: EdgeInsets.only(left: 10.0),
            height: 20.0,
            width: MediaQuery.of(context).size.width * 85 / 100,
            child: Text("Javacript.js",
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w700)),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  height: 3.0,
                  width: 3.0,
                  margin: EdgeInsets.only(bottom: 2.5),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(50.0)),
                ),
                Container(
                  height: 3.0,
                  width: 3.0,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(50.0)),
                  margin: EdgeInsets.only(bottom: 2.5),
                ),
                Container(
                  height: 3.0,
                  width: 3.0,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(50.0)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
