import 'package:flutter/material.dart';

class myStory extends StatelessWidget {
  const myStory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20.0),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 73.0,
                width: 73.0,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(100.0),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://cdn.wionews.com/sites/default/files/styles/story_page/public/2019/06/21/99464-untitled-design-64.jpg')),
                ),
              ),
              Positioned(
                top: 50.0,
                right: 3.0,
                child: Container(
                  height: 25.0,
                  width: 25.0,
                  child: Icon(Icons.add, color: Colors.white, size: 18.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 2),
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            "Your story",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 12.0),
          )
        ],
      ),
    );
  }
}
