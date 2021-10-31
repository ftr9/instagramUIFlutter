import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/components/microComponents/SpecificName.dart';
import 'package:instagram/components/microComponents/Addcomment.dart';
import 'package:instagram/components/microComponents/postTop.dart';

class newsCard extends StatefulWidget {
  @override
  _newsCardState createState() => _newsCardState();
}

class _newsCardState extends State<newsCard> {
  int currentImage = 0;

  double returnSize(size) {
    if (size == currentImage) {
      return 7;
    } else {
      return 5;
    }
  }

  Color returnColor(size) {
    if (size == currentImage) {
      return Colors.blue;
    } else {
      return Colors.black;
    }
  }

  void onImageSlided(currentIndex) {
    setState(() {
      currentImage = currentIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(bottom: 10.0),
      child: Column(
        children: [
          postTop(),
          Container(
            height: 400.0,
            child: PageView(
              onPageChanged: onImageSlided,
              physics: BouncingScrollPhysics(),
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://site-cdn.givemesport.com/images/21/05/27/13a4a434abd50a2e7b57b6d0ed5bce10/1201.jpg'),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://otakukart.com/wp-content/uploads/2021/07/Fernando-Torress-Liverpool.jpg'),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://www.the12thman.in/wp-content/uploads/2021/02/thumb_92703_default_news_size_5.jpeg'),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://d3j2s6hdd6a7rg.cloudfront.net/v2/uploads/media/default/0001/96/thumb_95659_default_news_size_5.jpeg'),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://www.theanfieldwrap.com/uploads/2014/08/070704-004-Liverpool_Torres.jpg'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //like and comment part of the news feed
          Container(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 12.0),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.add_a_photo_outlined),
                        SizedBox(
                          width: 15.0,
                        ),
                        Icon(Icons.comment_outlined),
                        SizedBox(
                          width: 15.0,
                        ),
                        Icon(Icons.alarm_add_outlined)
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 22 / 100,
                    child: Row(
                      children: [
                        Container(
                          height: returnSize(0),
                          width: returnSize(0),
                          margin: EdgeInsets.only(right: 3.0),
                          decoration: BoxDecoration(
                              color: returnColor(0),
                              borderRadius: BorderRadius.circular(50.0)),
                        ),
                        Container(
                          height: returnSize(1),
                          width: returnSize(1),
                          margin: EdgeInsets.only(right: 3.0),
                          decoration: BoxDecoration(
                              color: returnColor(1),
                              borderRadius: BorderRadius.circular(50.0)),
                        ),
                        Container(
                          height: returnSize(2),
                          width: returnSize(2),
                          margin: EdgeInsets.only(right: 3.0),
                          decoration: BoxDecoration(
                              color: returnColor(2),
                              borderRadius: BorderRadius.circular(50.0)),
                        ),
                        Container(
                          height: returnSize(3),
                          width: returnSize(3),
                          margin: EdgeInsets.only(right: 3.0),
                          decoration: BoxDecoration(
                              color: returnColor(3),
                              borderRadius: BorderRadius.circular(50.0)),
                        ),
                        Container(
                          height: returnSize(4),
                          width: returnSize(4),
                          margin: EdgeInsets.only(right: 3.0),
                          decoration: BoxDecoration(
                              color: returnColor(4),
                              borderRadius: BorderRadius.circular(50.0)),
                        ),
                      ],
                    ),
                  ),
                  Icon(Icons.bookmark_outline)
                ],
              ),
              SpecificName(title: "2,56likes"),
              SpecificName(title: "Javascript.js"),
              Container(
                margin: EdgeInsets.only(bottom: 10.0),
                child: Row(
                  children: [
                    Text(
                      "View all 290 comments",
                      style: TextStyle(color: Colors.grey.shade600),
                    )
                  ],
                ),
              ),
              Addcomment(),
            ]),
          ),
        ],
      ),
    );
  }
}
