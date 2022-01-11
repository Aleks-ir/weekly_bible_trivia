import 'package:flutter/cupertino.dart';
import 'package:weekly_bible_trivia/global/constants.dart';

Widget getTextReader(int index, bool isSearchVerse, String text, double fontSize, Color textColor){
  return Text.rich(
    TextSpan(
      children: [
        WidgetSpan(
          child: Padding(
            padding: EdgeInsets.only(bottom: 5),
            child: Text(
              (index + 1).toString() + " ",
              style: TextStyle(
                  color: textColor,
                  fontSize: fontSize - 8,
                  fontStyle: FontStyle.italic),
            ),
          ),
        ),
        TextSpan(
          text: text,
          style: TextStyle(
              fontSize: fontSize,
              color: textColor,
              fontWeight: isSearchVerse ? FontWeight.w600 : FontWeight.normal,
              fontFamily: VERDANA),
        ),
      ],
    ),
  );
}