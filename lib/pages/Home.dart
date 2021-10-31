import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/components/newsCard.dart';
import 'package:instagram/components/microComponents/myStory.dart';
import 'package:instagram/components/microComponents/OthersWidget.dart';

//G = Global
const sizeG = 26.0;
Color colorG = Colors.black;

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Instagram",
          style:
              TextStyle(color: colorG, fontSize: 26.0, fontFamily: 'Lobster'),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.notification_add,
              color: Colors.black,
              size: 30.0,
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
                color: colorG,
                size: sizeG,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: colorG,
                size: sizeG,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_a_photo,
                color: colorG,
                size: sizeG,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.leaderboard,
                color: colorG,
                size: sizeG,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Container(
                height: 28,
                width: 28,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
              label: '')
        ],
        elevation: 0,
      ),
      body: Container(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Container(
              height: 110.0,
              padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  myStory(),
                  OthersWidget(
                    name: "Smaran",
                    imageUrl:
                        "https://i.pinimg.com/474x/0e/3e/d0/0e3ed05ff407671bdebf77b53ce0e0b9.jpg",
                  ),
                  OthersWidget(
                    name: "Nihang",
                    imageUrl:
                        "https://site-cdn.givemesport.com/images/21/05/27/13a4a434abd50a2e7b57b6d0ed5bce10/1201.jpg",
                  ),
                  OthersWidget(
                    name: "David",
                    imageUrl:
                        "https://otakukart.com/wp-content/uploads/2021/07/Fernando-Torress-Liverpool.jpg",
                  ),
                  OthersWidget(
                    name: "Bigesh",
                    imageUrl:
                        "https://site-cdn.givemesport.com/images/21/05/27/13a4a434abd50a2e7b57b6d0ed5bce10/1201.jpg",
                  ),
                ],
              ),
            ),
            newsCard(),
            newsCard(),
            newsCard(),
            newsCard(),
            newsCard(),
            newsCard(),
            newsCard()
          ],
        ),
      ),
    );
  }
}
