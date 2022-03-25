// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, duplicate_ignore

import 'package:cari_penginapan/models/penginapan.dart';
import 'package:cari_penginapan/pages/utilities/constant.dart';
import 'package:flutter/material.dart';
import '../pages/detail_screen.dart';

class SpaceCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          final Penginapan space = penginapanList[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DetailScreen(space: space);
                  },
                ),
              );
            },
            child: Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(
                    18,
                  ),
                  // ignore: sized_box_for_whitespace
                  child: Container(
                    width: 130,
                    height: 110,
                    child: Stack(
                      children: [
                        Image.network(
                          space.imageUrl,
                          width: 130,
                          height: 110,
                          fit: BoxFit.cover,
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            width: 70,
                            height: 30,
                            decoration: BoxDecoration(
                              color: purpleColor,
                              // ignore: prefer_const_constructors
                              borderRadius: BorderRadius.only(
                                // ignore: prefer_const_constructors
                                bottomLeft: Radius.circular(36),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/icon_star.png',
                                  width: 22,
                                  height: 22,
                                ),
                                Text(
                                  '${space.rating}/5',
                                  style: whiteTextStyle.copyWith(
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // ignore: prefer_const_constructors
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      space.name,
                      style: blackTextStyle.copyWith(
                        fontSize: 18,
                      ),
                    ),
                    // ignore: prefer_const_constructors
                    SizedBox(
                      height: 2,
                    ),
                    Text.rich(
                      TextSpan(
                        text: '\$${space.price}',
                        style: purpleTextStyle.copyWith(
                          fontSize: 16,
                        ),
                        children: [
                          TextSpan(
                            text: ' / month',
                            style: greyTextStyle.copyWith(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // ignore: prefer_const_constructors
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      '${space.city} , ${space.country}',
                      style: greyTextStyle,
                    ),
                  ],
                ),
              ],
            ),
          );
        },
        itemCount: penginapanList.length,
      ),
    );
  }
}
