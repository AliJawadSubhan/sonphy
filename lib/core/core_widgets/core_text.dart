import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sonphy/config/constants/fonts_constants.dart';

Widget customTextWidget({
  required text,
  double fontSize = 16.0,
  Color color = Colors.black,
  String fontNameP = FontsConstants.nunito,
  FontWeight fontWeight = FontWeight.w600,
  TextOverflow overflow = TextOverflow.visible,
  double lineHeight = 1.5,
  TextAlign textAlign = TextAlign.start,
  double? letterSpacing,
  int? maxLines,
  fixText = false,
  isPlusJakartaFont = false,
  TextDecoration? jakartaDecoration,
  TextDecoration? textDecoration,
}) {
  return fixText
      ? AutoSizeText(
          text.toString(),
          maxLines: maxLines,
          textAlign: textAlign,
          style: GoogleFonts.getFont(
            fontNameP,
            color: color,
            fontSize: fontSize,
            fontWeight: fontWeight,
            height: lineHeight,
            textStyle: TextStyle(
              decoration: jakartaDecoration ?? TextDecoration.none,
              overflow: overflow,
            ),
          ),
        )
      : Text(
          text.toString(),
          // softWrap: softwrap,
          textAlign: textAlign,
          style: GoogleFonts.getFont(
            fontNameP,
            color: color,
            fontSize: fontSize,
            fontWeight: fontWeight,
            height: lineHeight,
            decoration: textDecoration ?? TextDecoration.none,
            textStyle: TextStyle(
              overflow: overflow,
            ),
          ),
        );
}
