// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, use_key_in_widget_constructors
import 'package:cari_penginapan/widgets/space_card.dart';
import 'package:flutter/material.dart';

import 'utilities/constant.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: edge),
            child: Expanded(child: SpaceCard()),
          ),
        ],
      ),
    );
  }
}
