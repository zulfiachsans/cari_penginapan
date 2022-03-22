// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_constructors_in_immutables

import 'package:cari_penginapan/pages/utilities/constant.dart';
import 'package:flutter/material.dart';

import '../models/tips.dart';

class TipsCard extends StatelessWidget {
  final Tips tips;

  // ignore: use_key_in_widget_constructors
  TipsCard(this.tips);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 80,
          height: 80,
          child: Stack(
            children: [
              Image.asset(
                tips.imageUrl,
              ),
            ],
          ),
        ),
        SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tips.name,
              style: blackTextStyle.copyWith(fontSize: 18),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              'Updated ${tips.date} ${tips.month}',
              style: greyTextStyle,
            ),
          ],
        ),
        Spacer(),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.chevron_right,
              color: greenColor,
            )),
      ],
    );
  }
}
