import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalButton extends StatelessWidget {
  final String text;
  Color fillColor;
  Color textColor;
  final double textsize;
  FontWeight x;
  final Function callback;
  CalButton(
      {Key key,
      this.text,
      this.fillColor,
      this.textColor,
      this.textsize,
      this.x,
      this.callback})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      child: SizedBox(
        width: 65,
        height: 65,
        child: FlatButton(
          onPressed: () {
            callback(text);
          },
          color: fillColor != null ? fillColor : null,
          child: Text(
            text,
            style: GoogleFonts.rubik(
                textStyle: TextStyle(
                    fontSize: textsize, color: textColor, fontWeight: x)),
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        ),
      ),
    );
  }
}
