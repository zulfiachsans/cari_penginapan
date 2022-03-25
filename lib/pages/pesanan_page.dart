// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:cari_penginapan/pages/utilities/constant.dart';
import 'package:flutter/material.dart';

class PesananPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 100,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Image.asset(
                'assets/images/coming_soon.png',
                width: 264,
              ),
              SizedBox(
                height: 17,
              ),
              Text(
                'Upss ! \n Fitur ini dalam tahap pengembangan',
                textAlign: TextAlign.center,
                style: blackTextStyle.copyWith(
                  color: purpleColor,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
