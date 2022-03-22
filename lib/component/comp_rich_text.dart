import 'package:cari_penginapan/pages/utilities/constant.dart';
import 'package:flutter/material.dart';

class CompRichText extends RichText {
  CompRichText({Key? key, String? title, String? text, TextAlign? align})
      : super(
          key: key,
          textAlign: align ?? TextAlign.center,
          text: TextSpan(
            style: TextStyle(
                color: blackColor, fontWeight: FontWeight.w600, fontSize: 25),
            text: title,
            children: [
              TextSpan(
                  style: TextStyle(
                    color: greyColor,
                    fontSize: 15,
                  ),
                  text: "\n\n$text")
            ],
          ),
        );
}
