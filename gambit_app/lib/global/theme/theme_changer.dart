import 'package:flutter/material.dart';

class ThemeChanger with ChangeNotifier {
  ThemeData _themeData;

  ThemeChanger(this._themeData);

  getTheme() => _themeData;

  setTheme(ThemeData theme) {
    _themeData = theme;

    notifyListeners();
  }
}

/*
 * Custom Colors
 */
class CustomColors {
  final novaWhite = Color(0xffe1e7e9);
  final lureGrey = Color(0xff6c7a84);
  final noroGrey = Color(0xff545f67);
  final grimBlack = Color(0xff3e3e3e);
  final duskBlue = Color(0xff1da1f2);
  final oceanBlue = Color(0xFF4AC8EA);
  final forestGreen = Color(0xff3bd37b);
  final leafGreen = Color(0xff5bda91);

  //final collapseDrawerLight = Color(0xFFe1e7e9);
  //final collapseDrawerDark = Color(0xFF272D34);

  // Google Material Light Colors
  /*
  final statusBarLight = Color(0xffE0E0E0);
  final appBarLight = Color(0xffecf0f1);
  final backGroundLight = Color(0xfff5f5f5);
  final cardsDialogLight = Color(0xffFFFFFF);
  */

  // Google Material Dark Colors
  /*
  final statusBarDark = Color(0xff000000);
  final appBarDark = Color(0xff212121);
  final backGroundDark = Color(0xff303030);
  final cardsDialogDark = Color(0xff424242);
  */
}

class CustomThemes {

  static TextTheme lightTextTheme(TextTheme lightText) {
    return lightText.copyWith(
      display4: lightText.display4.copyWith(
        fontFamily: 'Iceland',
        fontWeight: FontWeight.w100,
        fontSize: 112.0,
        color: CustomColors().grimBlack,
      ),
      display3: lightText.display3.copyWith(
        fontFamily: 'Iceland',
        fontWeight: FontWeight.normal,
        fontSize: 56.0,
        color: CustomColors().grimBlack,
      ),
      display2: lightText.display2.copyWith(
        fontFamily: 'Iceland',
        fontWeight: FontWeight.normal,
        fontSize: 45.0,
        color: CustomColors().grimBlack,
      ),
      display1: lightText.display1.copyWith(
        fontFamily: 'Iceland',
        fontWeight: FontWeight.normal,
        fontSize: 34.0,
      ),
      headline: lightText.headline.copyWith(
        fontFamily: 'Iceland',
        fontWeight: FontWeight.normal,
        fontSize: 24.0,
        color: CustomColors().grimBlack,
      ),
      title: lightText.title.copyWith(
        fontFamily: 'Iceland',
        fontWeight: FontWeight.w500,
        fontSize: 20.0,
        color: CustomColors().grimBlack,
      ),
      subhead: lightText.subhead.copyWith(
        fontFamily: 'Iceland',
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
        color: CustomColors().grimBlack,
      ),
      body2: lightText.body2.copyWith(
        fontFamily: 'Iceland',
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
        color: CustomColors().grimBlack,
      ),
      body1: lightText.body1.copyWith(
        fontFamily: 'Iceland',
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
        color: CustomColors().grimBlack,
      ),
      caption: lightText.caption.copyWith(
        fontFamily: 'Iceland',
        fontWeight: FontWeight.normal,
        fontSize: 12.0,
        color: CustomColors().grimBlack,
      ),
      button: lightText.button.copyWith(
        fontFamily: 'Iceland',
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
        color: CustomColors().grimBlack,
      ),
      subtitle: lightText.subtitle.copyWith(
        fontFamily: 'Iceland',
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
        color: CustomColors().grimBlack,
      ),
      overline: lightText.overline.copyWith(
        fontFamily: 'Iceland',
        fontWeight: FontWeight.normal,
        fontSize: 10.0,
        color: CustomColors().grimBlack,
      ),
    );
  }

  static TextTheme darkTextTheme(TextTheme darkText) {
    return darkText.copyWith(
      display4: darkText.display4.copyWith(
        fontFamily: 'Iceland',
        fontWeight: FontWeight.w100,
        fontSize: 112.0,
        color: CustomColors().novaWhite,
      ),
      display3: darkText.display3.copyWith(
        fontFamily: 'Iceland',
        fontWeight: FontWeight.normal,
        fontSize: 56.0,
        color: CustomColors().novaWhite,
      ),
      display2: darkText.display2.copyWith(
        fontFamily: 'Iceland',
        fontWeight: FontWeight.normal,
        fontSize: 45.0,
        color: CustomColors().novaWhite,
      ),
      display1: darkText.display1.copyWith(
        fontFamily: 'Iceland',
        fontWeight: FontWeight.normal,
        fontSize: 34.0,
        color: CustomColors().novaWhite,
      ),
      headline: darkText.headline.copyWith(
        fontFamily: 'Iceland',
        fontWeight: FontWeight.normal,
        fontSize: 24.0,
        color: CustomColors().novaWhite,
      ),
      title: darkText.title.copyWith(
        fontFamily: 'Iceland',
        fontWeight: FontWeight.w500,
        fontSize: 20.0,
        color: CustomColors().novaWhite,
      ),
      subhead: darkText.subhead.copyWith(
        fontFamily: 'Iceland',
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
        color: CustomColors().novaWhite,
      ),
      body2: darkText.body2.copyWith(
        fontFamily: 'Iceland',
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
        color: CustomColors().novaWhite,
      ),
      body1: darkText.body1.copyWith(
        fontFamily: 'Iceland',
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
        color: CustomColors().novaWhite,
      ),
      caption: darkText.caption.copyWith(
        fontFamily: 'Iceland',
        fontWeight: FontWeight.normal,
        fontSize: 12.0,
        color: CustomColors().novaWhite,
      ),
      button: darkText.button.copyWith(
        fontFamily: 'Iceland',
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
        color: CustomColors().novaWhite,
      ),
      subtitle: darkText.subtitle.copyWith(
        fontFamily: 'Iceland',
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
        color: CustomColors().novaWhite,
      ),
      overline: darkText.overline.copyWith(
        fontFamily: 'Iceland',
        fontWeight: FontWeight.normal,
        fontSize: 10.0,
        color: CustomColors().novaWhite,
      ),
    );
  }

  static final ThemeData lightTheme = ThemeData(
    //brightness: Brightness.light,

    appBarTheme: AppBarTheme(color: CustomColors().forestGreen,),
    primaryColor: CustomColors().forestGreen,
    accentColor: CustomColors().leafGreen,
    //indicatorColor: CustomColors().loreGrey,
    
    scaffoldBackgroundColor: CustomColors().novaWhite,

    backgroundColor: CustomColors().novaWhite,
    buttonColor: CustomColors().forestGreen,

    iconTheme: IconThemeData(
      size: 25.0,
      color: CustomColors().forestGreen,
    ),

    dividerTheme: DividerThemeData(
      thickness: 0.5,
      indent: 16,
      endIndent: 16,
      //color: CustomColors().forestGreen,
    ),
    
  );

  static final ThemeData darkTheme = ThemeData(
    //brightness: Brightness.dark,

    appBarTheme: AppBarTheme(color: CustomColors().duskBlue,),
    primaryColor: CustomColors().duskBlue,
    accentColor: CustomColors().oceanBlue,
    //indicatorColor: CustomColors().loreGrey,
    
    scaffoldBackgroundColor: CustomColors().grimBlack,

    backgroundColor: CustomColors().grimBlack,
    buttonColor: CustomColors().duskBlue,

    iconTheme: IconThemeData(
      size: 25.0,
      color: CustomColors().duskBlue,
    ),
    
    dividerTheme: DividerThemeData(
      thickness: 0.5,
      indent: 16,
      endIndent: 16,
      //color: CustomColors().duskBlue,
    ),
  );
}
