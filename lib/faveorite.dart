import 'dart:ui';
import 'package:elm2oul/Component/arrowBackIcon.dart';
import 'package:elm2oul/Component/textView.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'Component/circleAvatar.dart';
import 'Uitils/Constant.dart';
import 'Uitils/Helper.dart';

class compDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.topLeft,
            colors: [
              HexColor("#fdad9c"),
              HexColor("#FC7C51"),
              HexColor("#fdad9c"),
            ],
          ),
        ),
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 50),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child:   InkWell(
                        onTap: ()=>Helper.gotoScreen(context, Constant.Profile),
                        child: arrowBack(),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: textView("مرحباا ", 2.0),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.white),
                      padding: EdgeInsets.all(5.0),
                      child: Row(
                        children: [
                          Icon(Icons.search),
                          SizedBox(width: 15.0),
                          Text('Search'),
                        ],
                      ),
                    ),

                    // Container(
                    //   height: 100.0,
                    //   child: ListView.separated(
                    //     scrollDirection: Axis.horizontal,
                    //     itemBuilder: (context, index) => buildStoryItem(),
                    //     separatorBuilder: (context, index) => SizedBox(
                    //       width: 20.0,
                    //     ),
                    //     itemCount: 5,
                    //   ),
                    // ),

                    ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) => buildfavoriteItem(),
                      separatorBuilder: (context, index) => SizedBox(
                        height: 15.0,
                      ),
                      itemCount: 10,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // 1. build item
  // 2. build list
  // 3. add item to list

  // arrow function
  Widget buildfavoriteItem() => Row(
        children: [
          Expanded(
            child: Container(
              margin:  EdgeInsets.only(left: 10,right: 10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                      child: Icon(Icons.favorite_border)
                  ),
                  Spacer(),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: textView("الاحمدي جروب", 0.0),
                      ),
                      SizedBox(height: 15),
                      Container(
                        child: RatingBar.builder(
                          //RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 25,
                          itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),

                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 220,
                        color: Colors.greenAccent,
                          child: Text("شركه  فى jجيه"))

                    ],
                  ),
                  SizedBox(width: 10),
                  CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage(
                        'https://avatars.githubusercontent.com/u/34492145?v=4'),
                  ),

                ],
              ),
            ),
          ),
        ],
      );

  Widget buildStoryItem() => Container(
        width: 60.0,
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                      'https://avatars.githubusercontent.com/u/34492145?v=4'),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    bottom: 3.0,
                    end: 3.0,
                  ),
                  child: CircleAvatar(
                    radius: 7.0,
                    backgroundColor: Colors.red,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              'Abdullah Mansour Ali Mansour',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      );
}

