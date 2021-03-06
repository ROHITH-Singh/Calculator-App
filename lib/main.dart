import 'package:Calculator/widgets/CalButton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return DarkLightTheme();
  }
}

class DarkLightTheme extends StatefulWidget {
  const DarkLightTheme({
    Key key,
  }) : super(key: key);

  @override
  _DarkLightThemeState createState() => _DarkLightThemeState();
}

ThemeData _lightTheme = ThemeData(
    accentColor: Colors.pink,
    brightness: Brightness.light,
    primaryColor: Colors.blue);

ThemeData _darktheme = ThemeData.from(
  colorScheme: ColorScheme(
      primary: Color(0xff003366),
      primaryVariant: Color(0xff000000),
      secondary: Color(0xff66fff9),
      secondaryVariant: Color(0xff66fff9),
      surface: Color(0xff003366),
      background: Color(0xff283637),
      error: Color(0xff9b374d),
      onPrimary: Colors.black,
      onSecondary: Colors.black,
      onSurface: Colors.redAccent,
      onBackground: Colors.white,
      onError: Colors.black,
      brightness: Brightness.dark),
);
// (
//     accentColor: Colors.black,
//     brightness: Brightness.dark,
//     primaryColor: Colors.black);

bool _light = true;

class _DarkLightThemeState extends State<DarkLightTheme> {
  String _expression = "";
  String _history = "";

  void numclick(String text) {
    setState(() {
      _expression += text;
    });
  }

  void allclear(String text) {
    setState(() {
      _expression = "";
      _history = "";
    });
  }

  void clear(String text) {
    setState(() {
      _expression = "";
    });
  }

  void evaluate(String text) {
    Parser p = Parser();
    Expression exp = p.parse(_expression);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    setState(() {
      _history = _expression;
      _expression = eval.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: _lightTheme,
        darkTheme: _darktheme,
        title: 'Flutter Demo',
        home: Scaffold(
            body: Center(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
                alignment: Alignment(1, 1),
                padding: EdgeInsets.all(12),
                child: Text(
                  _history,
                  style: GoogleFonts.rubik(textStyle: TextStyle(fontSize: 30)),
                )),
            Container(
                alignment: Alignment(1, 1),
                padding: EdgeInsets.all(12),
                child: Text(
                  _expression,
                  style: GoogleFonts.rubik(textStyle: TextStyle(fontSize: 40)),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalButton(
                  text: "AC",
                  fillColor: Colors.blueGrey,
                  textColor: Color(0XFF000000),
                  textsize: 17,
                  x: FontWeight.bold,
                  callback: allclear,
                ),
                CalButton(
                  text: "C",
                  fillColor: Colors.blueGrey,
                  textColor: Color(0XFF000000),
                  textsize: 18,
                  x: FontWeight.bold,
                  callback: clear,
                ),
                CalButton(
                  text: "%",
                  fillColor: Colors.grey,
                  textColor: Color(0XFF000000),
                  textsize: 18,
                  callback: numclick,
                ),
                CalButton(
                  text: "/",
                  fillColor: Colors.grey,
                  textColor: Color(0XFF000000),
                  textsize: 18,
                  callback: numclick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalButton(
                  text: "7",
                  fillColor: Color(0xff3d2b1f),
                  textColor: Colors.grey,
                  textsize: 24,
                  x: FontWeight.w400,
                  callback: numclick,
                ),
                CalButton(
                  text: "8",
                  fillColor: Color(0xff3d2b1f),
                  textColor: Colors.grey,
                  textsize: 24,
                  x: FontWeight.w400,
                  callback: numclick,
                ),
                CalButton(
                  text: "9",
                  fillColor: Color(0xff3d2b1f),
                  textColor: Colors.grey,
                  textsize: 24,
                  x: FontWeight.w400,
                  callback: numclick,
                ),
                CalButton(
                  text: "*",
                  fillColor: Colors.grey,
                  textColor: Color(0XFF000000),
                  textsize: 18,
                  callback: numclick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalButton(
                  text: "4",
                  fillColor: Color(0xff3d2b1f),
                  textColor: Colors.grey,
                  textsize: 24,
                  x: FontWeight.w400,
                  callback: numclick,
                ),
                CalButton(
                  text: "5",
                  fillColor: Color(0xff3d2b1f),
                  textColor: Colors.grey,
                  textsize: 24,
                  x: FontWeight.w400,
                  callback: numclick,
                ),
                CalButton(
                  text: "6",
                  fillColor: Color(0xff3d2b1f),
                  textColor: Colors.grey,
                  textsize: 24,
                  x: FontWeight.w400,
                  callback: numclick,
                ),
                CalButton(
                  text: "-",
                  fillColor: Colors.grey,
                  textColor: Color(0XFF000000),
                  textsize: 18,
                  callback: numclick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalButton(
                  text: "1",
                  fillColor: Color(0xff3d2b1f),
                  textColor: Colors.grey,
                  textsize: 24,
                  x: FontWeight.w400,
                  callback: numclick,
                ),
                CalButton(
                  text: "2",
                  fillColor: Color(0xff3d2b1f),
                  textColor: Colors.grey,
                  textsize: 24,
                  x: FontWeight.w400,
                  callback: numclick,
                ),
                CalButton(
                  text: "3",
                  fillColor: Color(0xff3d2b1f),
                  textColor: Colors.grey,
                  textsize: 24,
                  x: FontWeight.w400,
                  callback: numclick,
                ),
                CalButton(
                  text: "+",
                  fillColor: Colors.grey,
                  textColor: Color(0XFF000000),
                  textsize: 18,
                  callback: numclick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalButton(
                  text: ".",
                  fillColor: Color(0xff3d2b1f),
                  textColor: Colors.grey,
                  textsize: 20,
                  x: FontWeight.w400,
                  callback: numclick,
                ),
                CalButton(
                  text: "0",
                  fillColor: Color(0xff3d2b1f),
                  textColor: Colors.grey,
                  textsize: 18,
                  x: FontWeight.w400,
                  callback: numclick,
                ),
                CalButton(
                  text: "00",
                  fillColor: Color(0xff3d2b1f),
                  textColor: Colors.grey,
                  textsize: 18,
                  x: FontWeight.w400,
                  callback: numclick,
                ),
                CalButton(
                  text: "=",
                  fillColor: Colors.redAccent,
                  textColor: Color(0XFF000000),
                  textsize: 30,
                  x: FontWeight.bold,
                  callback: evaluate,
                ),
              ],
            ),
          ],
        ))));
  }
}
