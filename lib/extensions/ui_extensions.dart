import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../presentation/core/constant.dart';

extension sizeBox on num {
  SizedBox get w => SizedBox(
        width: toDouble(),
      );
  SizedBox get h => SizedBox(
        height: toDouble(),
      );
}

extension uiString on String {
  Text get text => Text(this);
}

extension uiText on Text {
  Text get small => Text(data!,
      style: GoogleFonts.poppins(fontSize: 10, color: bodyTextColor));
  Text get mediam => Text(data!,
      style: GoogleFonts.poppins(
          fontSize: 16, color: bgColor, fontWeight: FontWeight.bold));
  Text get large => Text(data!,
      style: GoogleFonts.poppins(
          fontSize: 24, color: bgColor, fontWeight: FontWeight.bold));
  Text get alingCenter => Text(
        data!,
        textAlign: TextAlign.center,
      );
  Text copywith(
          {Color? color,
          double? fontsize,
          FontWeight? fontWeight,
          TextOverflow? textOverflow,
          TextAlign? align}) =>
      Text(data!,
          overflow: textOverflow,
          textAlign: align,
          style: GoogleFonts.poppins(
              fontSize: fontsize ?? 12,
              color: color ?? style!.color,
              fontWeight: fontWeight ?? FontWeight.normal));
}
