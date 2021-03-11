

import 'package:flutter/material.dart';

final ThemeData basic = ThemeData.light();
// dark mode and light mode

final ThemeData darkbasic = ThemeData.dark();


ThemeData customTheme(){

  return basic.copyWith(
    //text //button//appbar//


    textTheme: customTextTheme(basic.textTheme),


  );




}

ThemeData customDarkTheme(){

  return darkbasic.copyWith(

    textTheme: customDarkTextTheme(darkbasic.textTheme),
  );




}

TextTheme customDarkTextTheme(TextTheme defaultText){
  return defaultText.copyWith(
      headline1: defaultText.headline1.copyWith(
          fontSize: 20,
          color:Colors.red
      )
  );

}



TextTheme customTextTheme(TextTheme defaultText){  // lighter text theme
  return defaultText.copyWith(
      headline1: defaultText.headline1.copyWith(
          fontSize: 40,
          color:Colors.red
      ),
    headline2: defaultText.headline2.copyWith(
      fontSize: 30,
      color: Colors.blue
    )
  );

}
